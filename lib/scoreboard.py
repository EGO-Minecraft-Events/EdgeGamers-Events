"""
Library for scoreboard teams and objectives
"""

from lib.container import Container
from lib.consts import Colors


class Slot(Container):
    """
    Scoreboard objective setdisplay slot
    """

    # Defines all valid setdisplay slots
    # List comprehension to get "sidebar.team.color" for all colors that isn't "reset"
    valid_slots = ("belowName", "list", "sidebar", *("sidebar.team." + color for color in Colors.ALL if color != "reset"))

    def __init__(self, slot, reset_slot=True):
        """
        Args:
            slot (str): The specific slot that objective will be displayed on
            reset_slot (bool): If the objective in the specified slot resets when it terminates
        """
        super().__init__()

        if slot not in Slot.valid_slots:
            raise SyntaxError("Invalid setdisplay slot: {}".format(slot))
        
        self.slot = slot
        self.reset_slot = reset_slot

    def cmd_init(self):
        return "scoreboard objectives setdisplay sidebar {}".format(self.slot)



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
        
        self.name = name

        if criteria == "_":
            self.criteria = "dummy"
        else:
            self.criteria = criteria

        self.display_name = display_name
        self.remove_self = remove_self
        self.slots = []

    # def setdisplay(self, slot, reset_slot=True):
    #     """
    #     Args:
    #         slot (str): The specific slot that objective will be displayed on
    #         reset_slot (bool): If the objective in the specified slot resets when it terminates
    #     """

    #     if slot not in Objective.valid_slots:
    #         raise SyntaxError("Objective {name} cannot be set to an invalid setdisplay {slot}".format(name=self.name, slot=slot))

    #     self.slots.append((slot, reset_slot))

    def cmd_init(self):
        """
        Adds all objectives using:
            scoreboard objectives add
        """
        return ("scoreboard objectives add {name} {criteria} {disp_name}".format(
                name=self.name, criteria=self.criteria, disp_name=self.display_name)).strip()

    def cmd_term(self):
        """
        Removes objectives and resets setdisplay slots using:
            scoreboard objectives remove
            scoreboard objectives setdisplay sidebar
        """
        if self.remove_self:
            return "scoreboard objectives remove {}".format(self.name)
        else:
            for slot in self.slots:
                if slot[1]:
                    self.cmd_queue.put("scoreboard objectives setdisplay {}".format(slot[0]))
            return self._cmd_output()

    def __str__(self):
        return "Objective[{}]".format(self.name)

    def __repr__(self):
        return "Objective[name={name}, criteria={criteria}, display_name={disp_name}]".format(
                name=repr(self.name), criteria=repr(self.criteria), disp_name=repr(self.display_name))


class Objectives(Container):
    """
    General container for holding Objective objects
    """
    def __init__(self):
        super().__init__()
        self.objectives = []

    def new(self, name, criteria="_", display_name=""):
        """
        Default method to add a single objective (see Objective.__init__)
        """
        objective = Objective(name, criteria, display_name)
        self.objectives.append(objective)

    def new_str(self, text):
        """
        Allows input of objectives from multi-line string (without tab spaces)
        eg.

        RRpl
        RRas
        RRcs stat.useItem.minecraft.carrot_on_a_stick RR carrot stick
        RRxd _ RR ecks dee
        """
        lines = text.splitlines()
        for line in lines:
            line = line.strip()
            data = line.split(" ", 2)
            
            # skips empty lists or a list with an empty string
            if not data or not line:
                continue

            # Makes the data list a length of 3
            # It appends None because None is the default value for the options

            objective = Objective(*data)
            self.objectives.append(objective)

    def add(self, *objectives):
        """
        Adds any given number of Objective objects

        Args:
            *objectives (Objective): An arbitrary objective
        """
        for objective in objectives:
            self.objectives.append(objective)

    def cmd_init(self):
        """
        Creates each objective
        """
        for objective in self.objectives:
            self.cmd_queue.put(objective.cmd_init())
        return self._cmd_output()

    def cmd_term(self):
        """
        Removes each objective
        """
        for objective in self.objectives:
            self.cmd_queue.put(objective.cmd_term())
        return self._cmd_output()

    def __str__(self):
        return "Objectives[{}]".format(str([str(objective) for objective in self.objectives]))

    def __repr__(self):
        return "Objectives[{}]".format(str([repr(objective) for objective in self.objectives]))

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
        self.teams = []

    def new(self, name, display_name="", **options):
        """
        Default method to add a single objective (see Team.__init__)
        """
        team = Team(name, display_name, **options)
        self.teams.append(team)

    def new_str(self, text):
        """
        Allows input of teams from multi-line string (without tab spaces)

        Args:
            text (str): the full docstring input for parsing teams

        Raises:
            SyntaxError: Before any option is set, a team must be defined.
                This means a team name cannot the same as a option

        Examples:
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

        lines = text.splitlines()

        # holds the current team
        current_team = None
        for line in lines:
            line = line.strip()

            # splits a maximum of one time, making a list of 2 strings
            # note that the lines are stripped in case of any leading whitespace
            data = line.split(" ", 1)
            
            # skips empty lists or a list with an empty string
            if not data or not line:
                continue

            # if the length of the data is 2, and the first element is a team
            # option, then it is added to the current team option
            if len(data) == 2 and data[0] in Team.valid_options:
                if current_team is None:
                    raise SyntaxError("A team must be defined before any options can be set")
                else:
                    current_team.add_option(*data)
                continue

            # otherwise, the data will be set as a team
            current_team = Team(*data)
            self.teams.append(current_team)

    def add(self, *teams):
        """
        Adds any given number of Team objects

        Args:
            *teams (Team): An arbitrary amount of Team objects
        """
        for team in teams:
            self.teams.append(team)

    def cmd_init(self):
        """
        Creates each team
        """
        for team in self.teams:
            self.cmd_queue.put(team.cmd_init())
        return self._cmd_output()

    def cmd_term(self):
        """
        Removes each team
        """
        for team in self.teams:
            self.cmd_queue.put(team.cmd_term())
        return self._cmd_output()

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
