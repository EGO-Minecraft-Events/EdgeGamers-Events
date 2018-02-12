from abc import ABC, abstractmethod

# from coord import Coord
# from vector import Vector2, Vector3
from lib.coord import Coord
from lib.vector import Vector2, Vector3

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

    def pos_xz_selector(self):
        for coord in self._pos:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        return "x={},z={}".format(*self.pos_str().split()[::2])

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
        return "{},{}".format(self.pos_selector(), self.rot_selector())

    def tele_xz_selector(self):
        return "{},{}".format(self.pos_xz_selector(), self.rot_selector())

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

    def pos2_xz_selector(self):
        for coord in self._pos:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        return "x={},z={}".format(*self.pos_str().split()[::2])

    def region_str(self):
        return "{} {}".format(self.pos_str(), self.pos2_str())

    def region_selector(self):
        for coord in self._pos2:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        diff_vec = self._pos2 - self._pos
        diff_args = ""
        for key in "xyz":
            if diff_vec[key] != 0:
                diff_args += ",d{}={}".format(key, diff_vec[key])
        return "{}{}".format(self.pos_selector(), diff_args)

    def region_xz_selector(self):
        for coord in self._pos2:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        diff_vec = self._pos2 - self._pos
        diff_args = ""
        for key in "xz":
            if diff_vec[key] != 0:
                diff_args += ",d{}={}".format(key, diff_vec[key])
        return "{}{}".format(self.pos_selector(), diff_args)

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

    def pos3_xz_selector(self):
        for coord in self._pos:
            if not coord.is_global():
                raise TypeError("Selectors can't be made when one or more coordinates are relative or local")
        return "x={},z={}".format(*self.pos_str().split()[::2])

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
            *args: If a single string, can be parsed in two different ways:
                - If the string contains will be split by spaces and parsed as a string list.
                Otherwise, assumes args is a list containing any of Vector2, Vector3, int, float, str, and Coord.

        Returns:
            One of any subclasses of Coords based on the length of args (or length of args.split())
        """

        if len(args) == 1 and isinstance(args[0], str):
            if "=" in args[0]: # Creating coords based on selector. Note: does not parse rotations (yet)
                selector_args = {arg: val for arg, val in (entry.split("=") for entry in args[0].split(","))}

                coords = list()
                pos = Vector3()
                for key in ["x", "y", "z"]:
                    if key in selector_args:
                        pos[key] = selector_args[key]
                coords.extend(pos)

                pos2 = Vector3()
                for key in ["dx", "dy", "dz"]:
                    if key in selector_args:
                        pos2[key[1]] = selector_args[key]
                pos2 += pos
                if pos2 != pos:
                    coords.extend(pos2)

            else:
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
