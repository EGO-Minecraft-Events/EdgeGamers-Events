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


class ConstInts(Container):
    """
    Stores an objective name and list of integers as integer constants

    The general convention when using this is to not change the objective name
    """
    def __init__(self, objName="constants"):
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
        Does nothing, since the global objective termination should terminate the objective
        """
        pass

)