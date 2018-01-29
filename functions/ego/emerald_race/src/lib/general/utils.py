$py(
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

# contains a single objective
class Objective:
    def __init__(self, name, criteria=None, display_name=None):
        """
        :param name: objective name
        :param criteria: objective criteria, None and "_" defaults to "dummy"
        :param display_name: objective display name, defaults to None
        """

        if len(name) > 16:
            raise SyntaxError("An objective cannot be larger than 16 characters")
        
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
            return "scoreboard objectives add {0} {1}".format(self.name, self.criteria)
        else:
            return "scoreboard objectives add {0} {1} {2}".format(self.name, self.criteria, self.display_name)

    def cmd_term(self):
        """
        Creates the command as "scoreboard objectives remove"
        """
        return "scoreboard objectives remove {}".format(self.name)

# container for multiple objectives
class Objectives:
    def __init__(self):
        self.objectives = []

    def add_strs(self, text):
        """
        Allows input of objectives from multi-line string
        """
        lines = text.splitlines()
        for line in lines:
            data = line.split(" ", 2)
            
            # skips empty lists or a list with an empty string
            if not data or not line:
                continue

            if len(data) == 3:
                name, criteria, display_name = data
                objective = Objective(name, criteria, display_name)
            elif len(data) == 2:
                name, criteria = data
                objective = Objective(name, criteria)
            elif len(data) == 1:
                name = data[0]
                objective = Objective(name)
            self.objectives.append(objective)

    def add(self, name, criteria=None, display_name=None):
        """
        Default method to add a single objective
        """
        objective = Objective(name, criteria, display_name)
        self.objectives.append(objective)

    def cmd_init(self):
        cmd_list = [objective.cmd_init() for objective in self.objectives]
        return "\n    ".join(cmd_list)

    def cmd_term(self):
        cmd_list = [objective.cmd_term() for objective in self.objectives]
        return "\n    ".join(cmd_list)
    

class ConstInts:
    """
    Stores an objective name and list of integers as integer constants
    """
    def __init__(self, objName="Number"):
        self.objective = Objective(objName)
        self.constants = []

    def add_constants(self, *constants):
        self.constants.extend(constants)

    def cmd_init(self):
        """
        Creates the objective and sets the scores
        """
        cmd_list = []
        objective_cmd = self.objective.cmd_init()
        cmd_list.append(objective_cmd)
        for const in self.constants:
            cmd_list.append("scoreboard players set {num} {name} {num}".format(num=const, name=self.objective.name))
        return "\n    ".join(cmd_list)

    def cmd_term(self):
        """
        Terminates the objective
        """
        return self.objective.cmd_term()

)