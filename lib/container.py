from queue import Queue

class Container:
    """
    Class meant to be inherited from and to keep general command methods
    """
    def __init__(self):
        self.cmd_queue = Queue()

    def cmd_init(self):
        """ Intialize commands """
        return ""

    def cmd_main(self):
        """ Main commands """
        return ""

    def cmd_term(self):
        """ Terminate commands """
        return ""

    def _cmd_output(self):
        """
        Used to properly join a list of commands for outputting

        If the queue is empty, it returns a 0 length string
        """
        cmd_list = []
        while not self.cmd_queue.empty():
            cmd = self.cmd_queue.get()
            cmd_list.append(cmd)
        return "\n    ".join(cmd_list)

