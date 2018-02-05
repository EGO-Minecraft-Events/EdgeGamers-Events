from lib.coord import Coord
#from pcoord import Coord
from math import sqrt

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

        >>> a[0] is a.x and a[1] is a.y and a[2] is a.z
        True
        >>> a[-1] is a.z
        True

        >>> a.simple_str()
        '2 4 2'
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
                self._x = x.copy()
                self._y = x.copy()
                self._z = x.copy()
            else:
                self._x = Coord(x)
                self._y = Coord(x)
                self._z = Coord(x)
            return

        if isinstance(x, Coord):
            self._x = x
        else:
            self._x = Coord(x)

        if y is not None:
            if isinstance(y, Coord):
                self._y = y
            else:
                self._y = Coord(y)

        if z is not None:
            if isinstance(z, Coord):
                self._z = z
            else:
                self._z = Coord(z)

$for(i in 'xyz')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        if isinstance(value, Coord):
            self._$(i) = value.copy()
        elif isinstance(value, (int, float, str)):
            self._$(i) = Coord(value)
        else:
            raise TypeError("Unsupported assignment of $(i) to {}".format(type(value)))
$endfor

    def copy(self):
        """Return a copy of this vector

        Returns:
            Vector3(self.x.copy(), self.y.copy(), self.z.copy())
        """
        return Vector3(self.x.copy(), self.y.copy(), self.z.copy())

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
        raise RuntimeError("Illegal assignment. Elements in this vector '$(i)$(j)$(k)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j)$(k).setter
    def $(i)$(j)$(k)(self, value):
        if isinstance(value, Vector3):
            self.$(i) = value.x
            self.$(j) = value.y
            self.$(k) = value.z
        elif isinstance(value, (int, float, Coord)):
            self.$(i) = value
            self.$(j) = value
            self.$(k) = value
        else:
            return NotImplemented
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
        raise RuntimeError("Illegal assignment. Elements in this vector '$(i)$(j)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j).setter
    def $(i)$(j)(self, value):
        if isinstance(value, Vector2):
            self.$(i) = value.x
            self.$(j) = value.y
        elif isinstance(value, (int, float, Coord)):
            self.$(i) = value
            self.$(j) = value
        else:
            return NotImplemented
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

$py(ops = {"add__":"+", "sub__":"-", "__mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Vector3):
            x = self.x $(symbol) other.x
            y = self.y $(symbol) other.y
            z = self.z $(symbol) other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x $(symbol) other
            y = self.y $(symbol) other
            z = self.z $(symbol) other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __r$(name)(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other $(symbol) self.x
            y = other $(symbol) self.y
            z = other $(symbol) self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __i$(name)(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x $(symbol)= other.x
                self.y $(symbol)= other.y
                self.z $(symbol)= other.z
            if isinstance(other, (int, float, Coord)):
                self.x $(symbol)= other
                self.y $(symbol)= other
                self.z $(symbol)= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Vector3):
            x = divmod(self._x, other.x)
            y = divmod(self._y, other.y)
            z = divmod(self._z, other.z)
        elif isinstance(other, (int, float, Coord)):
            x = divmod(self._x, other)
            y = divmod(self._y, other)
            z = divmod(self._z, other)
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rdivmod__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = divmod(other, self._x)
            y = divmod(other, self._y)
            z = divmod(other, self._z)
        else:
            return NotImplemented
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
                self._x = x.copy()
                self._y = x.copy()
            else:
                self._x = Coord(x)
                self._y = Coord(x)
            return

        if isinstance(x, Coord):
            self._x = x
        else:
            self._x = Coord(x)

        if y is not None:
            if isinstance(y, Coord):
                self._y = y
            else:
                self._y = Coord(y)

$for(i in 'xy')
    @property
    def $(i)(self):
        return self._$(i)

    @$(i).setter
    def $(i)(self, value):
        if isinstance(value, Coord):
            self._$(i) = value.copy()
        elif isinstance(value, (int, float, str)):
            self._$(i) = Coord(value)
        else:
            raise TypeError("Unsupported assignment of $(i) to {}".format(type(value)))
$endfor

    def copy(self):
        """Return a copy of this vector

        Returns:
            Vector2(self.x.copy(), self.y.copy())
        """
        return Vector2(self.x.copy(), self.y.copy())

    def norm(self):
        """Return the norm of this vector

        Returns:
            The length / norm / magnitude of this vector
        """
        return sqrt(self @ self)

    def __len__(self):
        return 2

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
        raise RuntimeError("Illegal assignment. Elements in this vector '$(i)$(j)' refer to the same object, which makes assignment undefined")
        return NotImplemented
$else
    @$(i)$(j).setter
    def $(i)$(j)(self, value):
        if isinstance(value, Vector2):
            self.$(i) = value.x
            self.$(j) = value.y
        elif isinstance(value, (int, float, Coord)):
            self.$(i) = value
            self.$(j) = value
        else:
            return NotImplemented
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

$py(ops = {"add__":"+", "sub__":"-", "__mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Vector2):
            x = self.x $(symbol) other.x
            y = self.y $(symbol) other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x $(symbol) other
            y = self.y $(symbol) other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __r$(name)(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other $(symbol) self.x
            y = other $(symbol) self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __i$(name)(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x $(symbol)= other.x
                self.y $(symbol)= other.y
            if isinstance(other, (int, float, Coord)):
                self.x $(symbol)= other
                self.y $(symbol)= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Vector2):
            x = divmod(self._x, other.x)
            y = divmod(self._y, other.y)
        elif isinstance(other, (int, float, Coord)):
            x = divmod(self._x, other)
            y = divmod(self._y, other)
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rdivmod__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = divmod(other, self._x)
            y = divmod(other, self._y)
        else:
            return NotImplemented
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




if __name__ == "__main__":
    import doctest
    doctest.testmod()
