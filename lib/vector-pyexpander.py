#from lib.coord import Coord
from math import sqrt
from numbers import Real
from abc import ABC, abstractmethod

from coord import Coord

"""
TODO: more doctests and docstrings
"""

class Vector(ABC):

    @abstractmethod
    def copy(self):
        """Return a copy of this vector

        Returns:
            A copy of this vector such that the components of
            the vector are of equal value but do not refer to
            the same objects.
        """
        pass

    @abstractmethod
    def dot(self, vec):
        """Return the dot product between this vector and another
        """
        pass

    def norm(self):
        """Return the norm of this vector

        Returns:
            The length / norm / magnitude of this vector
        """
        return sqrt(self.dot(self))

    def normalized(self):
        """Return a normalized version of this Vector

        Returns:
            This vector but with a length of 1
        """
        return self / self.norm()

    @abstractmethod
    def __len__(self):
        """Return the number of components (x,y,z,w,...) in this vector, also called the size

        Returns:
            The size of this vector
        """
        pass

    @abstractmethod
    def __iter__(self):
        """Return an iterable of the components of this vector
        """

    @abstractmethod
    def __getitem__(self, key):
        """Allow retriving components of this vector via indexing in 
        a list-like fashion and with 'x','y','z','w', ... ,etc.

        Raises:
            IndexError when out of bounds or vector does not contain the key
        """
        pass

    @abstractmethod
    def __setitem__(self, key, value):
        """Allow modification of components of this vector via indexing in 
        a list-like fashion and with 'x','y','z','w', ... ,etc.

        Raises:
            IndexError when out of bounds or vector does not contain the key
        """
        pass

    @abstractmethod
    def __repr__(self):
        """Return a string that looks like a valid Python expression to
        recreate this vector
        """
        pass

    @abstractmethod
    def __str__(self):
        """Return a string that makes this vector readable
        """
        pass

    @abstractmethod
    def simple_str(self):
        """Return a simplified string version of this vector

        Returns:
            A space separated string of coordinates from this vector
        """
        pass

    """Arthimetic comparisons
    """

    @abstractmethod
    def __eq__(self, other):
        """If each component of this vector equals (in value, not necessarily reference)
        each component of the other vector, return True
        """
        pass

    @abstractmethod
    def __ne__(self, other):
        """If any of the components in this vector differ from the same corresponding component
        of the other vector, return True
        """
        pass

    """Matrix multiplication
    """

    @abstractmethod
    def __matmul__(self, other):
        """Vector * Matrix
        """
        pass

    """Arithmetic operations are performed component-wise
    """

$py(ops = {"add__":"+", "sub__":"-", "mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    @abstractmethod
    def __$(name)(self, other):
        pass

    def __r$(name)(self, other):
        pass

    def __i$(name)(self, other):
        """Should return NotImplemented if any of the vector
        components in self refer to the same object.
        """
        pass
$endfor

    @abstractmethod
    def __divmod__(self, other):
        return

    @abstractmethod
    def __rdivmod__(self, other):
        return

$py(unary_ops = {"__neg__":"-", "__pos__":"+", "__invert__":"~"})
$for(name, symbol in unary_ops.items())
    @abstractmethod
    def $(name)(self):
        """Apply the unary arithmetic operation to each component
        """
        pass
$endfor

    @abstractmethod
    def __abs__(self):
        """Take the absolute value of each component
        """
        pass

    @abstractmethod
    def __round__(self, n=0):
        """Round each component to the n'th decimal place
        """
        pass




class Vector3(Vector):
    """A class for storing and manipulating three coordinates

    Attributes:
        x (Coord): x-coordinate
        y (Coord): y-coordinate
        z (Coord): z-coordinate
    """

$for(i in 'xyz')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        self._$(i) = Coord(value)
$endfor

    def __init__(self, x=0, y=None, z=None, by_ref=False):
        """Create a new vector

        Args:
            x (optional): x-coordinate. Has a default value of 0. Both y and z will inherit this value if both are None or unspecified
            y (optional): y-coordinate. Inherits the value of x if both y and z are None or unspecified. 0 if z is specified and y is not.
            z (optional): z-coordinate. Inherits the value of x if both y and z are None or unspecified. 0 if y is specified and z is not.
            by_ref (optional): Whether to assign self.x, self.y, self.z by reference or value when x, y, and/or z are Coord objects.
                Exception is when x is the only value specified, in which case x y z will be assigned by value regardless of by_ref.

        Examples:
            >>> Vector3()
            Vector3('0','0','0')
            >>> Vector3('~')
            Vector3('~','~','~')
            >>> Vector3('^')
            Vector3('^','^','^')
            >>> Vector3(1.0)
            Vector3('1.0','1.0','1.0')
            >>> Vector3(1, 2.0, -3.0)
            Vector3('1','2.0','-3.0')
            >>> Vector3('~5')
            Vector3('~5','~5','~5')
            >>> Vector3('~5', '^6', 2)
            Vector3('~5','^6','2')
            >>> Vector3('^-2', '~3.0')
            Vector3('^-2','~3.0','0')
            >>> Vector3('^-2', z='~3.0')
            Vector3('^-2','0','~3.0')
        """

        # If both y and z are None, inherit the value of x
        if y is None and z is None:
            if isinstance(x, Coord):
                self.x = x.copy()
                self.y = x.copy()
                self.z = x.copy()
            else:
                self.x = Coord(x)
                self.y = Coord(x)
                self.z = Coord(x)
            return

        # Otherwise, set the y or z to 0
        if y is None:
            y = 0
        if z is None:
            z = 0

        if not by_ref:
            self.x = x
            self.y = y
            self.z = z
            return

        # Set the values of self._x, self._y, self._z
        if isinstance(x, Coord):
            self._x = x
        else:
            self.x = x

        if isinstance(y, Coord):
            self._y = y
        else:
            self.y = y

        if isinstance(z, Coord):
            self._z = z
        else:
            self.z = z

    def cross(self, vec3):
        """Return the cross product

        Args:
            vec3 (Vector3): A Vector3

        Returns:
            A Vector3 that is the cross product of this vector and vec3
        
        Examples:
            >>> vec = Vector3()
            >>> vec_copy = vec.copy()
        """
        if not isinstance(vector3, Vector3):
            raise TypeError("A cross product is only applicable to a Vector3")
        x = self.y * vector3.z - self.z * vector3.y
        y = self.z * vector3.x - self.x * vector3.z
        z = self.x * vector3.y - self.y * vector3.x
        return Vector3(x, y, z)

    def dot(self, vec):
        if not isinstance(vec, Vector3):
            raise TypeError("Vector sizes must match")
        return self.x * vec.x + self.y * vec.y + self.z * vec.z

    def copy(self):
        return Vector3(self.x.copy(), self.y.copy(), self.z.copy())

    def __len__(self):
        return 3

    def __iter__(self):
        yield self.x
        yield self.y
        yield self.z

    def __getitem__(self, key):
        keys = "xyz"
        if isinstance(key, int):
            key = keys[key]

        if key == "x":
            return self.x
        elif key == "y":
            return self.y
        elif key == "z":
            return self.z
        else:
            raise IndexError("Vector3 does not contain {}".format(key))

    def __setitem__(self, key, value):
        keys = "xyz"
        if isinstance(key, int):
            key = keys[key]

        if key == "x":
            self.x = value
        elif key == "y":
            self.y = value
        elif key == "z":
            self.z = value
        else:
            raise IndexError("Vector3 does not contain {}".format(key))

    def __repr__(self):
        return "Vector3('{}','{}','{}')".format(str(self.x), str(self.y), str(self.z))

    def __str__(self):
        return "({},{},{})".format(str(self.x), str(self.y), str(self.z))

    def simple_str(self):
        return "{} {} {}".format(str(self.x), str(self.y), str(self.z))

$for(i in 'xyz')
$for(j in 'xyz')
$for(k in 'xyz')
    @property
    def $(i)$(j)$(k)(self):
        """Swizzle mask

        Returns:
            Vector3(self.$(i), self.$(j), self.$(k))
        """
        return Vector3(self.$(i), self.$(j), self.$(k))

$if(i == j or i == k or j == k)
    @$(i)$(j)$(k).setter
    def $(i)$(j)$(k)(self, value):
        raise RuntimeError("Elements in this vector '$(i)$(j)$(k)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j)$(k).setter
    def $(i)$(j)$(k)(self, value):
        if isinstance(value, Vector3):
            self.$(i) = value.x
            self.$(j) = value.y
            self.$(k) = value.z
        else:
            self.$(i) = value
            self.$(j) = value
            self.$(k) = value
$endif

$endfor
$endfor
$endfor

$for(i in 'xyz')
$for(j in 'xyz')
    @property
    def $(i)$(j)(self):
        """Swizzle mask

        Returns:
            Vector2(self.$(i), self.$(j))
        """
        return Vector2(self.$(i), self.$(j))

$if(i == j)
    @$(i)$(j).setter
    def $(i)$(j)(self, value):
        raise RuntimeError("Elements in this vector '$(i)$(j)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j).setter
    def $(i)$(j)(self, value):
        if isinstance(value, Vector2):
            self.$(i) = value.x
            self.$(j) = value.y
        else:
            self.$(i) = value
            self.$(j) = value
$endif
$endfor
$endfor

    def __eq__(self, other):
        if isinstance(other, Vector3):
            return self.x == other.x and self.y == other.y and self.z == other.z
        else:
            return NotImplemented

    def __ne__(self, other):
        if isinstance(other, Vector3):
            return self.x != other.x or self.y != other.y or self.z != other.z
        else:
            return NotImplemented

    def __matmul__(self, other):
        return NotImplemented

    """Arithmetic operations are performed component-wise
    """

$py(ops = {"add__":"+", "sub__":"-", "mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Vector3):
            x = self.x $(symbol) other.x
            y = self.y $(symbol) other.y
            z = self.z $(symbol) other.z
        else:
            x = self.x $(symbol) other
            y = self.y $(symbol) other
            z = self.z $(symbol) other
        return Vector3(x, y, z)

    def __r$(name)(self, other):
        x = other $(symbol) self.x
        y = other $(symbol) self.y
        z = other $(symbol) self.z
        return Vector3(x, y, z)

    def __i$(name)(self, other):
        if self.x is self.y or self.x is self.z or self.y is self.z:
            raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented

        if isinstance(other, Vector3):
            self.x $(symbol)= other.x
            self.y $(symbol)= other.y
            self.z $(symbol)= other.z
        else:
            self.x $(symbol)= other
            self.y $(symbol)= other
            self.z $(symbol)= other
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Vector3):
            x = divmod(self.x, other.x)
            y = divmod(self.y, other.y)
            z = divmod(self.z, other.z)
        else:
            x = divmod(self.x, other)
            y = divmod(self.y, other)
            z = divmod(self.z, other)
        return Vector3(x, y, z)

    def __rdivmod__(self, other):
        x = divmod(other, self.x)
        y = divmod(other, self.y)
        z = divmod(other, self.z)
        return Vector3(x, y, z)

$py(unary_ops = {"__neg__":"-", "__pos__":"+", "__invert__":"~"})
$for(name, symbol in unary_ops.items())
    def $(name)(self):
        return Vector3($(symbol)self.x, $(symbol)self.y, $(symbol)self.z)
$endfor

    def __abs__(self):
        return Vector3(abs(self.x), abs(self.y), abs(self.z))

    def __round__(self, n=0):
        return Vector3(round(self.x, n), round(self.y, n), round(self.z, n))




class Vector2:
    """A class for storing and manipulating two coordinates

    Attributes:
        x (Coord): x-coordinate
        y (Coord): y-coordinate
    """

$for(i in 'xy')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        self._$(i) = Coord(value)
$endfor

    def __init__(self, x=0, y=None, by_ref=False):
        """Create a new vector

        Args:
            x (optional): x-coordinate. Has a default value of 0
            y (optional): y-coordinate. If None, will inherit x's value
            by_ref (optional): Whether to assign self.x, self.y by reference or value when x, and/or y are Coord objects.
                Exception is when x is the only value specified, in which case x y will be assigned by value regardless of by_ref.

        Examples:
            >>> Vector2()
            Vector2('0','0')
            >>> Vector2(1.0)
            Vector2('1.0','1.0')
            >>> Vector2(1.0, 2.0)
            Vector2('1.0','2.0')
            >>> Vector2('~5')
            Vector2('~5','~5')
        """
        if y is None:
            if isinstance(x, Coord):
                self.x = x.copy()
                self.y = x.copy()
            else:
                self.x = Coord(x)
                self.y = Coord(x)
            return

        if not by_ref:
            self.x = x
            self.y = y

        if isinstance(x, Coord):
            self._x = x
        else:
            self.x = x

        if isinstance(y, Coord):
            self._y = y
        else:
            self.y = y
    
    def dot(self, vec):
        if not isinstance(vec, Vector2):
            raise TypeError("Vector sizes must match")
        return self.x * vec.x + self.y * vec.y

    def copy(self):
        return Vector2(self.x.copy(), self.y.copy())

    def __len__(self):
        return 2

    def __iter__(self):
        yield self.x
        yield self.y

    def __getitem__(self, key):
        keys = "xy"
        if isinstance(key, int):
            key = keys[key]

        if key == "x":
            return self.x
        elif key == "y":
            return self.y
        else:
            raise IndexError("Vector2 does not contain {}".format(key))

    def __setitem__(self, key, value):
        keys = "xy"
        if isinstance(key, int):
            key = keys[key]

        if key == "x":
            self.x = value
        elif key == "y":
            self.y = value
        else:
            raise IndexError("Vector2 does not contain {}".format(key))

    def __repr__(self):
        return "Vector2('{}','{}')".format(str(self.x), str(self.y))

    def __str__(self):
        return "({},{})".format(str(self.x), str(self.y))

    def simple_str(self):
        return "{} {}".format(str(self.x), str(self.y))

$for(i in 'xy')
$for(j in 'xy')
$for(k in 'xy')
    @property
    def $(i)$(j)$(k)(self):
        """Swizzle mask

        Returns:
            Vector2(self.$(i), self.$(j))
        """
        return Vector2(self.$(i), self.$(j))
$endfor
$endfor
$endfor

$for(i in 'xy')
$for(j in 'xy')

    @property
    def $(i)$(j)(self):
        """Swizzle mask

        Returns:
            Vector2(self.$(i), self.$(j))
        """
        return Vector2(self.$(i), self.$(j))

$if(i == j)
    @$(i)$(j).setter
    def $(i)$(j)$(k)(self, value):
        raise RuntimeError("Elements in this vector '$(i)$(j)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j).setter
    def $(i)$(j)(self, value):
        if isinstance(value, Vector2):
            self.$(i) = value.x
            self.$(j) = value.y
        else:
            self.$(i) = value
            self.$(j) = value
$endif
$endfor
$endfor

    def __eq__(self, other):
        if isinstance(other, Vector2):
            return self.x == other.x and self.y == other.y
        else:
            return NotImplemented

    def __ne__(self, other):
        if isinstance(other, Vector2):
            return self.x != other.x or self.y != other.y
        else:
            return NotImplemented

    def __matmul__(self, other):
        return NotImplemented

    """Arithmetic operations are performed component-wise
    """

$py(ops = {"add__":"+", "sub__":"-", "mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Vector2):
            x = self.x $(symbol) other.x
            y = self.y $(symbol) other.y
        else:
            x = self.x $(symbol) other
            y = self.y $(symbol) other
        return Vector2(x, y)

    def __r$(name)(self, other):
        x = other $(symbol) self.x
        y = other $(symbol) self.y
        return Vector2(x, y)

    def __i$(name)(self, other):
        if self.x is self.y:
            raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented

        if isinstance(other, Vector2):
            self.x $(symbol)= other.x
            self.y $(symbol)= other.y
        else:
            self.x $(symbol)= other
            self.y $(symbol)= other
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Vector2):
            x = divmod(self.x, other.x)
            y = divmod(self.y, other.y)
        else:
            x = divmod(self.x, other)
            y = divmod(self.y, other)
        return Vector2(x, y)

    def __rdivmod__(self, other):
        x = divmod(other, self.x)
        y = divmod(other, self.y)
        return Vector2(x, y)

$py(unary_ops = {"__neg__":"-", "__pos__":"+", "__invert__":"~"})
$for(name, symbol in unary_ops.items())
    def $(name)(self):
        return Vector2($(symbol)self.x, $(symbol)self.y)
$endfor

    def __abs__(self):
        return Vector2(abs(self.x), abs(self.y))

    def __round__(self, n=0):
        return Vector2(round(self.x, n), round(self.y, n))

