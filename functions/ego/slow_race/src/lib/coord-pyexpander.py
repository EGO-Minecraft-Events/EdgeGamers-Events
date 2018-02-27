from numbers import Real

def _isint(x):
    """Check if x is an int

    Args:
        x (str): A numeric representation of a number

    Returns:
        True if x is an integer
        False if x is not an integer
    
    Examples:
        >>> _isint('5')
        True
        >>> _isint('7.1')
        False
        >>> _isint('3.0')
        False
    """
    try:
        a, b = float(x), int(x)
    except ValueError:
        return False
    else:
        return a == b

def _tonum(x):
    """Turn x into an int or float depending on its representation

    Args:
        x (str): A numeric representation of a number

    Returns:
        int(x) if x is an integer
        float(x) if x is a floating point number

    Examples:
        >>> _tonum('5')
        5
        >>> _tonum('3.14')
        3.14
        >>> _tonum('-5')
        -5
        >>> _tonum('-3.14')
        -3.14
    """
    if _isint(x):
        return int(x)
    else:
        return float(x)

def _tonum_strip_prefix(x):
    """Turn x into an int or float depending on its representation.
    Ignores prefixes

    Args:
        x (str): A numeric representation of a number

    Returns:
        int(x) if x is an integer
        float(x) if x is a floating point number

    Examples:
        >>> _tonum_strip_prefix('5')
        5
        >>> _tonum_strip_prefix('3.14')
        3.14
        >>> _tonum_strip_prefix('^5')
        5
        >>> _tonum_strip_prefix('~-3.14')
        -3.14
    """
    if x[0].isdigit():
        return _tonum(x)
    else:
        return _tonum(x[1:])

class Coord:
    """A value container for Minecraft coordinates

    Attributes:
        value (numbers.Real): The value of this coordinate
        prefix (str): The prefix of this coordinate. Can be either "", "~", or "^"
    """

    def _set_value(self, val=0):
        """Sets the value of this coord

        Args:
            val (numbers.Real, str, Coord): The value to assign this Coord to.
                If val is Coord, self will copy the values.
        """
        if isinstance(val, Coord):
            self._value = val.value
            self._prefix = val._prefix
            return

        if isinstance(val, str):
            if val[0] in "~^":
                if len(val) == 1:
                    self._value = 0
                else:
                    self._value = _tonum(val[1:])
                self._prefix = val[0]
            else:
                self._value = _tonum(val)
                self._prefix = ""
            return

        if isinstance(val, Real):
            self._value = val
            self._prefix = ""
            return

        raise TypeError("'Coord' can only be initialized to 'int', 'float', 'long', any subclass of numbers.Real, or 'str'")

    def __init__(self, value=0):
        """Create a coordinate from a given value

        Args:
            value (optional): Value of this coordinate. If a float or int, this coordinate will be global.
                If a str, value should be a number, optionally prefixed by one of ~ (relative) or ^ (local).
        
        Examples:
            >>> c = Coord('~-5')
            ...
            >>> c.value
            -5
            >>> c._prefix
            '~'
        """
        self._set_value(value)

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, val):
        self._set_value(val)

    def copy(self):
        """Return a copy of this coordinate

        Returns:
            A Coord object containing the same value and _prefix as self
        
        Examples:
            >>> c = Coord('^3')
            ...
            >>> c_c = c.copy()
            ...
            >>> c.value == c_c.value and c._prefix == c_c._prefix
            True
            >>> c_c is c
            False
        """
        copy_coord = Coord(self.value)
        copy_coord._prefix = self._prefix
        return copy_coord

    def __str__(self):
        """
        Examples:
            >>> str(Coord('^5'))
            '^5'
            >>> str(Coord(2))
            '2'
            >>> str(Coord('~'))
            '~'
            >>> str(Coord())
            '0'
        """
        if self.value == 0 and not self.is_global():
            return self._prefix
        return self._prefix + str(self.value)

    def __repr__(self):
        return "Coord('{}')".format(str(self))

    def set_int(self):
        """Sets the value of this coordinate to an integer
        The prefix is unchanged
        """
        self.value = int(value)
    
    def set_float(self):
        """Sets the value of this coordinate to a float
        The prefix is unchanged.
        """
        self.value = float(value)

    def set_global(self):
        """Removes the prefix of this Coord
        """
        self._prefix = ""

    def is_global(self):
        """Returns whether or not this Coord has a prefix.
        True if no prefix is present.
        """
        return self._prefix == ""

    def set_relative(self):
        """Sets the prefix of this Coord to "~"
        """
        self._prefix = "~"

    def is_relative(self):
        """Returns True if the prefix of this Coord is "~"
        False otherwise.
        """
        return self._prefix == "~"

    def set_local(self):
        """Sets the prefix of this Coord to "^"
        """
        self._prefix = "^"

    def is_local(self):
        """Returns True if the prefix of this Coord is "^"
        False otherwise.
        """
        return self._prefix == "^"

#    def __set__(self, instance, value):
#        if isinstance(value, Coord):
#            self.value = value.value
#            self._prefix = value._prefix
#        elif isinstance(value, Real):
#            self.value = value
#            self._prefix = ""
#        elif isinstance(value, str):
#            if value[0] in "~^":
#                self.value = _tonum(value[1:])
#                self._prefix = value[0]
#            else:
#                self.value = _tonum(value)
#                self._prefix = ""
#        else:
#            raise TypeError("Type 'Coord' can only be assigned to 'int', 'float', 'long', any subclass of numbers.Real, 'str', or 'Coord'")

    """In all numeric type comparisons, the prefix of the Coord is ignored

    Examples:
        >>> Coord("~15") == Coord("^15")
        True
        >>> Coord("~10") <= Coord("~15")
        True
        >>> Coord("~9") <= Coord("9")
        True
        >>> Coord("^3") > Coord("3")
        False
    """

$py(comparisons = {"__lt__":"<", "__le__":"<=", "__eq__":"==", "__ne__":"!=", "__gt__":">", "__ge__":">="})

$for(name, symbol in comparisons.items())
    def $(name)(self, other):
        if isinstance(other, Coord):
            return self.value $(symbol) other.value
        elif isinstance(other, Real):
            return self.value $(symbol) other
        else:
            return NotImplemented
$endfor

    def equals(val):
        """Returns true if this Coord equals the value given.
        This is different from __eq__ as this comparison includes prefixes.
        
        Args:
            val (Coord, str, numbers.Real): value to compare to
        
        Returns:
            True if both the value and the prefix of Coord(val) and self are equal.
        """
        coord = Coord(val)
        return coord._prefix == self._prefix and coord.value == self.value


    """In all numeric type operations, the prefix of the result is inherited from the left of the operator.

    Examples:
        >>> Coord("~15") + Coord("^5")
        Coord('~20')
        >>> Coord("^15") + Coord("~5")
        Coord('^20')
        >>> 15 / Coord("^5")
        Coord('3')
    """

$py(ops = {"add__":"+", "sub__":"-", "mul__":"*", "truediv__":"/", "floordiv__":"//", "mod__":"%", "pow__":"**", "lshift__":"<<", "rshift__":">>", "and__":"&", "xor__":"^", "or__":"|"})
$for(name, symbol in ops.items())
    def __$(name)(self, other):
        if isinstance(other, Coord):
            result = self.value $(symbol) other.value
        elif isinstance(other, Real):
            result = self.value $(symbol) other
        elif isinstance(other, str):
            result = self.value $(symbol) _tonum_strip_prefix(other)
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval._prefix = self._prefix
        return new_coordval

    def __r$(name)(self, other):
        _prefix = ""
        if isinstance(other, Real):
            result = other $(symbol) self.value
        elif isinstance(other, str):
            result = _tonum_strip_prefix(other) $(symbol) self.value
            if not other[0].isdigit():
                _prefix = other[0]
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval._prefix = _prefix
        return new_coordval

    def __i$(name)(self, other):
        if isinstance(other, Coord):
            self._value $(symbol)= other.value
        elif isinstance(other, Real):
            self._value $(symbol)= other
        elif isinstance(other, str):
            self._value $(symbol)= _tonum_strip_prefix(other)
        else:
            return NotImplemented
        return self
$endfor

    def __divmod__(self, other):
        if isinstance(other, Coord):
            result = divmod(self.value, other.value)
        elif isinstance(other, Real):
            result = divmod(self.value, other)
        elif isinstance(other, str):
            result = divmod(self.value, _tonum_strip_prefix(other))
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval._prefix = self._prefix
        return new_coordval

    def __rdivmod__(self, other):
        _prefix = ""
        if isinstance(other, Real):
            result = divmod(other, self.value)
        elif isinstance(other, str):
            result = divmod(_tonum_strip_prefix(other), self.value)
            if not other[0].isdigit():
                _prefix = other[0]
        else:
            return NotImplemented
        new_coordval = Coord(result)
        new_coordval._prefix = _prefix
        return new_coordval

        """Unary operators apply to the value of the Coord.

        Examples:
            >>> -Coord("5")
            Coord('-5')
            >>> -Coord("^7")
            Coord('^-7')
        """

$py(unary_ops = {"__neg__":"-", "__pos__":"+", "__invert__":"~"})
$for(name, symbol in unary_ops.items())
    def $(name)(self):
        new_coordval = Coord($(symbol)self.value)
        new_coordval._prefix = self._prefix
        return new_coordval
$endfor

    def __abs__(self):
        """Takes the absolute value of this Coord's value

        Examples:
            >>> abs(Coord("-7"))
            Coord('7')
            >>> abs(Coord("~-6"))
            Coord('~6')
        """
        new_coordval = Coord(abs(self.value))
        new_coordval._prefix = self._prefix
        return new_coordval

$py(conversion_ops = {"__int__":"int(", "__float__":"float("})
$for(name, func in conversion_ops.items())
    def $(name)(self):
        return $(func)self.value)
$endfor

    def __round__(self, n=0):
        """Rounds this Coord's value to the n'th decimal place

        Examples:
            >>> round(Coord("3.141592653589793"), 2)
            Coord('3.14')
        """
        new_coordval = Coord(round(self.value, n))
        new_coordval._prefix = self._prefix
        return new_coordval
