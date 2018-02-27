from numbers import Real
def _isint(x):
 try:
  a,b=float(x),int(x)
 except ValueError:
  return False
 else:
  return a==b
def _tonum(x):
 if _isint(x):
  return int(x)
 else:
  return float(x)
def _tonum_strip_prefix(x):
 if x[0].isdigit():
  return _tonum(x)
 else:
  return _tonum(x[1:])
class Coord:
 def _set_value(self,val=0):
  if isinstance(val,Coord):
   self._value=val.value
   self._prefix=val._prefix
   return
  if isinstance(val,str):
   if val[0]in "~^":
    if len(val)==1:
     self._value=0
    else:
     self._value=_tonum(val[1:])
    self._prefix=val[0]
   else:
    self._value=_tonum(val)
    self._prefix=""
   return
  if isinstance(val,Real):
   self._value=val
   self._prefix=""
   return
  raise TypeError("'Coord' can only be initialized to 'int', 'float', 'long', any subclass of numbers.Real, or 'str'")
 def __init__(self,value=0):
  self._set_value(value)
 @property
 def value(self):
  return self._value
 @value.setter
 def value(self,val):
  self._set_value(val)
 def copy(self):
  copy_coord=Coord(self.value)
  copy_coord._prefix=self._prefix
  return copy_coord
 def __str__(self):
  if self.value==0 and not self.is_global():
   return self._prefix
  return self._prefix+str(self.value)
 def __repr__(self):
  return "Coord('{}')".format(str(self))
 def set_int(self):
  self.value=int(value)
 def set_float(self):
  self.value=float(value)
 def set_global(self):
  self._prefix=""
 def is_global(self):
  return self._prefix==""
 def set_relative(self):
  self._prefix="~"
 def is_relative(self):
  return self._prefix=="~"
 def set_local(self):
  self._prefix="^"
 def is_local(self):
  return self._prefix=="^"
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
 def __ge__(self,other):
  if isinstance(other,Coord):
   return self.value>=other.value
  elif isinstance(other,Real):
   return self.value>=other
  else:
   return NotImplemented
 def __lt__(self,other):
  if isinstance(other,Coord):
   return self.value<other.value
  elif isinstance(other,Real):
   return self.value<other
  else:
   return NotImplemented
 def __ne__(self,other):
  if isinstance(other,Coord):
   return self.value!=other.value
  elif isinstance(other,Real):
   return self.value!=other
  else:
   return NotImplemented
 def __le__(self,other):
  if isinstance(other,Coord):
   return self.value<=other.value
  elif isinstance(other,Real):
   return self.value<=other
  else:
   return NotImplemented
 def __gt__(self,other):
  if isinstance(other,Coord):
   return self.value>other.value
  elif isinstance(other,Real):
   return self.value>other
  else:
   return NotImplemented
 def __eq__(self,other):
  if isinstance(other,Coord):
   return self.value==other.value
  elif isinstance(other,Real):
   return self.value==other
  else:
   return NotImplemented
 def equals(val):
  coord=Coord(val)
  return coord._prefix==self._prefix and coord.value==self.value
 """In all numeric type operations, the prefix of the result is inherited from the left of the operator.
    Examples:
        >>> Coord("~15") + Coord("^5")
        Coord('~20')
        >>> Coord("^15") + Coord("~5")
        Coord('^20')
        >>> 15 / Coord("^5")
        Coord('3')
    """ 
 def __mod__(self,other):
  if isinstance(other,Coord):
   result=self.value%other.value
  elif isinstance(other,Real):
   result=self.value%other
  elif isinstance(other,str):
   result=self.value%_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rmod__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other%self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)%self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __imod__(self,other):
  if isinstance(other,Coord):
   self._value%=other.value
  elif isinstance(other,Real):
   self._value%=other
  elif isinstance(other,str):
   self._value%=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __add__(self,other):
  if isinstance(other,Coord):
   result=self.value+other.value
  elif isinstance(other,Real):
   result=self.value+other
  elif isinstance(other,str):
   result=self.value+_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __radd__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other+self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)+self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __iadd__(self,other):
  if isinstance(other,Coord):
   self._value+=other.value
  elif isinstance(other,Real):
   self._value+=other
  elif isinstance(other,str):
   self._value+=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __or__(self,other):
  if isinstance(other,Coord):
   result=self.value|other.value
  elif isinstance(other,Real):
   result=self.value|other
  elif isinstance(other,str):
   result=self.value|_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __ror__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other|self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)|self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __ior__(self,other):
  if isinstance(other,Coord):
   self._value|=other.value
  elif isinstance(other,Real):
   self._value|=other
  elif isinstance(other,str):
   self._value|=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __mul__(self,other):
  if isinstance(other,Coord):
   result=self.value*other.value
  elif isinstance(other,Real):
   result=self.value*other
  elif isinstance(other,str):
   result=self.value*_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rmul__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other*self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)*self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __imul__(self,other):
  if isinstance(other,Coord):
   self._value*=other.value
  elif isinstance(other,Real):
   self._value*=other
  elif isinstance(other,str):
   self._value*=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __and__(self,other):
  if isinstance(other,Coord):
   result=self.value&other.value
  elif isinstance(other,Real):
   result=self.value&other
  elif isinstance(other,str):
   result=self.value&_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rand__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other&self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)&self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __iand__(self,other):
  if isinstance(other,Coord):
   self._value&=other.value
  elif isinstance(other,Real):
   self._value&=other
  elif isinstance(other,str):
   self._value&=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __sub__(self,other):
  if isinstance(other,Coord):
   result=self.value-other.value
  elif isinstance(other,Real):
   result=self.value-other
  elif isinstance(other,str):
   result=self.value-_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rsub__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other-self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)-self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __isub__(self,other):
  if isinstance(other,Coord):
   self._value-=other.value
  elif isinstance(other,Real):
   self._value-=other
  elif isinstance(other,str):
   self._value-=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __floordiv__(self,other):
  if isinstance(other,Coord):
   result=self.value//other.value
  elif isinstance(other,Real):
   result=self.value//other
  elif isinstance(other,str):
   result=self.value//_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rfloordiv__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other//self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)//self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __ifloordiv__(self,other):
  if isinstance(other,Coord):
   self._value//=other.value
  elif isinstance(other,Real):
   self._value//=other
  elif isinstance(other,str):
   self._value//=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __xor__(self,other):
  if isinstance(other,Coord):
   result=self.value^other.value
  elif isinstance(other,Real):
   result=self.value^other
  elif isinstance(other,str):
   result=self.value^_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rxor__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other^self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)^self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __ixor__(self,other):
  if isinstance(other,Coord):
   self._value^=other.value
  elif isinstance(other,Real):
   self._value^=other
  elif isinstance(other,str):
   self._value^=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __rshift__(self,other):
  if isinstance(other,Coord):
   result=self.value>>other.value
  elif isinstance(other,Real):
   result=self.value>>other
  elif isinstance(other,str):
   result=self.value>>_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rrshift__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other>>self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)>>self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __irshift__(self,other):
  if isinstance(other,Coord):
   self._value>>=other.value
  elif isinstance(other,Real):
   self._value>>=other
  elif isinstance(other,str):
   self._value>>=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __pow__(self,other):
  if isinstance(other,Coord):
   result=self.value**other.value
  elif isinstance(other,Real):
   result=self.value**other
  elif isinstance(other,str):
   result=self.value**_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rpow__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other**self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)**self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __ipow__(self,other):
  if isinstance(other,Coord):
   self._value**=other.value
  elif isinstance(other,Real):
   self._value**=other
  elif isinstance(other,str):
   self._value**=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __lshift__(self,other):
  if isinstance(other,Coord):
   result=self.value<<other.value
  elif isinstance(other,Real):
   result=self.value<<other
  elif isinstance(other,str):
   result=self.value<<_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rlshift__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other<<self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)<<self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __ilshift__(self,other):
  if isinstance(other,Coord):
   self._value<<=other.value
  elif isinstance(other,Real):
   self._value<<=other
  elif isinstance(other,str):
   self._value<<=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __truediv__(self,other):
  if isinstance(other,Coord):
   result=self.value/other.value
  elif isinstance(other,Real):
   result=self.value/other
  elif isinstance(other,str):
   result=self.value/_tonum_strip_prefix(other)
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rtruediv__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=other/self.value
  elif isinstance(other,str):
   result=_tonum_strip_prefix(other)/self.value
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __itruediv__(self,other):
  if isinstance(other,Coord):
   self._value/=other.value
  elif isinstance(other,Real):
   self._value/=other
  elif isinstance(other,str):
   self._value/=_tonum_strip_prefix(other)
  else:
   return NotImplemented
  return self
 def __divmod__(self,other):
  if isinstance(other,Coord):
   result=divmod(self.value,other.value)
  elif isinstance(other,Real):
   result=divmod(self.value,other)
  elif isinstance(other,str):
   result=divmod(self.value,_tonum_strip_prefix(other))
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __rdivmod__(self,other):
  _prefix=""
  if isinstance(other,Real):
   result=divmod(other,self.value)
  elif isinstance(other,str):
   result=divmod(_tonum_strip_prefix(other),self.value)
   if not other[0].isdigit():
    _prefix=other[0]
  else:
   return NotImplemented
  new_coordval=Coord(result)
  new_coordval._prefix=_prefix
  return new_coordval
 def __invert__(self):
  new_coordval=Coord(~self.value)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __neg__(self):
  new_coordval=Coord(-self.value)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __pos__(self):
  new_coordval=Coord(+self.value)
  new_coordval._prefix=self._prefix
  return new_coordval
 def __abs__(self):
  new_coordval=Coord(abs(self.value))
  new_coordval._prefix=self._prefix
  return new_coordval
 def __float__(self):
  return float(self.value)
 def __int__(self):
  return int(self.value)
 def __round__(self,n=0):
  new_coordval=Coord(round(self.value,n))
  new_coordval._prefix=self._prefix
  return new_coordval
# Created by pyminifier (https://github.com/liftoff/pyminifier)

