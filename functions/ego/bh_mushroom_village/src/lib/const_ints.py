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

    def add_consts(self, *constants):
        """
        Adds any number of integer constants given
        """
        for constant in constants:
            self.objective.add_const(str(constant), str(constant))

    def cmd_init(self):
        """
        Does nothing, since the global objective initialization should both
        create the objective and set the constants
        """
        return ""

    def cmd_term(self):
        """
        Does nothing, since the global objective termination should terminate the objective
        """
        return ""

CONST_INTS = ConstInts()