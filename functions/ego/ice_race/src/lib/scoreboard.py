"""
Library for scoreboard teams and objectives
"""

from collections import OrderedDict

from lib.container import Container
from lib.consts import Colors


class Objective(Container):
    """
    Represents a scoreboard objective

    Attributes:
        name (str):
        criteria (str):
        display_name (str):
        remove_self (bool):
        setdisplay_slots (str):
        slots (list of (str, bool)): Holds tuples containing the slot, and whether to reset said slot
    """

    class DisplaySlot:
        """
        Scoreboard objective setdisplay slot
        """

        # Defines all valid setdisplay slots
        # List comprehension to get "sidebar.team.color" for all colors that isn't "reset"
        valid_slots = ("belowName", "list", "sidebar", *("sidebar.team." + color for color in Colors.ALL if color != "reset"))

        def __init__(self, value, reset=True):
            """
            Args:
                value (str): The specific slot that objective will be displayed on
                reset (bool): If the objective in the specified slot resets when it terminates
            """

            if value not in Objective.DisplaySlot.valid_slots:
                raise SyntaxError("Invalid setdisplay slot: {}".format(value))
            
            self.value = value
            self.reset = reset

        def __str__(self):
            return self.value

        def __repr__(self):
            return "({value}, reset={reset})".format(value=self.value, reset=self.reset)


    def __init__(self, name, criteria="_", display_name="", remove_self=True):
        """
        Args:
            name (str): objective name
            criteria (str): objective criteria, defaults to "dummy"
                Note that "_" is the same as "dummy"
            display_name (str): objective display name, defaults to an empty string
            remove_self (bool): if the objective is removed when calling Objective.cmd_term()
        """
        super().__init__()

        if len(name) > 16:
            raise SyntaxError("The objective name '{}' cannot be larger than 16 characters".format(name))

        if len(display_name) > 32:
            raise SyntaxError("The objective display name '{}' cannot be larger than 16 characters".format(display_name))
        
        self.name = name

        if criteria == "_":
            self.criteria = "dummy"
        else:
            self.criteria = criteria

        self.display_name = display_name
        self.remove_self = remove_self
        self.slots = []
        self.consts = {}

    def setdisplay(self, *slots, reset_slot=True):
        """
        Args:
            *slots (str): Slots that objective will be displayed on
            reset_slot (bool): If the objective in the specified slot resets when it terminates
        """

        for slot in slots:
            self.slots.append(Objective.DisplaySlot(slot, reset_slot))

    def add_const(self, name, value):
        """
        Adds a constant value to an objective
        """
        if isinstance(value, int):
            value = str(value)
        elif isinstance(value, str) and not (value.isdigit() or (value.startswith("-") and value[1:].isdigit())):
            raise ValueError("A constant '{0} = {1}' must be an integer".format(name, value))
        self.consts[name] = value

    def cmd_init(self):
        """
        Adds all objectives using:
            scoreboard objectives add
            scoreboard objectives setdisplay

        Adds all constants using:
            scoreboard players set NAME OBJ_NAME VALUE
        """
        cmd_add = ("scoreboard objectives add {name} {criteria} {disp_name}".format(
            name=self.name, criteria=self.criteria, disp_name=self.display_name)).strip()
        self.cmd_queue.put(cmd_add)
        
        # If slots is not empty
        for slot in self.slots:
            self.cmd_queue.put("scoreboard objectives setdisplay {slot} {name}".format(slot=slot.value, name=self.name))

        # adds regular constants
        for name, value in sorted(self.consts.items()):
            self.cmd_queue.put("scoreboard players set {name} {obj_name} {value}".format(
                name=name, obj_name=self.name, value=value))

        return self._cmd_output()

    def cmd_term(self):
        """
        Removes objectives and resets setdisplay slots using:
            scoreboard objectives remove
            scoreboard objectives setdisplay
        """

        # Does not reset the setdisplay slot because removing
        # the objective automatically resets the slot
        if self.remove_self:
            return "scoreboard objectives remove {}".format(self.name)

        for slot in self.slots:
            if slot.reset:
                self.cmd_queue.put("scoreboard objectives setdisplay {}".format(slot.value))
        return self._cmd_output()

    def __str__(self):
        return "Objective[{}]".format(self.name)

    def __repr__(self):
        return "Objective[name={name}, criteria={criteria}, display_name={disp_name}, display_slots={disp_slots}]".format(
            name=repr(self.name), criteria=repr(self.criteria), disp_name=repr(self.display_name), disp_slots=self.slots)


class Objectives(Container):
    """
    General container for holding Objective objects
    """
    def __init__(self):
        super().__init__()
        self.objectives = OrderedDict()

    def new(self, name, criteria="_", display_name="", remove_self=True):
        """
        Default method to add a single objective (see Objective.__init__)
        """
        objective = Objective(name, criteria, display_name, remove_self)
        self.add(objective)

    def new_str(self, text, initials=None, display=None, remove_self=True):
        """
        Allows input of objectives from multi-line string (without tab spaces)

        Note anything starting with "#" will be ignored

        Args:
            text: block of text
            initials: initials that goes in front of all objectives
                If the objective name is ".", it is completely replaced with the initials
            display: display name that goes at the beginning of all objective display names
                If the objective display name is ".", it is completely replaced
            remove: Whether the objectives will be automatically removed or not

        eg.
        # a cool comment explaining what RRpl is
        RRpl
        RRas

        RRconstants _ Oh man constants
        some_const = 5

        RRcs stat.useItem.minecraft.carrot_on_a_stick RR carrot stick
        RRxd _ RR ecks dee
        """

        # strips the lines to remove the newlines at the end and any other whitespace
        # also only appends to list if the line is not empty, and doesn't start with #
        lines = [line.strip() for line in text.splitlines() if line.strip() if not line.strip()[0] == "#"]
        current_obj = None

        for line in lines:
            data = line.split(" ", 2)

            # if the given line is setting a constant
            if len(data) == 3 and data[1] == "=":
                if current_obj is None:
                    raise SyntaxError("An objective must be defined before any constants can be set")
                else:
                    name, value = data[0], data[2]
                    current_obj.add_const(name, value)
                    continue
            
            # adds given initials
            if initials is not None:
                if data[0] == ".":
                    data[0] = initials
                else:
                    data[0] = initials + data[0]

            # adds given display name
            if display is not None and len(data) == 3:
                if data[2] == ".":
                    data[2] = display
                else:
                    data[2] = display + " " + data[2]

            objective = Objective(*data, remove_self=remove_self)
            current_obj = objective
            self.add(objective)

    def add(self, *objectives):
        """
        Adds any given number of Objective objects

        Args:
            *objectives (Objective): An arbitrary number of objective
        """
        for objective in objectives:
            if objective.name not in self.objectives:
                self.objectives[objective.name] = objective

    def cmd_init(self):
        """
        Creates each objective
        """
        for objective in self.objectives.values():
            self.cmd_queue.put(objective.cmd_init())
        return self._cmd_output()

    def cmd_term(self):
        """
        Removes each objective
        """
        for objective in self.objectives.values():
            self.cmd_queue.put(objective.cmd_term())
        return self._cmd_output()

    def __str__(self):
        return "Objectives[{}]".format(str([str(objective) for objective in self.objectives.values()]))

    def __repr__(self):
        return "Objectives[{}]".format(str([repr(objective) for objective in self.objectives.values()]))

    def __getitem__(self, name):
        """
        Args:
            key (str): name of the objective
        """
        if name in self.objectives:
            return self.objectives[name]
        
        raise NameError("Objective name {} was not found in the container".format(name))

    def __len__(self):
        """
        Gets the number of Objective objects stored
        """
        return len(self.objectives)


class Team(Container):
    """
    Representation for a single scoreboard team
    """

    # dictionary to store all valid values for options
    valid_options = {
        "friendlyfire": ("true", "false"),
        "color": Colors.ALL,
        "seeFriendlyInvisibles": ("true", "false"),
        "nametagVisibility": ("always", "never", "hideForOtherTeams", "hideForOwnTeam"),
        "deathMessageVisibility": ("always", "never", "hideForOtherTeams", "hideForOwnTeam"),
        "collisionRule": ("always", "never", "pushOwnTeam", "pushOtherTeams"),
    }

    def __init__(self, name, display_name="", **options):
        """
        General object to represent a scoreboard team

        It is expected to have team options stated at the beginning and unchanging.
        However, if they have to be changed, change the team.options dict

        Args:
            name (str): team name
            display_name (str): team display name, defaults to empty string
            **options: values to hold all team options

        Raises:
            SyntaxError: When the team name is greater than 16 characters, or
                the option is an invalid option name or the option value is invalid
        """
        super().__init__()

        self.name = name
        self.display_name = display_name
        self.options = {}

        if len(name) > 16:
            raise SyntaxError("The team name '{}' cannot be larger than 16 characters".format(name))

        if len(display_name) > 32:
            raise SyntaxError("The team display name '{}' cannot be larger than 16 characters".format(display_name))

        # checks whether the option is valid by seeing if the key is within the valid values dict
        for option, value in options.items():
            self.add_option(option, value)

    def add_option(self, option, option_value):
        """
        Adds a single option to the options dictionary

        Args:
            option (str): Team option
            option_value (str): Team option value

        Raises:
            SyntaxError: When the option name is invalid or when
                the option value is invalid
        """
        if option not in Team.valid_options:
            raise SyntaxError("Invalid team option name '{option}' for team '{name}'".format(option=option, name=self.name))

        if option_value not in Team.valid_options[option]:
            raise SyntaxError("Invalid option value for option '{option}' in team '{name}': '{op_value}'".format(
                option=option, name=self.name, op_value=option_value))

        self.options[option] = option_value

    def out_config(self):
        """
        Creates the following line if the team has a color:
        (6 spaces) "Team_Name": "Color code"

        Otherwise, returns an empty string
        see team_color: https://hastebin.com/igojiqoleq
        """
        if "color" in self.options:
            color = self.options["color"]
            color_code = Colors.CODE_DICT[color]
            return '      "{0}": "{1}"'.format(self.name, color_code)
        return ""

    def cmd_init(self):
        """
        Creates "scoreboard teams add" and "scoreboard teams option" commands
        """
        team_cmd = ("scoreboard teams add {name} {disp_name}".format(name=self.name, disp_name=self.display_name)).strip()

        self.cmd_queue.put(team_cmd)

        # iterates through the options dictionary
        for option, option_value in self.options.items():
            option_cmd = "scoreboard teams option {name} {option} {value}".format(name=self.name, option=option, value=option_value)
            self.cmd_queue.put(option_cmd)

        return self._cmd_output()

    def cmd_term(self):
        """
        Creates the "scoreboard teams remove" command
        """
        return "scoreboard teams remove {}".format(self.name)

    def __str__(self):
        return "Team[{}]".format(self.name)

    def __repr__(self):
        return "Team[name={name}, display_name={disp_name}, options={options}]".format(
            name=repr(self.name), disp_name=repr(self.display_name), options=self.options)


class Teams(Container):
    """
    General container for holding Team objects
    """
    def __init__(self):
        super().__init__()
        self.teams = OrderedDict()

    def new(self, name, display_name="", **options):
        """
        Default method to add a single objective (see Team.__init__)
        """
        team = Team(name, display_name, **options)
        self.add(team)

    def new_str(self, text, initials=None, display=None):
        """
        Allows input of teams from multi-line string (without tab spaces)

        Note anything starting with "#" will be ignored

        Args:
            text (str): the full docstring input for parsing teams
            initials: initials that goes in front of all teams
                If the team name is ".", it is completely replaced with the initials
            display: display name that goes at the beginning of all team display names
                If the team display name is ".", it is completely replaced

        Raises:
            SyntaxError: Before any option is set, a team must be defined.
                This means a team name cannot the same as a option

        Examples:
            # a cool comment explaining what RRg is
            RRg RR green
            color green
            nametagVisibility hideForOtherTeams
            friendlyfire false
            collisionRule pushOwnTeam
                
            RRb RR Blue
                color blue
                nametagVisibility hideForOtherTeams
                friendlyfire false
                collisionRule pushOwnTeam
        """

        # strips the lines to remove the newlines at the end and any other whitespace
        # also only appends to list if the line is not empty, and doesn't start with #
        lines = [line.strip() for line in text.splitlines() if line.strip() if not line.strip()[0] == "#"]

        # holds the current team
        current_team = None
        for line in lines:

            # splits a maximum of one time, making a list of 2 strings
            # note that the lines are stripped in case of any leading whitespace
            data = line.split(" ", 1)
            
            # if the length of the data is 2, and the first element is a team
            # option, then it is added to the current team option
            if len(data) == 2 and data[0] in Team.valid_options:
                if current_team is None:
                    raise SyntaxError("A team must be defined before any options can be set")
                else:
                    current_team.add_option(*data)
                continue

            # otherwise, the data will be set as a team
            # gets initials and display name
            if initials is not None:
                if data[0] == ".":
                    data[0] = initials
                else:
                    data[0] = initials + data[0]

            if display is not None and len(data) == 2:
                if data[1] == ".":
                    data[1] = display
                else:
                    data[1] = display + " " + data[1]

            current_team = Team(*data)
            self.add(current_team)

    def add(self, *teams):
        """
        Adds any given number of Team objects

        Args:
            *teams (Team): An arbitrary amount of Team objects
        """
        for team in teams:
            if team.name not in self.teams:
                self.teams[team.name] = team

    def cmd_init(self):
        """
        Creates each team and output file
        """
        output_lines = []
        for team in self.teams.values():
            self.cmd_queue.put(team.cmd_init())
            line = team.out_config()
            if line:
                output_lines.append(line)

        with open("out_teams.txt", "w") as file:
            for line in output_lines:
                file.write(line + "\n")
        return self._cmd_output()

    def cmd_term(self):
        """
        Removes each team
        """
        for team in self.teams.values():
            self.cmd_queue.put(team.cmd_term())
        return self._cmd_output()

    def __getitem__(self, name):
        """
        Args:
            key (str): name of the objective
        """
        if name in self.teams:
            return self.teams[name]
        
        raise NameError("Team name {} was not found in the container".format(name))

    def __str__(self):
        return "Teams[{}]".format(str([str(team) for team in self.teams]))

    def __repr__(self):
        return "Teams[{}]".format(str([repr(team) for team in self.teams]))

    def __len__(self):
        """
        Gets the number of Team objects stored
        """
        return len(self.teams)

OBJECTIVES = Objectives()
TEAMS = Teams()
