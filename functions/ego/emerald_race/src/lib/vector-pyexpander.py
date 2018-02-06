from lib.coord import Coord
from math import sqrt
from numbers import Real

#from coord import Coord

"""
TODO: more doctests and docstrings
"""

class Vector3:
    """A class for storing and manipulating three coordinates

    Attributes:
        x (Coord): x-coordinate
        y (Coord): y-coordinate
        z (Coord): z-coordinate

    Examples:
        >>> a = Vector3('1', '2', '3')
        >>> a
        Vector3('1','2','3')

        >>> a = a.zyx
        >>> a
        Vector3('3','2','1')

        >>> a.xz += 1
        >>> a
        Vector3('4','2','2')

        >>> a.xy = a.yx
        >>> a
        Vector3('2','4','2')

        >>> for c in a: c += 1
        >>> a
        Vector3('3','5','3')

        >>> a[0] = 4
        >>> a
        Vector3('4','5','3')

        >>> a = a.yxz
        >>> a
        Vector3('5','4','3')

        >>> a.simple_str()
        '5 4 3'
    """

    def __init__(self, x=0, y=None, z=None):
        """Create a new vector

        Args:
            x (optional): x-coordinate. Has a default value of 0.
            y (optional): y-coordinate. If None, z must also be None, and y will inherit its value from x. If not None, z must also not be None.
            z (optional): z-coordinate. If None, y must also be None, and z will inherit its value from x. If not None, y must also not be None.

        Examples:
            Valid uses: Vector3(), Vector3(x), Vector3(x, y, z)
            >>> Vector3()
            Vector3('0','0','0')
            >>> Vector3(1.0)
            Vector3('1.0','1.0','1.0')
            >>> Vector3(1.0, 2.0, 3.0)
            Vector3('1.0','2.0','3.0')
            >>> Vector3('~5')
            Vector3('~5','~5','~5')
        """
        if y is not None and z is None:
            raise TypeError("Invalid usage. Valid uses: Vector3(), Vector3(x), Vector3(x, y, z). More details in docstring.")
        if y is None and z is not None:
            raise TypeError("Invalid usage. Valid uses: Vector3(), Vector3(x), Vector3(x, y, z). More details in docstring.")

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

        if isinstance(x, Coord):
            self.x = x
        else:
            self.x = Coord(x)

        if y is not None:
            if isinstance(y, Coord):
                self.y = y
            else:
                self.y = Coord(y)

        if z is not None:
            if isinstance(z, Coord):
                self.z = z
            else:
                self.z = Coord(z)

$for(i in 'xyz')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        if isinstance(value, Coord):
            self._$(i) = value.copy()
        elif isinstance(value, (str, Real)):
            self._$(i) = Coord(value)
        else:
            raise TypeError("Type 'Coord' can only be assigned to 'int', 'float', 'long', any subclass of numbers.Real, 'str', or 'Coord'")
$endfor

    def copy(self):
        """Return a copy of this vector

        Returns:
            Vector3(self.x.copy(), self.y.copy(), self.z.copy())
        """
        return Vector3(self.x, self.y, self.z)

    def norm(self):
        """Return the norm of this vector

        Returns:
            The length / norm / magnitude of this vector
        """
        return sqrt(self @ self)

    def cross(self, vector3):
        if not isinstance(vector3, Vector3):
            raise TypeError("A cross product is only applicable to Vector3's")
        x = self.y * vector3.z - self.z * vector3.y
        y = self.z * vector3.x - self.x * vector3.z
        z = self.x * vector3.y - self.y * vector3.x
        return Vector3(x, y, z)

    def __len__(self):
        return 3

    def __iter__(self):
        yield self.x
        yield self.y
        yield self.z

    def normalized(self):
        return self / self.norm()

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
        """Return a space separated string of coordinates

        Returns:
            "{} {} {}".format(str(self.x), str(self.y), str(self.z))
        """
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
        # TODO: Matrix multiplication with matrices
        if isinstance(other, Vector3):
            return (self.x * other.x + self.y * other.y + self.z * other.z).value
        else:
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

    def __init__(self, x=0, y=None):
        """Create a new vector

        Args:
            x (optional): x-coordinate. Has a default value of 0
            y (optional): y-coordinate. If None, will inherit x's value

        Examples:
            Valid uses: Vector2(), Vector2(x), Vector2(x, y)
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

        if isinstance(x, Coord):
            self.x = x
        else:
            self.x = Coord(x)

        if y is not None:
            if isinstance(y, Coord):
                self.y = y
            else:
                self.y = Coord(y)

$for(i in 'xy')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        if isinstance(value, Coord):
            self._$(i) = value.copy()
        elif isinstance(value, (str, Real)):
            self._$(i) = Coord(value)
        else:
            raise TypeError("Type 'Coord' can only be assigned to 'int', 'float', 'long', any subclass of numbers.Real, 'str', or 'Coord'")
$endfor

    def copy(self):
        """Return a copy of this vector

        Returns:
            Vector2(self.x.copy(), self.y.copy())
        """
        return Vector2(self.x, self.y)

    def norm(self):
        """Return the norm of this vector

        Returns:
            The length / norm / magnitude of this vector
        """
        return sqrt(self @ self)

    def __len__(self):
        return 2

    def __iter__(self):
        yield self.x
        yield self.y

    def normalized(self):
        return self / self.norm()

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
        """Return a space separated string of coordinates

        Returns:
            "{} {}".format(str(self.x), str(self.y))
        """
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
        # TODO: Matrix multiplication with matrices
        if isinstance(other, Vector2):
            return (self.x * other.x + self.y * other.y).value
        else:
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

