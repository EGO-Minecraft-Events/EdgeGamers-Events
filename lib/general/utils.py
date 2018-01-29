"""
Global variables defined:
    global_objectives = Objectives()
    global_teams = Teams()
    global_const_ints = ConstInts()

Pretty much all libraries will communicate with these global variables when
creating objectives and teams
"""


def output_cmd_list(cmd_list):
    """
    Used to properly join a list of commands for outputting
    """
    return "\n    ".join(cmd_list)


# constants for sounds
class Sound:
    pling = "minecraft:block.note.pling"
    xp = "minecraft:entity.experience_orb.pickup"
    item = "minecraft:entity.item.pickup"
    tp = "minecraft:entity.endermen.teleport"
    wither = "minecraft:entity.wither.death"
    level = "minecraft:entity.player.levelup"
    explode = "minecraft:entity.generic.explode"
    hat = "minecraft:block.note.hat"
    primed = "minecraft:entity.tnt.primed"


class Objective:
    def __init__(self, name, criteria=None, display_name=None):
        """
        :param name: objective name
        :param criteria: objective criteria, None and "_" defaults to "dummy"
        :param display_name: objective display name, defaults to None
        """

        if len(name) > 16:
            raise SyntaxError("An objective name cannot be larger than 16 characters")
        
        self.name = name

        if criteria is None or criteria == "_":
            self.criteria = "dummy"
        else:
            self.criteria = criteria

        self.display_name = display_name

    def cmd_init(self):
        """
        Creates the command as "scoreboard objectives add"
        """
        if self.display_name is None:
            return "scoreboard objectives add {name} {criteria}".format(name=self.name, criteria=self.criteria)
        else:
            return "scoreboard objectives add {name} {criteria} {disp_name}".format(
                    name=self.name, criteria=self.criteria, disp_name=self.display_name)

    def cmd_term(self):
        """
        Creates the command as "scoreboard objectives remove"
        """
        return "scoreboard objectives remove {}".format(self.name)

    def __str__(self):
        return "Objective({})".format(self.name)


class Objectives:
    """
    General container for holding Objective objects
    """
    def __init__(self):
        self.objectives = []

    def new(self, name, criteria=None, display_name=None):
        """
        Default method to add a single objective
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
        RRxd _ RR a fake name
        """
        lines = text.splitlines()
        for line in lines:
            data = line.split(" ", 2)
            
            # skips empty lists or a list with an empty string
            if not data or not line:
                continue

            # Makes the data list a length of 3
            # It appends None because None is the default value for the options
            while len(data) < 3:
                data.append(None)

            name, criteria, display_name = data
            objective = Objective(name, criteria, display_name)
            self.objectives.append(objective)

    def add(self, *objectives):
        for objective in objectives:
            self.objectives.append(objective)

    def cmd_init(self):
        cmd_list = [objective.cmd_init() for objective in self.objectives]
        return output_cmd_list(cmd_list)

    def cmd_term(self):
        cmd_list = [objective.cmd_term() for objective in self.objectives]
        return output_cmd_list(cmd_list)

    
global_objectives = Objectives()


class Team:
    # dictionary to store all valid values for options
    valid_options = {
        "friendlyfire": ("true", "false"),
        "color": ("black", "dark_blue", "dark_green", "dark_aqua", "dark_red",
                    "dark_purple", "gold", "gray", "dark_gray", "blue", "green",
                    "aqua", "red", "light_purple", "yellow", "white", "reset"),
        "seeFriendlyInvisibles": ("true", "false"),
        "nametagInvisibility": ("always", "never", "hideForOtherTeams", "hideForOwnTeam"),
        "deathMessageVisibility": ("always", "never", "hideForOtherTeams", "hideForOwnTeam"),
        "collisionRule": ("always", "never", "pushOwnTeam", "pushOtherTeams"),
    }

    def __init__(self, name, display_name=None, **options):
        """
        General object to represent a scoreboard team

        It is expected to have team options stated at the beginning and unchanging.
        However, if they have to be changed, change the team.options dict

        :param name: team name
        :param display_name: team display name, defaults to None
        :param options: dictionary to hold all team options
        """
        self.name = name
        self.display_name = display_name
        self.options = options

        if len(name) > 16:
            raise SyntaxError("A team name cannot be larger than 16 characters")

        # checks whether the option is valid by seeing if the key is within the valid values dict
        for key in self.options.keys():
            if key not in Team.valid_options:
                raise SyntaxError("Invalid team option name '{option}' for team '{name}'".format(option=key, name=self.name))

            # Converts the option value to a lowercase value
            self.options[key] = self.options[key].lower()

            option_value = self.options[key]
            if option_value not in Team.valid_options[key]:
                raise SyntaxError("Invalid option value for option '{option}' in team '{name}': '{op_value}'".format(
                        option=key, name=self.name, op_value=option_value))

    def cmd_init(self):
        cmd_list = []
        if self.display_name is None:
            team_cmd = "scoreboard teams add {name}".format(name=self.name)
        else:
            team_cmd = "scoreboard teams add {name} {disp_name}".format(name=self.name, disp_name=self.display_name)

        cmd_list.append(team_cmd)

        # iterates through the options dictionary
        for key in self.options.keys():
            option_cmd = "scoreboard teams option {name} {option} {value}".format(name=self.name, option=key, value=self.options[key])
            cmd_list.append(option_cmd)

        return output_cmd_list(cmd_list)

    def cmd_term(self):
        return "scoreboard teams remove {}".format(self.name)


class Teams:
    """
    General container for holding Team objects
    """
    def __init__(self):
        self.teams = []

    def new(self, name, display_name=None, **options):
        """
        Default method to add a single objective
        """
        team = Team(name, display_name, **options)
        self.teams.append(team)

    def new_str(self, text):
        """
        Allows input of teams from multi-line string (without tab spaces)
        eg.

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
        pass

    def add(self, *teams):
        for team in teams:
            self.teams.append(team)

    def cmd_init(self):
        cmd_list = [team.cmd_init() for team in self.teams]
        return output_cmd_list(cmd_list)

    def cmd_term(self):
        cmd_list = [team.cmd_term() for team in self.teams]
        return output_cmd_list(cmd_list)


class ConstInts:
    """
    Stores an objective name and list of integers as integer constants

    The general convention when using this is to not change the objective name
    """
    def __init__(self, objName="const"):
        self.objective = Objective(objName)
        global_objectives.add(self.objective)
        self.constants = []

    def add_constants(self, *constants):
        self.constants.extend(constants)

    def cmd_init(self):
        """
        Sets the scores
        """
        cmd_list = []
        for const in self.constants:
            cmd_list.append("scoreboard players set {num} {name} {num}".format(num=const, name=self.objective.name))
        return output_cmd_list(cmd_list)

    def cmd_term(self):
        """
        Terminates the objective
        """
        return self.objective.cmd_term()
