from lib.coord import Coord
from lib.vector import Vector2, Vector3
from abc import ABC, abstractmethod

#from coord import Coord
#from vector import Vector2, Vector3

"""
Coordinates

TODO: doctests and docstrings
"""

class CoordsBase(ABC):
    """
    Coords base class
    """

    @abstractmethod
    def __str__(self):
        """
        Return a space-separated string of coordinates for use in commands
        """
        pass

    @abstractmethod
    def to_selector(self):
        """
        Return arguments for entity selectors that can find entities at these coordinates
        """
        pass

    def __repr__(self):
        return "Coords('{}')".format(str(self))


class PositionCoords(CoordsBase):
    _length = 3

    def __init__(self, x, y, z):
        self._pos = Vector3(x, y, z)

    @property
    def pos(self):
        return self._pos

    @pos.setter
    def pos(self, value):
        if isinstance(value, Vector3):
            self._pos = value
        else:
            return TypeError("pos may only be assigned to a Vector3")

    def pos_str(self):
        return self.pos.simple_str()

    def pos_selector(self):
        for coord in self._pos:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        return "x={},y={},z={}".format(*self.pos_str().split())

    def __str__(self):
        return self.pos_str()

    def to_selector(self):
        return self.pos_selector()

class RotationCoords(CoordsBase):
    _length = 2

    def __init__(self, xr, yr):
        self._rot = Vector2(xr, yr)

    @property
    def rot(self):
        return self._rot

    @rot.setter
    def rot(self, value):
        if isinstance(value, Vector2):
            self._rot = value
        else:
            return TypeError("rot may only be assigned to a Vector2")

    def rot_str(self):
        return self._rot.simple_str()

    def rot_selector(self):
        # Note: using 1.13-style selector
        for coord in self._rot:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        return "x_rotation={0}..{0},y_rotation={1}..{1}".format(*self.rot_str().split())

    def __str__(self):
        return self.rot_str()

    def to_selector(self):
        return self.rot_selector()

class TeleportCoords(PositionCoords, RotationCoords):
    _length = 5

    def __init__(self, x, y, z, xr, yr):
        PositionCoords.__init__(self, x, y, z)
        RotationCoords.__init__(self, xr, yr)

    def tele_str(self):
        return "{} {}".format(self.pos_str(), self.rot_str())

    def tele_selector(self):
        return self.pos_selector() + "," + self.rot_selector()

    def __str__(self):
        return self.tele_str()

    def to_selector(self):
        return self.tele_selector()

class RegionCoords(PositionCoords):
    _length = 6

    def __init__(self, x, y, z, x2, y2, z2):
        PositionCoords.__init__(self, x, y, z)
        self._pos2 = Vector3(x2, y2, z2)

    @property
    def pos2(self):
        return self._pos2

    @pos2.setter
    def pos2(self, value):
        if isinstance(value, Vector3):
            self._pos2 = value
        else:
            return TypeError("pos2 may only be assigned to a Vector3")

    def pos2_str(self):
        return self._pos2.simple_str()

    def region_str(self):
        return "{} {}".format(self.pos_str(), self.pos2_str())

    def region_selector(self):
        for coord in self._pos2:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        diff_vec = self._pos2 - self._pos
        return "{},{}".format(self.pos_selector(), "dx={},dy={},dz={}".format(*diff_vec.simple_str().split()))

    def __str__(self):
        return self.region_str()

    def to_selector(self):
        return self.region_selector()

class CloneCoords(RegionCoords):
    _length = 9

    def __init__(self, x, y, z, x2, y2, z2, x3, y3, z3):
        RegionCoords.__init__(self, x, y, z, x2, y2, z2)
        self._pos3 = Vector3(x3, y3, z3)

    @property
    def pos3(self):
        return self._pos3

    @pos3.setter
    def pos3(self, value):
        if isinstance(value, Vector3):
            self._pos3 = value
        else:
            return TypeError("pos3 may only be assigned to a Vector3")

    def pos3_str(self):
        return self._pos3.simple_str()

    def clone_str(self):
        return "{} {} {}".format(self.pos_str(), self.pos2_str(), self.pos3_str())

    def __str__(self):
        return self.clone_str()

    def to_selector(self):
        raise NotImplementedError("CloneCoords has no selector")


def _all_subclasses(cls):
    return cls.__subclasses__() + [subsubclass for subclass in cls.__subclasses__() for subsubclass in _all_subclasses(subclass)]

class Coords(ABC):
    """
    Coords Factory
    """

    def __new__(cls, *args):
        """
        Create a new Coords object

        Args:
            *args: If a single string, will be split by spaces and parsed as a string list.
                Otherwise, assumes args is a list containing any of Vector2, Vector3, int, float, str, and Coord.

        Returns:
            One of any subclasses of Coords based on the length of args (or length of args.split())
        """

        if len(args) == 1 and isinstance(args[0], str):
            coords = args[0].split()
        else:
            coords = list()
            for arg in args:
                if isinstance(arg, (Vector2, Vector3)):
                    coords.extend(arg.simple_str().split())
                elif isinstance(arg, (int, float, str, Coord)):
                    coords.append(arg)
                else:
                    raise TypeError("Type {} is not supported".format(type(arg)))

        for subclass in _all_subclasses(CoordsBase):
            if len(coords) == subclass._length:
                return subclass(*coords)

        raise NotImplementedError("No Coords found that contains {} coordinates".format(len(coords)))

# Register each subclass of CoordsBase to also be a subclass of Coords, so isinstance will work
for subclass in _all_subclasses(CoordsBase):
    Coords.register(subclass)
# e.g. isinstance(PositionCoords, Coords) == True # even though PositionCoords extends CoordsBase

#class Coords:
#    """
#    Class to represent a set of coordinates
#
#    Attributes:
#        vectors (list): List of vectors that make up this set of coordinates
#
#        #coords (str): String representation of the coordinates
#        #coord_list (list of Coord): List of all possible coordinates
#        type (str): Set depending on the number of coordinates detected
#            REGULAR = set of 3 coordinates
#            ROTATION = set of 2 coordinates
#            TELEPORT = set of 5 coordinates
#            REGION = set of 6 coordinates
#            CLONE = set of 9 coordinates
#        coord_dict: Dictionary to hold each Coord object according to preset keywords
#    """
#
#    REGULAR = "Regular"
#    ROTATION = "Rotation"
#    TELEPORT = "Teleport"
#    REGION = "Region"
#    CLONE = "Clone"
#
#    type_dict = {
#        3: REGULAR, # [ Vector3 ]
#        2: ROTATION, # [ Vector2 ]
#        5: TELEPORT, # [ Vector3, Vector2 ]
#        6: REGION, # [ Vector3, Vector3 ]
#        9: CLONE # [ Vector3, Vector3, Vector3 ]
#    }
#
#    def __init__(self, coords):
#        """
#        Args:
#            coords (str): A space-separated string of characters translatable to Coord objects
#        """
#
#        coords_strlist = coords.split()
#        if len(coords_strlist) in Coords.type_dict:
#            self.type = Coords.type_dict[len(coords_strlist)]
#        else:
#            raise SyntaxError("The number of coordinates in '{}' do not match any of the coordinate types in {}".format(
#                    coords=coords, lengths=list(Coords.type_dict.keys())))
#
#        self.vectors = []
#
#        if self.type == Coords.REGULAR:
#            self.vectors.append(Vector3(*coords_strlist[0:3]))
#        elif self.type == Coords.ROTATION:
#            self.vectors.append(Vector2(*coords_strlist[0:2]))
#        elif self.type == Coords.TELEPORT:
#            self.vectors.append(Vector3(*coords_strlist[0:3]))
#            self.vectors.append(Vector2(*coords_strlist[3:5]))
#        elif self.type == Coords.REGION:
#            self.vectors.append(Vector3(*coords_strlist[0:3]))
#            self.vectors.append(Vector3(*coords_strlist[3:6]))
#        elif self.type == Coords.CLONE:
#            self.vectors.append(Vector3(*coords_strlist[0:3]))
#            self.vectors.append(Vector3(*coords_strlist[3:6]))
#            self.vectors.append(Vector3(*coords_strlist[6:9]))
#        else:
#            raise RuntimeError("Something derped")
#
#        # self.coords = coords
#        # self.coord_list = [Coord(coord) for coord in coords.split()]
#
#        # coord_length = len(self.coord_list)
#        # if coord_length in Coords.type_dict:
#        #     self.type = Coords.type_dict[coord_length]
#        # else:
#        #     raise SyntaxError("Coordinates {coords} are not a length of {lengths}".format(
#        #             coords=coords, lengths=list(Coords.type_dict.keys())))
#
#        self.coord_dict = {}
#
#        self.create_dict()
#
#    @classmethod
#    def from_multiple(cls, *args):
#        """
#        Initializer for multiple values
#
#        Each value will be concatenated into a full string value and passed
#        onto the regular constructor
#        """
#        arg_str = " ".join([str(arg) for arg in args])
#        return cls(arg_str)
#
#    def create_dict(self):
#        """
#        Creates the coord_dict based off of the coordinate type and keywords
#
#        (x, y, z, xyz) (2x, 2y, 2z, 2xyz) (3x, 3y, 3z, 3xyz) (xr, yr, rot)
#
#        Note: if any of the coordinates change, create_dict will need to be called again to update it to the new values
#        """
#        # does the first 3 coordinates
#        if self.type in (Coords.REGULAR, Coords.TELEPORT, Coords.REGION, Coords.CLONE):
#            self.coord_dict["x"] = self.vectors[0].x
#            self.coord_dict["y"] = self.vectors[0].y
#            self.coord_dict["z"] = self.vectors[0].z
#            self.coord_dict["xyz"] = self.vectors[0].simple_str()
#            # self.coord_dict["x"] = self.coord_list[0]
#            # self.coord_dict["y"] = self.coord_list[1]
#            # self.coord_dict["z"] = self.coord_list[2]
#            # self.coord_dict["xyz"] = " ".join(str(coord) for coord in self.coord_list[0:3])
#
#        # gets rotation
#        if self.type == Coords.ROTATION:
#            self.coord_dict["xr"] = self.vectors[0].x
#            self.coord_dict["yr"] = self.vectors[0].y
#            self.coord_dict["rot"] = self.vectors[0].simple_str()
#            # self.coord_dict["xr"] = self.coord_list[0]
#            # self.coord_dict["yr"] = self.coord_list[1]
#            # self.coord_dict["rot"] = " ".join(str(coord) for coord in self.coord_list[0:2])
#
#        if self.type == Coords.TELEPORT:
#            self.coord_dict["xr"] = self.vectors[1].x
#            self.coord_dict["yr"] = self.vectors[1].y
#            self.coord_dict["rot"] = self.vectors[1].simple_str()
#            # self.coord_dict["xr"] = self.coord_list[3]
#            # self.coord_dict["yr"] = self.coord_list[4]
#            # self.coord_dict["rot"] = " ".join(str(coord) for coord in self.coord_list[3:5])
#
#        # gets secondary coordinates
#        if self.type in (Coords.REGION, Coords.CLONE):
#            self.coord_dict["2x"] = self.vectors[1].x
#            self.coord_dict["2y"] = self.vectors[1].y
#            self.coord_dict["2z"] = self.vectors[1].z
#            self.coord_dict["2xyz"] = self.vectors[1].simple_str()
#            # self.coord_dict["2x"] = self.coord_list[3]
#            # self.coord_dict["2y"] = self.coord_list[4]
#            # self.coord_dict["2z"] = self.coord_list[5]
#            # self.coord_dict["2xyz"] = " ".join(str(coord) for coord in self.coord_list[3:6])
#
#        # Gets third set of coordinates
#        if self.type == Coords.CLONE:
#            self.coord_dict["3x"] = self.vectors[2].x
#            self.coord_dict["3y"] = self.vectors[2].y
#            self.coord_dict["3z"] = self.vectors[2].z
#            self.coord_dict["3xyz"] = self.vectors[2].simple_str()
#            # self.coord_dict["3x"] = self.coord_list[6]
#            # self.coord_dict["3y"] = self.coord_list[7]
#            # self.coord_dict["3z"] = self.coord_list[8]
#            # self.coord_dict["3xyz"] = " ".join(str(coord) for coord in self.coord_list[6:9])
#
#    def get(self, value):
#        """
#        Gets a coord object given either the index or keyword.
#        Getting the string can be done using __getitem__ via the subscription operator
#
#        Args:
#            value (int or str): Either the index to the list or the key to the dictionary
#
#        Returns:
#            str: single coordinate
#        """
#        if isinstance(value, int):
#            vec_num = value // 3
#            component = value % 3
#
#            try:
#                return self.vectors[vec_num][component]
#            except IndexError:
#                raise IndexError("Index '{index}' out of range for coordinate '{coord}'".format(index=value, coord=str(self)))
#
#            # if value < len(self.coord_list):
#            #     return self.coord_list[value]
#            # else:
#            #     raise IndexError("Index '{index}' out of range for coordinate '{coord}'".format(index=value, coord=str(self)))
#
#        return self.coord_dict[value]
#
#    def to_selector(self):
#        """
#        If the type is REGULAR, it will create the selector arguments using x,y,z
#        If the type is REGION, it will create the selector arguments using x,y,z,dx,dy,dz
#
#        Raises:
#            TypeError if it is not a REGULAR or REGION type
#        """
#        if self.type == Coords.REGULAR:
#            return "x={},y={},z={}".format(*self.vectors[0].simple_str().split())
#        elif self.type == Coords.REGION:
#            dvec = self.vectors[1] - self.vectors[0]
#            return "x={},y={},z={},dx={},dy={},dz={}".format(*self.vectors[0].simple_str().split(), *dvec.simple_str().split())
#        else:
#            raise TypeError("Coordinates '{}' cannot be converted to selector arguments".format(str(self)))
#
#        # if self.type == Coords.REGULAR:
#        #     return "x={0},y={1},z={2}".format(*self.coord_list)
#        # elif self.type == Coords.REGION:
#        #     dx, dy, dz = [self.coord_list[index+3].value - self.coord_list[index].value for index in range(3)]
#        #     return "x={0},y={1},z={2},dx={3},dy={4},dz={5}".format(*self.coord_list[0:3], dx, dy, dz)
#        # else:
#        #     raise TypeError("Coordinates '{}' cannot be converted to selector arguments".format(str(self)))
#
#    def __len__(self):
#        return sum([len(vector) for vector in self.vectors])
#
#    def __getitem__(self, value):
#        """
#        Gets a specific coord object as a str instead of a Coord (see get(self, value))
#        """
#        return str(self.get(value))
#
#    def __str__(self):
#        """
#        Gets the full string value
#        """
#        return " ".join([vector.simple_str() for vector in self.vectors])
#
