from queue import Queue

class Container:
    """
    Class meant to be inherited from and to keep general command methods
    """
    def __init__(self):
        self.cmd_queue = Queue()

    @staticmethod
    def cmd_from_list(cmd_list):
        return "\n    ".join(cmd_list)

    @staticmethod
    def cmd_from_queue(cmd_queue):
        cmd_list = []
        while not cmd_queue.empty():
            cmd = cmd_queue.get()
            cmd_list.append(cmd)
        return Container.cmd_from_list(cmd_list)

    def cmd_pre_init(self):
        """
        Initializes commands before the event starts

        This is generally used from the floo network to initialize
        """
        return ""

    def cmd_init(self):
        """
        Intialize commands
        """
        return ""

    def cmd_post_init(self):
        """
        Initialize commands, used at the very end of initializing
        and starting an event
        """
        return ""

    def cmd_main(self):
        """
        Main commands
        """
        return ""

    def cmd_post_main(self):
        """
        Clean up after the main commands, used at the end of the main function
        """
        return ""

    def cmd_term(self):
        """
        Terminate commands
        """
        return ""

    def _cmd_output(self):
        """
        Used to properly join a list of commands for outputting

        If the queue is empty, it returns a 0 length string
        """
        return Container.cmd_from_queue(self.cmd_queue)
