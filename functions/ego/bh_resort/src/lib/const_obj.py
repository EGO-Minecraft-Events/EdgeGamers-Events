from lib.scoreboard import Objective

class ConstObj(Objective):
    """
    Holds a constant objective, typically named as (Initials)Save

    These objectives get their own "const_objs.txt" file under event_name/src
    to be used by the floo network.
    """
    def __init__(self, name, display_name):
        super().__init__(name, display_name=display_name, remove_self=False)

    def create_file(self):
        """
        Creates the consts_obj.txt file
        """
        with open("consts_obj.txt", "w") as file:
            file.write("{0} _ {1}\n".format(self.name, self.display_name))
            for name, value in sorted(self.consts.items()):
                file.write("{0} = {1}\n".format(name, value))

    def cmd_reset(self):
        """
        Resets itself by resetting the scores
        """
        for name, value in sorted(self.consts.items()):
            self.cmd_queue.put("scoreboard players set {0} {1} {2}".format(name, self.name, value))

        return self._cmd_output()

    def cmd_init(self):
        """
        Overrides the original objective cmd_init since this doesn't
        actually return anything.
        """
        pass

    def cmd_term(self):
        """
        Like ConstObj.cmd_init, this doesn't return anything.
        """
        pass
