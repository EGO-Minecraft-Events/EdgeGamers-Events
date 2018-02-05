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


    @property
    def x(self):
        return self._x

    @x.setter
    def x(self, value):
        if isinstance(value, Coord):
            self._x = value.copy()
        elif isinstance(value, (int, float, str)):
            self._x = Coord(value)
        else:
            raise TypeError("Unsupported assignment of x to {}".format(type(value)))

    @property
    def y(self):
        return self._y

    @y.setter
    def y(self, value):
        if isinstance(value, Coord):
            self._y = value.copy()
        elif isinstance(value, (int, float, str)):
            self._y = Coord(value)
        else:
            raise TypeError("Unsupported assignment of y to {}".format(type(value)))

    @property
    def z(self):
        return self._z

    @z.setter
    def z(self, value):
        if isinstance(value, Coord):
            self._z = value.copy()
        elif isinstance(value, (int, float, str)):
            self._z = Coord(value)
        else:
            raise TypeError("Unsupported assignment of z to {}".format(type(value)))


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




    @property
    def xxx(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.x, self.x)
        """
        return Vector3(self.x, self.x, self.x)


    @xxx.setter
    def xxx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xxx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xxy(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.x, self.y)
        """
        return Vector3(self.x, self.x, self.y)


    @xxy.setter
    def xxy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xxy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xxz(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.x, self.z)
        """
        return Vector3(self.x, self.x, self.z)


    @xxz.setter
    def xxz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xxz' refer to the same object, which makes assignment undefined")
        return NotImplemented





    @property
    def xyx(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.y, self.x)
        """
        return Vector3(self.x, self.y, self.x)


    @xyx.setter
    def xyx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xyx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xyy(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.y, self.y)
        """
        return Vector3(self.x, self.y, self.y)


    @xyy.setter
    def xyy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xyy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xyz(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.y, self.z)
        """
        return Vector3(self.x, self.y, self.z)


    @xyz.setter
    def xyz(self, value):
        if isinstance(value, Vector3):
            self.x = value.x
            self.y = value.y
            self.z = value.z
        elif isinstance(value, (int, float, Coord)):
            self.x = value
            self.y = value
            self.z = value
        else:
            return NotImplemented





    @property
    def xzx(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.z, self.x)
        """
        return Vector3(self.x, self.z, self.x)


    @xzx.setter
    def xzx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xzx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xzy(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.z, self.y)
        """
        return Vector3(self.x, self.z, self.y)


    @xzy.setter
    def xzy(self, value):
        if isinstance(value, Vector3):
            self.x = value.x
            self.z = value.y
            self.y = value.z
        elif isinstance(value, (int, float, Coord)):
            self.x = value
            self.z = value
            self.y = value
        else:
            return NotImplemented



    @property
    def xzz(self):
        """Swizzle mask

        Returns:
            Vector3(self.x, self.z, self.z)
        """
        return Vector3(self.x, self.z, self.z)


    @xzz.setter
    def xzz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xzz' refer to the same object, which makes assignment undefined")
        return NotImplemented







    @property
    def yxx(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.x, self.x)
        """
        return Vector3(self.y, self.x, self.x)


    @yxx.setter
    def yxx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yxx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def yxy(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.x, self.y)
        """
        return Vector3(self.y, self.x, self.y)


    @yxy.setter
    def yxy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yxy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def yxz(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.x, self.z)
        """
        return Vector3(self.y, self.x, self.z)


    @yxz.setter
    def yxz(self, value):
        if isinstance(value, Vector3):
            self.y = value.x
            self.x = value.y
            self.z = value.z
        elif isinstance(value, (int, float, Coord)):
            self.y = value
            self.x = value
            self.z = value
        else:
            return NotImplemented





    @property
    def yyx(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.y, self.x)
        """
        return Vector3(self.y, self.y, self.x)


    @yyx.setter
    def yyx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yyx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def yyy(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.y, self.y)
        """
        return Vector3(self.y, self.y, self.y)


    @yyy.setter
    def yyy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yyy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def yyz(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.y, self.z)
        """
        return Vector3(self.y, self.y, self.z)


    @yyz.setter
    def yyz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yyz' refer to the same object, which makes assignment undefined")
        return NotImplemented





    @property
    def yzx(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.z, self.x)
        """
        return Vector3(self.y, self.z, self.x)


    @yzx.setter
    def yzx(self, value):
        if isinstance(value, Vector3):
            self.y = value.x
            self.z = value.y
            self.x = value.z
        elif isinstance(value, (int, float, Coord)):
            self.y = value
            self.z = value
            self.x = value
        else:
            return NotImplemented



    @property
    def yzy(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.z, self.y)
        """
        return Vector3(self.y, self.z, self.y)


    @yzy.setter
    def yzy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yzy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def yzz(self):
        """Swizzle mask

        Returns:
            Vector3(self.y, self.z, self.z)
        """
        return Vector3(self.y, self.z, self.z)


    @yzz.setter
    def yzz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yzz' refer to the same object, which makes assignment undefined")
        return NotImplemented







    @property
    def zxx(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.x, self.x)
        """
        return Vector3(self.z, self.x, self.x)


    @zxx.setter
    def zxx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zxx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def zxy(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.x, self.y)
        """
        return Vector3(self.z, self.x, self.y)


    @zxy.setter
    def zxy(self, value):
        if isinstance(value, Vector3):
            self.z = value.x
            self.x = value.y
            self.y = value.z
        elif isinstance(value, (int, float, Coord)):
            self.z = value
            self.x = value
            self.y = value
        else:
            return NotImplemented



    @property
    def zxz(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.x, self.z)
        """
        return Vector3(self.z, self.x, self.z)


    @zxz.setter
    def zxz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zxz' refer to the same object, which makes assignment undefined")
        return NotImplemented





    @property
    def zyx(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.y, self.x)
        """
        return Vector3(self.z, self.y, self.x)


    @zyx.setter
    def zyx(self, value):
        if isinstance(value, Vector3):
            self.z = value.x
            self.y = value.y
            self.x = value.z
        elif isinstance(value, (int, float, Coord)):
            self.z = value
            self.y = value
            self.x = value
        else:
            return NotImplemented



    @property
    def zyy(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.y, self.y)
        """
        return Vector3(self.z, self.y, self.y)


    @zyy.setter
    def zyy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zyy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def zyz(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.y, self.z)
        """
        return Vector3(self.z, self.y, self.z)


    @zyz.setter
    def zyz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zyz' refer to the same object, which makes assignment undefined")
        return NotImplemented





    @property
    def zzx(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.z, self.x)
        """
        return Vector3(self.z, self.z, self.x)


    @zzx.setter
    def zzx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zzx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def zzy(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.z, self.y)
        """
        return Vector3(self.z, self.z, self.y)


    @zzy.setter
    def zzy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zzy' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def zzz(self):
        """Swizzle mask

        Returns:
            Vector3(self.z, self.z, self.z)
        """
        return Vector3(self.z, self.z, self.z)


    @zzz.setter
    def zzz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zzz' refer to the same object, which makes assignment undefined")
        return NotImplemented








    @property
    def xx(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.x)
        """
        return Vector2(self.x, self.x)


    @xx.setter
    def xx(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xx' refer to the same object, which makes assignment undefined")
        return NotImplemented


    @property
    def xy(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.y)
        """
        return Vector2(self.x, self.y)


    @xy.setter
    def xy(self, value):
        if isinstance(value, Vector2):
            self.x = value.x
            self.y = value.y
        elif isinstance(value, (int, float, Coord)):
            self.x = value
            self.y = value
        else:
            return NotImplemented


    @property
    def xz(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.z)
        """
        return Vector2(self.x, self.z)


    @xz.setter
    def xz(self, value):
        if isinstance(value, Vector2):
            self.x = value.x
            self.z = value.y
        elif isinstance(value, (int, float, Coord)):
            self.x = value
            self.z = value
        else:
            return NotImplemented




    @property
    def yx(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.x)
        """
        return Vector2(self.y, self.x)


    @yx.setter
    def yx(self, value):
        if isinstance(value, Vector2):
            self.y = value.x
            self.x = value.y
        elif isinstance(value, (int, float, Coord)):
            self.y = value
            self.x = value
        else:
            return NotImplemented


    @property
    def yy(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.y)
        """
        return Vector2(self.y, self.y)


    @yy.setter
    def yy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yy' refer to the same object, which makes assignment undefined")
        return NotImplemented


    @property
    def yz(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.z)
        """
        return Vector2(self.y, self.z)


    @yz.setter
    def yz(self, value):
        if isinstance(value, Vector2):
            self.y = value.x
            self.z = value.y
        elif isinstance(value, (int, float, Coord)):
            self.y = value
            self.z = value
        else:
            return NotImplemented




    @property
    def zx(self):
        """Swizzle mask

        Returns:
            Vector2(self.z, self.x)
        """
        return Vector2(self.z, self.x)


    @zx.setter
    def zx(self, value):
        if isinstance(value, Vector2):
            self.z = value.x
            self.x = value.y
        elif isinstance(value, (int, float, Coord)):
            self.z = value
            self.x = value
        else:
            return NotImplemented


    @property
    def zy(self):
        """Swizzle mask

        Returns:
            Vector2(self.z, self.y)
        """
        return Vector2(self.z, self.y)


    @zy.setter
    def zy(self, value):
        if isinstance(value, Vector2):
            self.z = value.x
            self.y = value.y
        elif isinstance(value, (int, float, Coord)):
            self.z = value
            self.y = value
        else:
            return NotImplemented


    @property
    def zz(self):
        """Swizzle mask

        Returns:
            Vector2(self.z, self.z)
        """
        return Vector2(self.z, self.z)


    @zz.setter
    def zz(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'zz' refer to the same object, which makes assignment undefined")
        return NotImplemented




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



    def __mod__(self, other):
        if isinstance(other, Vector3):
            x = self.x % other.x
            y = self.y % other.y
            z = self.z % other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x % other
            y = self.y % other
            z = self.z % other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rmod__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other % self.x
            y = other % self.y
            z = other % self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __imod__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x %= other.x
                self.y %= other.y
                self.z %= other.z
            if isinstance(other, (int, float, Coord)):
                self.x %= other
                self.y %= other
                self.z %= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __rshift__(self, other):
        if isinstance(other, Vector3):
            x = self.x >> other.x
            y = self.y >> other.y
            z = self.z >> other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x >> other
            y = self.y >> other
            z = self.z >> other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rrshift__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other >> self.x
            y = other >> self.y
            z = other >> self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __irshift__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x >>= other.x
                self.y >>= other.y
                self.z >>= other.z
            if isinstance(other, (int, float, Coord)):
                self.x >>= other
                self.y >>= other
                self.z >>= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __xor__(self, other):
        if isinstance(other, Vector3):
            x = self.x ^ other.x
            y = self.y ^ other.y
            z = self.z ^ other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x ^ other
            y = self.y ^ other
            z = self.z ^ other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rxor__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other ^ self.x
            y = other ^ self.y
            z = other ^ self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ixor__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x ^= other.x
                self.y ^= other.y
                self.z ^= other.z
            if isinstance(other, (int, float, Coord)):
                self.x ^= other
                self.y ^= other
                self.z ^= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __and__(self, other):
        if isinstance(other, Vector3):
            x = self.x & other.x
            y = self.y & other.y
            z = self.z & other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x & other
            y = self.y & other
            z = self.z & other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rand__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other & self.x
            y = other & self.y
            z = other & self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __iand__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x &= other.x
                self.y &= other.y
                self.z &= other.z
            if isinstance(other, (int, float, Coord)):
                self.x &= other
                self.y &= other
                self.z &= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __pow__(self, other):
        if isinstance(other, Vector3):
            x = self.x ** other.x
            y = self.y ** other.y
            z = self.z ** other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x ** other
            y = self.y ** other
            z = self.z ** other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rpow__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other ** self.x
            y = other ** self.y
            z = other ** self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ipow__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x **= other.x
                self.y **= other.y
                self.z **= other.z
            if isinstance(other, (int, float, Coord)):
                self.x **= other
                self.y **= other
                self.z **= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __add__(self, other):
        if isinstance(other, Vector3):
            x = self.x + other.x
            y = self.y + other.y
            z = self.z + other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x + other
            y = self.y + other
            z = self.z + other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __radd__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other + self.x
            y = other + self.y
            z = other + self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __iadd__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x += other.x
                self.y += other.y
                self.z += other.z
            if isinstance(other, (int, float, Coord)):
                self.x += other
                self.y += other
                self.z += other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __sub__(self, other):
        if isinstance(other, Vector3):
            x = self.x - other.x
            y = self.y - other.y
            z = self.z - other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x - other
            y = self.y - other
            z = self.z - other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rsub__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other - self.x
            y = other - self.y
            z = other - self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __isub__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x -= other.x
                self.y -= other.y
                self.z -= other.z
            if isinstance(other, (int, float, Coord)):
                self.x -= other
                self.y -= other
                self.z -= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __lshift__(self, other):
        if isinstance(other, Vector3):
            x = self.x << other.x
            y = self.y << other.y
            z = self.z << other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x << other
            y = self.y << other
            z = self.z << other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rlshift__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other << self.x
            y = other << self.y
            z = other << self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ilshift__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x <<= other.x
                self.y <<= other.y
                self.z <<= other.z
            if isinstance(other, (int, float, Coord)):
                self.x <<= other
                self.y <<= other
                self.z <<= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __or__(self, other):
        if isinstance(other, Vector3):
            x = self.x | other.x
            y = self.y | other.y
            z = self.z | other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x | other
            y = self.y | other
            z = self.z | other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ror__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other | self.x
            y = other | self.y
            z = other | self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ior__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x |= other.x
                self.y |= other.y
                self.z |= other.z
            if isinstance(other, (int, float, Coord)):
                self.x |= other
                self.y |= other
                self.z |= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __truediv__(self, other):
        if isinstance(other, Vector3):
            x = self.x / other.x
            y = self.y / other.y
            z = self.z / other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x / other
            y = self.y / other
            z = self.z / other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rtruediv__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other / self.x
            y = other / self.y
            z = other / self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __itruediv__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x /= other.x
                self.y /= other.y
                self.z /= other.z
            if isinstance(other, (int, float, Coord)):
                self.x /= other
                self.y /= other
                self.z /= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def ____mul__(self, other):
        if isinstance(other, Vector3):
            x = self.x * other.x
            y = self.y * other.y
            z = self.z * other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x * other
            y = self.y * other
            z = self.z * other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __r__mul__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other * self.x
            y = other * self.y
            z = other * self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __i__mul__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x *= other.x
                self.y *= other.y
                self.z *= other.z
            if isinstance(other, (int, float, Coord)):
                self.x *= other
                self.y *= other
                self.z *= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __floordiv__(self, other):
        if isinstance(other, Vector3):
            x = self.x // other.x
            y = self.y // other.y
            z = self.z // other.z
        elif isinstance(other, (int, float, Coord)):
            x = self.x // other
            y = self.y // other
            z = self.z // other
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __rfloordiv__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other // self.x
            y = other // self.y
            z = other // self.z
        else:
            return NotImplemented
        return Vector3(x, y, z)

    def __ifloordiv__(self, other):
        if self.x is not self.y and self.x is not self.z and self.y is not self.z:
            if isinstance(other, Vector3):
                self.x //= other.x
                self.y //= other.y
                self.z //= other.z
            if isinstance(other, (int, float, Coord)):
                self.x //= other
                self.y //= other
                self.z //= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self


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



    def __invert__(self):
        return Vector3(~self.x, ~self.y, ~self.z)

    def __pos__(self):
        return Vector3(+self.x, +self.y, +self.z)

    def __neg__(self):
        return Vector3(-self.x, -self.y, -self.z)


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


    @property
    def x(self):
        return self._x

    @x.setter
    def x(self, value):
        if isinstance(value, Coord):
            self._x = value.copy()
        elif isinstance(value, (int, float, str)):
            self._x = Coord(value)
        else:
            raise TypeError("Unsupported assignment of x to {}".format(type(value)))

    @property
    def y(self):
        return self._y

    @y.setter
    def y(self, value):
        if isinstance(value, Coord):
            self._y = value.copy()
        elif isinstance(value, (int, float, str)):
            self._y = Coord(value)
        else:
            raise TypeError("Unsupported assignment of y to {}".format(type(value)))


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




    @property
    def xxx(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.x)
        """
        return Vector2(self.x, self.x)

    @property
    def xxy(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.x)
        """
        return Vector2(self.x, self.x)



    @property
    def xyx(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.y)
        """
        return Vector2(self.x, self.y)

    @property
    def xyy(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.y)
        """
        return Vector2(self.x, self.y)





    @property
    def yxx(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.x)
        """
        return Vector2(self.y, self.x)

    @property
    def yxy(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.x)
        """
        return Vector2(self.y, self.x)



    @property
    def yyx(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.y)
        """
        return Vector2(self.y, self.y)

    @property
    def yyy(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.y)
        """
        return Vector2(self.y, self.y)







    @property
    def xx(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.x)
        """
        return Vector2(self.x, self.x)


    @xx.setter
    def xxy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'xx' refer to the same object, which makes assignment undefined")
        return NotImplemented



    @property
    def xy(self):
        """Swizzle mask

        Returns:
            Vector2(self.x, self.y)
        """
        return Vector2(self.x, self.y)


    @xy.setter
    def xy(self, value):
        if isinstance(value, Vector2):
            self.x = value.x
            self.y = value.y
        elif isinstance(value, (int, float, Coord)):
            self.x = value
            self.y = value
        else:
            return NotImplemented





    @property
    def yx(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.x)
        """
        return Vector2(self.y, self.x)


    @yx.setter
    def yx(self, value):
        if isinstance(value, Vector2):
            self.y = value.x
            self.x = value.y
        elif isinstance(value, (int, float, Coord)):
            self.y = value
            self.x = value
        else:
            return NotImplemented



    @property
    def yy(self):
        """Swizzle mask

        Returns:
            Vector2(self.y, self.y)
        """
        return Vector2(self.y, self.y)


    @yy.setter
    def yyy(self, value):
        raise RuntimeError("Illegal assignment. Elements in this vector 'yy' refer to the same object, which makes assignment undefined")
        return NotImplemented




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



    def __mod__(self, other):
        if isinstance(other, Vector2):
            x = self.x % other.x
            y = self.y % other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x % other
            y = self.y % other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rmod__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other % self.x
            y = other % self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __imod__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x %= other.x
                self.y %= other.y
            if isinstance(other, (int, float, Coord)):
                self.x %= other
                self.y %= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __rshift__(self, other):
        if isinstance(other, Vector2):
            x = self.x >> other.x
            y = self.y >> other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x >> other
            y = self.y >> other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rrshift__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other >> self.x
            y = other >> self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __irshift__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x >>= other.x
                self.y >>= other.y
            if isinstance(other, (int, float, Coord)):
                self.x >>= other
                self.y >>= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __xor__(self, other):
        if isinstance(other, Vector2):
            x = self.x ^ other.x
            y = self.y ^ other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x ^ other
            y = self.y ^ other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rxor__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other ^ self.x
            y = other ^ self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ixor__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x ^= other.x
                self.y ^= other.y
            if isinstance(other, (int, float, Coord)):
                self.x ^= other
                self.y ^= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __and__(self, other):
        if isinstance(other, Vector2):
            x = self.x & other.x
            y = self.y & other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x & other
            y = self.y & other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rand__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other & self.x
            y = other & self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __iand__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x &= other.x
                self.y &= other.y
            if isinstance(other, (int, float, Coord)):
                self.x &= other
                self.y &= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __pow__(self, other):
        if isinstance(other, Vector2):
            x = self.x ** other.x
            y = self.y ** other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x ** other
            y = self.y ** other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rpow__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other ** self.x
            y = other ** self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ipow__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x **= other.x
                self.y **= other.y
            if isinstance(other, (int, float, Coord)):
                self.x **= other
                self.y **= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __add__(self, other):
        if isinstance(other, Vector2):
            x = self.x + other.x
            y = self.y + other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x + other
            y = self.y + other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __radd__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other + self.x
            y = other + self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __iadd__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x += other.x
                self.y += other.y
            if isinstance(other, (int, float, Coord)):
                self.x += other
                self.y += other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __sub__(self, other):
        if isinstance(other, Vector2):
            x = self.x - other.x
            y = self.y - other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x - other
            y = self.y - other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rsub__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other - self.x
            y = other - self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __isub__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x -= other.x
                self.y -= other.y
            if isinstance(other, (int, float, Coord)):
                self.x -= other
                self.y -= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __lshift__(self, other):
        if isinstance(other, Vector2):
            x = self.x << other.x
            y = self.y << other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x << other
            y = self.y << other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rlshift__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other << self.x
            y = other << self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ilshift__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x <<= other.x
                self.y <<= other.y
            if isinstance(other, (int, float, Coord)):
                self.x <<= other
                self.y <<= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __or__(self, other):
        if isinstance(other, Vector2):
            x = self.x | other.x
            y = self.y | other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x | other
            y = self.y | other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ror__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other | self.x
            y = other | self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ior__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x |= other.x
                self.y |= other.y
            if isinstance(other, (int, float, Coord)):
                self.x |= other
                self.y |= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __truediv__(self, other):
        if isinstance(other, Vector2):
            x = self.x / other.x
            y = self.y / other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x / other
            y = self.y / other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rtruediv__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other / self.x
            y = other / self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __itruediv__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x /= other.x
                self.y /= other.y
            if isinstance(other, (int, float, Coord)):
                self.x /= other
                self.y /= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def ____mul__(self, other):
        if isinstance(other, Vector2):
            x = self.x * other.x
            y = self.y * other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x * other
            y = self.y * other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __r__mul__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other * self.x
            y = other * self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __i__mul__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x *= other.x
                self.y *= other.y
            if isinstance(other, (int, float, Coord)):
                self.x *= other
                self.y *= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self

    def __floordiv__(self, other):
        if isinstance(other, Vector2):
            x = self.x // other.x
            y = self.y // other.y
        elif isinstance(other, (int, float, Coord)):
            x = self.x // other
            y = self.y // other
        else:
            return NotImplemented
        return Vector2(x, y)

    def __rfloordiv__(self, other):
        if isinstance(other, (int, float, Coord)):
            x = other // self.x
            y = other // self.y
        else:
            return NotImplemented
        return Vector2(x, y)

    def __ifloordiv__(self, other):
        if self.x is not self.y:
            if isinstance(other, Vector2):
                self.x //= other.x
                self.y //= other.y
            if isinstance(other, (int, float, Coord)):
                self.x //= other
                self.y //= other
            else:
                return NotImplemented
        else:
            raise RuntimeError("Illegal assignment. Elements in this vector refer to the same object, which makes assignment undefined")
            return NotImplemented
        return self


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



    def __invert__(self):
        return Vector2(~self.x, ~self.y)

    def __pos__(self):
        return Vector2(+self.x, +self.y)

    def __neg__(self):
        return Vector2(-self.x, -self.y)


    def __abs__(self):
        return Vector2(abs(self.x), abs(self.y))

    def __round__(self, n=0):
        return Vector2(round(self.x, n), round(self.y, n))




if __name__ == "__main__":
    import doctest
    doctest.testmod()
