class Coords:
    """
    Class to represent a set of coordinates

    Attributes:
        coords (str): String representation of the coordinates
        coord_list (list of Coord): List of all possible coordinates
        type (str): Set depending on the number of coordinates detected
            REGULAR = set of 3 coordinates
            ROTATION = set of 2 coordinates
            TELEPORT = set of 5 coordinates
            REGION = set of 6 coordinates
            CLONE = set of 9 coordinates
        coord_dict: Dictionary to hold each Coord object according to preset keywords
    """

    REGULAR = "Regular"
    ROTATION = "Rotation"
    TELEPORT = "Teleport"
    REGION = "Region"
    CLONE = "Clone"

    type_dict = {
        3: REGULAR,
        2: ROTATION,
        5: TELEPORT,
        6: REGION,
        9: CLONE,
    }

    def __init__(self, coords):
        """
        Args:
            coords (str): list of Coord objects
        """
        self.coords = coords
        self.coord_list = [Coord(coord) for coord in coords.split()]

        coord_length = len(self.coord_list)
        if coord_length in Coords.type_dict:
            self.type = Coords.type_dict[coord_length]
        else:
            raise SyntaxError("Coordinates {coords} are not a length of {lengths}".format(
                    coords=coords, lengths=list(Coords.type_dict.keys())))

        self.coord_dict = {}

        self.create_dict()

    @classmethod
    def from_multiple(cls, *args):
        """
        Initializer for multiple values
        
        Each value will be concatenated into a full string value and passed
        onto the regular constructor
        """
        arg_str = " ".join([str(arg) for arg in args])
        return cls(arg_str)

    def create_dict(self):
        """
        Creates the coord_dict based off of the coordinate type and keywords

        (x, y, z, xyz) (2x, 2y, 2z, 2xyz) (3x, 3y, 3z, 3xyz) (xr, yr, rot)
        """
        # does the first 3 coordinates
        if self.type in (Coords.REGULAR, Coords.TELEPORT, Coords.REGION, Coords.CLONE):
            self.coord_dict["x"] = self.coord_list[0]
            self.coord_dict["y"] = self.coord_list[1]
            self.coord_dict["z"] = self.coord_list[2]
            self.coord_dict["xyz"] = " ".join(str(coord) for coord in self.coord_list[0:3])

        # gets rotation
        if self.type == Coords.ROTATION:
            self.coord_dict["xr"] = self.coord_list[0]
            self.coord_dict["yr"] = self.coord_list[1]
            self.coord_dict["rot"] = " ".join(str(coord) for coord in self.coord_list[0:2])

        if self.type == Coords.TELEPORT:
            self.coord_dict["xr"] = self.coord_list[3]
            self.coord_dict["yr"] = self.coord_list[4]
            self.coord_dict["rot"] = " ".join(str(coord) for coord in self.coord_list[3:5])

        # gets secondary coordinates
        if self.type in (Coords.REGION, Coords.CLONE):
            self.coord_dict["2x"] = self.coord_list[3]
            self.coord_dict["2y"] = self.coord_list[4]
            self.coord_dict["2z"] = self.coord_list[5]
            self.coord_dict["2xyz"] = " ".join(str(coord) for coord in self.coord_list[3:6])

        # Gets third set of coordinates
        if self.type == Coords.CLONE:
            self.coord_dict["3x"] = self.coord_list[6]
            self.coord_dict["3y"] = self.coord_list[7]
            self.coord_dict["3z"] = self.coord_list[8]
            self.coord_dict["3xyz"] = " ".join(str(coord) for coord in self.coord_list[6:9])

    def get(self, value):
        """
        Gets a coord object given either the index or keyword.
        Getting the string can be done using __getitem__ via the subscription operator

        Args:
            value (int or str): Either the index to the list or the key to the dictionary

        Returns:
            str: single coordinate
        """
        if isinstance(value, int):
            if value < len(self.coord_list):
                return self.coord_list[value]
            else:
                raise IndexError("Index '{index}' out of range for coordinate '{coord}'".format(index=value, coord=str(self)))

        return self.coord_dict[value]

    def to_selector(self):
        """
        If the type is REGULAR, it will create the selector arguments using x,y,z
        If the type is REGION, it will create the selector arguments using x,y,z,dx,dy,dz
        
        Raises:
            TypeError if it is not a REGULAR or REGION type
        """
        if self.type == Coords.REGULAR:
            return "x={0},y={1},z={2}".format(*self.coord_list)
        elif self.type == Coords.REGION:
            dx, dy, dz = [self.coord_list[index+3].value - self.coord_list[index].value for index in range(3)]
            return "x={0},y={1},z={2},dx={3},dy={4},dz={5}".format(*self.coord_list[0:3], dx, dy, dz)
        else:
            raise TypeError("Coordinates '{}' cannot be converted to selector arguments".format(str(self)))

    def __len__(self):
        return len(self.coord_list)

    def __getitem__(self, value):
        """
        Gets a specific coord object as a str instead of a Coord (see get(self, value))
        """
        return str(self.get(value))

    def __str__(self):
        """
        Gets the full string value
        """
        return self.coords


class Coord:
    """
    Attributes:
        coord (str): String representation of the object
        relative (bool): Whether the coordinates are relative or not
        value (int): The actual numerical value of the coordinates
    """
    def __init__(self, coord):
        self.coord = coord

        if coord[0] == "~":
            self.relative = True

            # removes the first "~"
            coord_calc = coord[1:]
        else:
            self.relative = False
            coord_calc = coord

        if not coord_calc:
            self.value = 0
        elif "." in coord_calc:
            self.value = float(coord_calc)
        else:
            self.value = int(coord_calc)

    def __str__(self):
        return self.coord
