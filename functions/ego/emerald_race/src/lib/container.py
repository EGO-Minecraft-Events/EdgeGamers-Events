class Container:
    """
    Class meant to be inherited from and to keep general command methods
    """
    def cmd_init(self):
        """ Intialize commands """
        return ""

    def cmd_main(self):
        """ Main commands """
        return ""

    def cmd_term(self):
        """ Terminate commands """
        return ""

    @staticmethod
    def output_cmd_list(cmd_list):
        """
        Used to properly join a list of commands for outputting
        """
        return "\n    ".join(cmd_list)

