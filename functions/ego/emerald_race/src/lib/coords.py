from abc import ABC, abstractmethod

from lib.coord import Coord
from lib.vector import Vector2, Vector3

# from coord import Coord
# from vector import Vector2, Vector3

"""
Coordinates

TODO: doctests and docstrings
"""

def _raise_on_non_global(vec):
    """
    Raises a TypeError if any of the components of a given vector is relative or local.
    Called before creation of entity selector arguments, since relative and local coordinates can't be used there.

    Args:
        vec (Vector): A vector
    
    Raises:
        TypeError if the given vector contains a releative or local coordinate
    """
    for coord in vec:
        if not coord.is_global():
            raise TypeError("Vector contains a relative or local coordinate")

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
    def selector(self):
        """
        Return arguments for entity selectors that can find entities at these coordinates
        """
        pass

    def __repr__(self):
        return "Coords('{}')".format(str(self))

class PositionCoords(CoordsBase):
    _length = 3

    def __init__(self, x, y, z):
        self._vec = Vector3(x, y, z)

    @property
    def vec(self):
        return self._vec

    @vec.setter
    def vec(self, value):
        if isinstance(value, Vector3):
            self._vec = value
        else:
            return TypeError("vec may only be assigned to a Vector3")

    def __str__(self):
        return self.vec.simple_str()

    def selector(self):
        _raise_on_non_global(self.vec)
        return "x={},y={},z={}".format(*str(self).split())

    def xz_selector(self):
        _raise_on_non_global(self.vec)
        return "x={},z={}".format(*str(self).split()[::2])
    
    def setblock(self, block):
        """
        Returns a setblock command that sets a block at this position to the block specified

        Args:
            block (str): The block to set
        
        Returns:
            A setblock command that sets the block at this position to the specified block
        """
        return "setblock {} {}".format(str(self), block)

class RotationCoords(CoordsBase):
    _length = 2

    def __init__(self, xr, yr):
        self._vec = Vector2(xr, yr)

    @property
    def vec(self):
        return self._vec

    @vec.setter
    def vec(self, value):
        if isinstance(value, Vector2):
            self._vec = value
        else:
            return TypeError("vec may only be assigned to a Vector2")

    def __str__(self):
        return self.vec.simple_str()

    def selector(self):
        # Note: using 1.13-style selector
        _raise_on_non_global(self.vec)
        return "x_rotation={0}..{0},y_rotation={1}..{1}".format(*str(self).split())

class TeleportCoords(CoordsBase):
    _length = 5

    def __init__(self, x, y, z, xr, yr):
        self.pos = PositionCoords(x, y, z)
        self.rot = RotationCoords(xr, yr)

    def __str__(self):
        return "{} {}".format(str(self.pos), str(self.rot))

    def selector(self):
        return "{},{}".format(self.pos.selector(), self.rot.selector())

    def xz_selector(self):
        return "{},{}".format(self.pos.xz_selector(), self.rot.selector())

class RegionCoords(CoordsBase):
    _length = 6

    def __init__(self, x, y, z, x2, y2, z2):
        self.pos = PositionCoords(x, y, z)
        self.pos2 = PositionCoords(x2, y2, z2)

    def __str__(self):
        return "{} {}".format(str(self.pos), str(self.pos2))

    def selector(self):
        _raise_on_non_global(self.pos.vec)
        _raise_on_non_global(self.pos2.vec)
        diff_vec = self.pos2 - self.pos
        diff_args = ""
        for key in "xyz":
            if diff_vec[key] != 0:
                diff_args += ",d{}={}".format(key, diff_vec[key])
        return "{}{}".format(self.pos.selector(), diff_args)

    def xz_selector(self):
        _raise_on_non_global(self.pos.vec)
        _raise_on_non_global(self.pos2.vec)
        diff_vec = self.pos2 - self.pos
        diff_args = ""
        for key in "xz":
            if diff_vec[key] != 0:
                diff_args += ",d{}={}".format(key, diff_vec[key])
        return "{}{}".format(self.pos.selector(), diff_args)

    def fill(self, block):
        """
        Returns a fill command that fills this region with the block specified

        Args:
            block (str): The block to fill this region with
        
        Returns:
            A fill command that fills this region with the specified block
        """
        return "fill {} {}".format(str(self), block)

class CloneCoords(CoordsBase):
    _length = 9

    def __init__(self, x, y, z, x2, y2, z2, x3, y3, z3):
        self.region = RegionCoords(x, y, z, x2, y2, z2)
        self.pos = PositionCoords(x3, y3, z3)

    def __str__(self):
        return "{} {}".format(str(self.region), str(self.pos))

    def selector(self):
        raise NotImplementedError("CloneCoords has no selector")
    
    def clone(self, args=""):
        """
        Creates a clone command.

        Args:
            args (string): any additional arguments for the clone command after the 9 coordinates
        
        Returns:
            A clone command with these coordinates and the args (if specified)
        """
        if args:
            return "clone {} {}".format(str(self), args)
        return "clone {}".format(str(self))

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
