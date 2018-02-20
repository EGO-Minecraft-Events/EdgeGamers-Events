from lib.scoreboard import Objective, OBJECTIVES
from lib.floo_network import Event
from lib.container import Container

class PRNG(Container):
    def __init__(self, event, objective_name, lower, upper=None):
        """
        Create a new PRNG object for generating pseudo-random numbers

        Args:
            event (Event): event object for self-referencing mcfunctions
            objective_name (str): objective name for storing scoreboard values
            lower (int): the minimum value (inclusive) for the resulting pseudo-random number
            upper (int, optional): the maximum value (non-inclusive) for the resulting pseudo-random number
                If not specified, upper will inherit lower's value and lower will be overriden with 0
        """
        super().__init__()
        if lower and not upper:
            lower, upper = 0, lower
        
        self.event = event
        self.objective_name = objective_name
        self.objective = Objective(objective_name, display_name="Pseudo-RNG")
        self.objective.add_const("&Multiplier", 1103515245)
        self.objective.add_const("&Increment", 12345)
        self.objective.add_const("&Offset", lower)
        self.objective.add_const("&Modulus", upper - lower)
        self.objective.add_const("&Seed", 0) # This isn't a constant, it will change! Why does the method have to be called "add_const"!?
        self.objective.add_const("&Iteration", 1) # Increments in powers of two. This isn't constant either
        self.objective.add_const("&Max_Iteration", 2**30) # Maximum power of two that !Iteration can reach
        OBJECTIVES.add(self.objective)

    def cmd_init(self):
        self.cmd_queue.put('summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["PRNG","True"]}')
        self.cmd_queue.put('summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["PRNG","False"]}')
        self.cmd_queue.put('summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["PRNGIterator"]}')
        self.cmd_queue.put("&Iteration {} = 1".format(self.objective_name))
        self.cmd_queue.put("ScOP @e[PRNGIterator] {0} = &Max_Iteration {0}".format(self.objective_name))
        self.cmd_queue.put(self.event.cmd_func("prng_init"))
        return self._cmd_output()
    
    def cmd_assign(self):
        self.cmd_queue.put("ScOP &Seed {0} *= &Multiplier {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP &Seed {0} += &Increment {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP &Seed {0} &= &Modulus {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP &Seed {0} += &Offset {0}".format(self.objective_name))
        self.cmd_queue.put("ScOP @s {0} = &Seed {0}".format(self.objective_name))
        return self._cmd_output()

    def cmd_main(self):
        return self.cmd_assign()

    def cmd_term(self):
        return ""
