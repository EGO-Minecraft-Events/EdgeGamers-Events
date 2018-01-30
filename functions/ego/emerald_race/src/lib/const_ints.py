from lib.container import Container
from lib.scoreboard import *

class ConstInts(Container):
    """
    Stores an objective name and a set (no duplicates) of integers as integer constants

    The general convention when using this is to not change the objective name
    """
    def __init__(self, objName="constants"):
        self.objective = Objective(objName)
        OBJECTIVES.add(self.objective)
        self.constants = set()

    def add_constants(self, *constants):
        """
        Adds any number of integer constants given
        """
        for constant in constants:
            self.constants.add(constant)

    def cmd_init(self):
        """
        Outputs "scoreboard players set" for each constant in increasing order
        """
        cmd_list = []
        for const in sorted(list(self.constants)):
            cmd_list.append("scoreboard players set {num} {name} {num}".format(num=const, name=self.objective.name))
        return output_cmd_list(cmd_list)

    def cmd_term(self):
        """
        Does nothing, since the global objective termination should terminate the objective
        """
        return ""
