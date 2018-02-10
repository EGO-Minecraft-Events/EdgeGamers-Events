"""
Creates a special objective to hold constant numbers

As soon as this is imported, it adds the "constants" objective to
the global scoreboard.OBJECTIVES variable
"""

from lib.container import Container
from lib.scoreboard import *

class ConstInts(Container):
    """
    Stores an objective name and a set (no duplicates) of integers as integer constants

    The general convention when using this is to not change the objective name
    """
    def __init__(self, objName="constants"):
        super().__init__()

        self.objective = Objective(objName, remove_self=False)
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
        for const in sorted(list(self.constants)):
            self.cmd_queue.put("scoreboard players set {num} {name} {num}".format(num=const, name=self.objective.name))
        return self._cmd_output()

    def cmd_term(self):
        """
        Does nothing, since the global objective termination should terminate the objective
        """
        return ""

CONST_INTS = ConstInts()