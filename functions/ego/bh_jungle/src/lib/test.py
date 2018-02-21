# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray"},{"text":"$TD$","color":"$Color$","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"$TDName$","color":"$Color$"}}},{"text":"]","color":"gray"},{"text":": "},
# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}}},{"text":"]","color":"gray"},{"text":": "},
# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray","bold":true},{"text":"R","color":"blue","bold":true},{"text":"R","color":"dark_green","bold":true},{"text":"]:","color":"gray","bold":true},{"text":" "},

class Text:
    def __init__(self, name, colors, hover=None, hover_cmd=None, disp_name=None):
        """
        Displays the name with the given options

        Args:
            name (str): 
            colors (str): 
            hover (str): Defaults to showing nothing
            disp_name (str): 

        eg.
            Text("Pictionary", "dark_aqua", "Pictionary", "scoreboard players set @s SPtp {}".format(id))
        """

    @classmethod
    def from_initials(cls, initials, colors, hover=None, hover_cmd=None, disp_name=None):
        """
        Displays the initials as [INPUT] with the given options
        """
    
    def __call__(self):
        pass