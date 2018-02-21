from lib.scoreboard import Objective, OBJECTIVES
from lib.container import Container
from lib.const_ints import CONST_INTS

class PRNG(Container):
    def __init__(self, objective_name, lower, upper=None):
        """
        Create a new PRNG object for generating pseudo-random numbers

        Args:
            objective_name (str): objective name for storing scoreboard values
            lower (int): the minimum value (inclusive) for the resulting pseudo-random number
            upper (int, optional): the maximum value (non-inclusive) for the resulting pseudo-random number
                If not specified, upper will inherit lower's value and lower will be overriden with 0
        """
        super().__init__()
        CONST_INTS.add_consts(-1)
        if lower and not upper:
            lower, upper = 0, lower
        
        self.objective_name = objective_name
        self.objective = Objective(objective_name, display_name="Pseudo-RNG")
        self.objective.add_const("&Multiplier", 1103515245)
        self.objective.add_const("&Increment", 12345)
        self.objective.add_const("&Offset", lower)
        self.objective.add_const("&Modulus", upper - lower)
        self.objective.add_const("&Seed", 0)
        OBJECTIVES.add(self.objective)

    def cmd_init(self):
        self.cmd_queue.put('summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}')
        self.cmd_queue.put('summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}')
        for i in range(31): # Construct a random positive value for the seed by generating random bits. Seed is stored in-game as a 32-bit signed integer, so we generate 31 random bits
            self.cmd_queue.put("@r[type=area_effect_cloud,PRNG] @s[True] &Seed {} + {}".format(self.objective_name, 1 << i))
        return self._cmd_output()
    
    def cmd_next_seed(self):
        self.cmd_queue.put("ScOP &Seed {0} *= &Multiplier {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP &Seed {0} += &Increment {0}".format(self.objective_name))
        return self._cmd_output()
    
    def cmd_assign(self):
        self.cmd_queue.put("ScOP @s {0} = &Seed {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP @s {0} %= &Modulus {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP @s[{0}=..-1] {0} *= -1 constants".format(self.objective_name))
        self.cmd_queue.put("ScOP @s {0} += &Offset {0}".format(self.objective_name))
        return self._cmd_output()

    def cmd_main(self):
        return Container.cmd_from_list([self.cmd_next_seed(), self.cmd_assign()])

    def cmd_term(self):
        return ""
