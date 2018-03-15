import math
from numbers import Real
from abc import ABC,abstractmethod
from lib.coord import Coord
class Vector(ABC):
 @abstractmethod
 def copy(self):
  pass
 @abstractmethod
 def dot(self,vec):
  pass
 def norm(self):
  return math.sqrt(self.dot(self))
 def normalized(self):
  return self/self.norm()
 @abstractmethod
 def __len__(self):
  pass
 @abstractmethod
 def __iter__(self):
  pass
 @abstractmethod
 def __getitem__(self,key):
  pass
 @abstractmethod
 def __setitem__(self,key,value):
  pass
 @abstractmethod
 def __repr__(self):
  pass
 @abstractmethod
 def __str__(self):
  pass
 @abstractmethod
 def simple_str(self):
  pass
 """Arthimetic comparisons
    """ 
 @abstractmethod
 def __eq__(self,other):
  pass
 @abstractmethod
 def __ne__(self,other):
  pass
 """Matrix multiplication
    """ 
 @abstractmethod
 def __matmul__(self,other):
  pass
 """Arithmetic operations are performed component-wise
    """ 
 @abstractmethod
 def __or__(self,other):
  pass
 def __ror__(self,other):
  pass
 def __ior__(self,other):
  pass
 @abstractmethod
 def __mul__(self,other):
  pass
 def __rmul__(self,other):
  pass
 def __imul__(self,other):
  pass
 @abstractmethod
 def __pow__(self,other):
  pass
 def __rpow__(self,other):
  pass
 def __ipow__(self,other):
  pass
 @abstractmethod
 def __xor__(self,other):
  pass
 def __rxor__(self,other):
  pass
 def __ixor__(self,other):
  pass
 @abstractmethod
 def __rshift__(self,other):
  pass
 def __rrshift__(self,other):
  pass
 def __irshift__(self,other):
  pass
 @abstractmethod
 def __lshift__(self,other):
  pass
 def __rlshift__(self,other):
  pass
 def __ilshift__(self,other):
  pass
 @abstractmethod
 def __truediv__(self,other):
  pass
 def __rtruediv__(self,other):
  pass
 def __itruediv__(self,other):
  pass
 @abstractmethod
 def __sub__(self,other):
  pass
 def __rsub__(self,other):
  pass
 def __isub__(self,other):
  pass
 @abstractmethod
 def __and__(self,other):
  pass
 def __rand__(self,other):
  pass
 def __iand__(self,other):
  pass
 @abstractmethod
 def __mod__(self,other):
  pass
 def __rmod__(self,other):
  pass
 def __imod__(self,other):
  pass
 @abstractmethod
 def __add__(self,other):
  pass
 def __radd__(self,other):
  pass
 def __iadd__(self,other):
  pass
 @abstractmethod
 def __floordiv__(self,other):
  pass
 def __rfloordiv__(self,other):
  pass
 def __ifloordiv__(self,other):
  pass
 @abstractmethod
 def __divmod__(self,other):
  return
 @abstractmethod
 def __rdivmod__(self,other):
  return
 @abstractmethod
 def __neg__(self):
  pass
 @abstractmethod
 def __invert__(self):
  pass
 @abstractmethod
 def __pos__(self):
  pass
 @abstractmethod
 def __abs__(self):
  pass
 @abstractmethod
 def __round__(self,n=0):
  pass
class Vector3(Vector):
 @property
 def x(self):
  return self._x
 @x.setter
 def x(self,value):
  self._x=Coord(value)
 @property
 def y(self):
  return self._y
 @y.setter
 def y(self,value):
  self._y=Coord(value)
 @property
 def z(self):
  return self._z
 @z.setter
 def z(self,value):
  self._z=Coord(value)
 def __init__(self,x=0,y=None,z=None,by_ref=False):
  if y is None and z is None:
   if isinstance(x,Coord):
    self.x=x.copy()
    self.y=x.copy()
    self.z=x.copy()
   else:
    self.x=Coord(x)
    self.y=Coord(x)
    self.z=Coord(x)
   return
  if y is None:
   y=0
  if z is None:
   z=0
  if not by_ref:
   self.x=x
   self.y=y
   self.z=z
   return
  if isinstance(x,Coord):
   self._x=x
  else:
   self.x=x
  if isinstance(y,Coord):
   self._y=y
  else:
   self.y=y
  if isinstance(z,Coord):
   self._z=z
  else:
   self.z=z
 def cross(self,vec3):
  if not isinstance(vector3,Vector3):
   raise TypeError("A cross product is only applicable to a Vector3")
  x=self.y*vector3.z-self.z*vector3.y
  y=self.z*vector3.x-self.x*vector3.z
  z=self.x*vector3.y-self.y*vector3.x
  return Vector3(x,y,z)
 def dot(self,vec):
  if not isinstance(vec,Vector3):
   raise TypeError("Vector sizes must match")
  return self.x*vec.x+self.y*vec.y+self.z*vec.z
 def copy(self):
  return Vector3(self.x.copy(),self.y.copy(),self.z.copy())
 def __len__(self):
  return 3
 def __iter__(self):
  yield self.x
  yield self.y
  yield self.z
 def __getitem__(self,key):
  keys="xyz"
  if isinstance(key,int):
   key=keys[key]
  if key=="x":
   return self.x
  elif key=="y":
   return self.y
  elif key=="z":
   return self.z
  else:
   raise IndexError("Vector3 does not contain {}".format(key))
 def __setitem__(self,key,value):
  keys="xyz"
  if isinstance(key,int):
   key=keys[key]
  if key=="x":
   self.x=value
  elif key=="y":
   self.y=value
  elif key=="z":
   self.z=value
  else:
   raise IndexError("Vector3 does not contain {}".format(key))
 def __repr__(self):
  return "Vector3('{}','{}','{}')".format(str(self.x),str(self.y),str(self.z))
 def __str__(self):
  return "({},{},{})".format(str(self.x),str(self.y),str(self.z))
 def simple_str(self):
  return "{} {} {}".format(str(self.x),str(self.y),str(self.z))
 @property
 def xxx(self):
  return Vector3(self.x,self.x,self.x)
 @xxx.setter
 def xxx(self,value):
  raise RuntimeError("Elements in this vector 'xxx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xxy(self):
  return Vector3(self.x,self.x,self.y)
 @xxy.setter
 def xxy(self,value):
  raise RuntimeError("Elements in this vector 'xxy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xxz(self):
  return Vector3(self.x,self.x,self.z)
 @xxz.setter
 def xxz(self,value):
  raise RuntimeError("Elements in this vector 'xxz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xyx(self):
  return Vector3(self.x,self.y,self.x)
 @xyx.setter
 def xyx(self,value):
  raise RuntimeError("Elements in this vector 'xyx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xyy(self):
  return Vector3(self.x,self.y,self.y)
 @xyy.setter
 def xyy(self,value):
  raise RuntimeError("Elements in this vector 'xyy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xyz(self):
  return Vector3(self.x,self.y,self.z)
 @xyz.setter
 def xyz(self,value):
  if isinstance(value,Vector3):
   self.x=value.x
   self.y=value.y
   self.z=value.z
  else:
   self.x=value
   self.y=value
   self.z=value
 @property
 def xzx(self):
  return Vector3(self.x,self.z,self.x)
 @xzx.setter
 def xzx(self,value):
  raise RuntimeError("Elements in this vector 'xzx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xzy(self):
  return Vector3(self.x,self.z,self.y)
 @xzy.setter
 def xzy(self,value):
  if isinstance(value,Vector3):
   self.x=value.x
   self.z=value.y
   self.y=value.z
  else:
   self.x=value
   self.z=value
   self.y=value
 @property
 def xzz(self):
  return Vector3(self.x,self.z,self.z)
 @xzz.setter
 def xzz(self,value):
  raise RuntimeError("Elements in this vector 'xzz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yxx(self):
  return Vector3(self.y,self.x,self.x)
 @yxx.setter
 def yxx(self,value):
  raise RuntimeError("Elements in this vector 'yxx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yxy(self):
  return Vector3(self.y,self.x,self.y)
 @yxy.setter
 def yxy(self,value):
  raise RuntimeError("Elements in this vector 'yxy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yxz(self):
  return Vector3(self.y,self.x,self.z)
 @yxz.setter
 def yxz(self,value):
  if isinstance(value,Vector3):
   self.y=value.x
   self.x=value.y
   self.z=value.z
  else:
   self.y=value
   self.x=value
   self.z=value
 @property
 def yyx(self):
  return Vector3(self.y,self.y,self.x)
 @yyx.setter
 def yyx(self,value):
  raise RuntimeError("Elements in this vector 'yyx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yyy(self):
  return Vector3(self.y,self.y,self.y)
 @yyy.setter
 def yyy(self,value):
  raise RuntimeError("Elements in this vector 'yyy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yyz(self):
  return Vector3(self.y,self.y,self.z)
 @yyz.setter
 def yyz(self,value):
  raise RuntimeError("Elements in this vector 'yyz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yzx(self):
  return Vector3(self.y,self.z,self.x)
 @yzx.setter
 def yzx(self,value):
  if isinstance(value,Vector3):
   self.y=value.x
   self.z=value.y
   self.x=value.z
  else:
   self.y=value
   self.z=value
   self.x=value
 @property
 def yzy(self):
  return Vector3(self.y,self.z,self.y)
 @yzy.setter
 def yzy(self,value):
  raise RuntimeError("Elements in this vector 'yzy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yzz(self):
  return Vector3(self.y,self.z,self.z)
 @yzz.setter
 def yzz(self,value):
  raise RuntimeError("Elements in this vector 'yzz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zxx(self):
  return Vector3(self.z,self.x,self.x)
 @zxx.setter
 def zxx(self,value):
  raise RuntimeError("Elements in this vector 'zxx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zxy(self):
  return Vector3(self.z,self.x,self.y)
 @zxy.setter
 def zxy(self,value):
  if isinstance(value,Vector3):
   self.z=value.x
   self.x=value.y
   self.y=value.z
  else:
   self.z=value
   self.x=value
   self.y=value
 @property
 def zxz(self):
  return Vector3(self.z,self.x,self.z)
 @zxz.setter
 def zxz(self,value):
  raise RuntimeError("Elements in this vector 'zxz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zyx(self):
  return Vector3(self.z,self.y,self.x)
 @zyx.setter
 def zyx(self,value):
  if isinstance(value,Vector3):
   self.z=value.x
   self.y=value.y
   self.x=value.z
  else:
   self.z=value
   self.y=value
   self.x=value
 @property
 def zyy(self):
  return Vector3(self.z,self.y,self.y)
 @zyy.setter
 def zyy(self,value):
  raise RuntimeError("Elements in this vector 'zyy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zyz(self):
  return Vector3(self.z,self.y,self.z)
 @zyz.setter
 def zyz(self,value):
  raise RuntimeError("Elements in this vector 'zyz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zzx(self):
  return Vector3(self.z,self.z,self.x)
 @zzx.setter
 def zzx(self,value):
  raise RuntimeError("Elements in this vector 'zzx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zzy(self):
  return Vector3(self.z,self.z,self.y)
 @zzy.setter
 def zzy(self,value):
  raise RuntimeError("Elements in this vector 'zzy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def zzz(self):
  return Vector3(self.z,self.z,self.z)
 @zzz.setter
 def zzz(self,value):
  raise RuntimeError("Elements in this vector 'zzz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xx(self):
  return Vector2(self.x,self.x)
 @xx.setter
 def xx(self,value):
  raise RuntimeError("Elements in this vector 'xx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xy(self):
  return Vector2(self.x,self.y)
 @xy.setter
 def xy(self,value):
  if isinstance(value,Vector2):
   self.x=value.x
   self.y=value.y
  else:
   self.x=value
   self.y=value
 @property
 def xz(self):
  return Vector2(self.x,self.z)
 @xz.setter
 def xz(self,value):
  if isinstance(value,Vector2):
   self.x=value.x
   self.z=value.y
  else:
   self.x=value
   self.z=value
 @property
 def yx(self):
  return Vector2(self.y,self.x)
 @yx.setter
 def yx(self,value):
  if isinstance(value,Vector2):
   self.y=value.x
   self.x=value.y
  else:
   self.y=value
   self.x=value
 @property
 def yy(self):
  return Vector2(self.y,self.y)
 @yy.setter
 def yy(self,value):
  raise RuntimeError("Elements in this vector 'yy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def yz(self):
  return Vector2(self.y,self.z)
 @yz.setter
 def yz(self,value):
  if isinstance(value,Vector2):
   self.y=value.x
   self.z=value.y
  else:
   self.y=value
   self.z=value
 @property
 def zx(self):
  return Vector2(self.z,self.x)
 @zx.setter
 def zx(self,value):
  if isinstance(value,Vector2):
   self.z=value.x
   self.x=value.y
  else:
   self.z=value
   self.x=value
 @property
 def zy(self):
  return Vector2(self.z,self.y)
 @zy.setter
 def zy(self,value):
  if isinstance(value,Vector2):
   self.z=value.x
   self.y=value.y
  else:
   self.z=value
   self.y=value
 @property
 def zz(self):
  return Vector2(self.z,self.z)
 @zz.setter
 def zz(self,value):
  raise RuntimeError("Elements in this vector 'zz' refer to the same object, which makes assignment undefined")
  return NotImplemented
 def __eq__(self,other):
  if isinstance(other,Vector3):
   return self.x==other.x and self.y==other.y and self.z==other.z
  else:
   return NotImplemented
 def __ne__(self,other):
  if isinstance(other,Vector3):
   return self.x!=other.x or self.y!=other.y or self.z!=other.z
  else:
   return NotImplemented
 def __matmul__(self,other):
  return NotImplemented
 """Arithmetic operations are performed component-wise
    """ 
 def __or__(self,other):
  if isinstance(other,Vector3):
   x=self.x|other.x
   y=self.y|other.y
   z=self.z|other.z
  else:
   x=self.x|other
   y=self.y|other
   z=self.z|other
  return Vector3(x,y,z)
 def __ror__(self,other):
  x=other|self.x
  y=other|self.y
  z=other|self.z
  return Vector3(x,y,z)
 def __ior__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x|=other.x
   self.y|=other.y
   self.z|=other.z
  else:
   self.x|=other
   self.y|=other
   self.z|=other
  return self
 def __mul__(self,other):
  if isinstance(other,Vector3):
   x=self.x*other.x
   y=self.y*other.y
   z=self.z*other.z
  else:
   x=self.x*other
   y=self.y*other
   z=self.z*other
  return Vector3(x,y,z)
 def __rmul__(self,other):
  x=other*self.x
  y=other*self.y
  z=other*self.z
  return Vector3(x,y,z)
 def __imul__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x*=other.x
   self.y*=other.y
   self.z*=other.z
  else:
   self.x*=other
   self.y*=other
   self.z*=other
  return self
 def __pow__(self,other):
  if isinstance(other,Vector3):
   x=self.x**other.x
   y=self.y**other.y
   z=self.z**other.z
  else:
   x=self.x**other
   y=self.y**other
   z=self.z**other
  return Vector3(x,y,z)
 def __rpow__(self,other):
  x=other**self.x
  y=other**self.y
  z=other**self.z
  return Vector3(x,y,z)
 def __ipow__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x**=other.x
   self.y**=other.y
   self.z**=other.z
  else:
   self.x**=other
   self.y**=other
   self.z**=other
  return self
 def __xor__(self,other):
  if isinstance(other,Vector3):
   x=self.x^other.x
   y=self.y^other.y
   z=self.z^other.z
  else:
   x=self.x^other
   y=self.y^other
   z=self.z^other
  return Vector3(x,y,z)
 def __rxor__(self,other):
  x=other^self.x
  y=other^self.y
  z=other^self.z
  return Vector3(x,y,z)
 def __ixor__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x^=other.x
   self.y^=other.y
   self.z^=other.z
  else:
   self.x^=other
   self.y^=other
   self.z^=other
  return self
 def __rshift__(self,other):
  if isinstance(other,Vector3):
   x=self.x>>other.x
   y=self.y>>other.y
   z=self.z>>other.z
  else:
   x=self.x>>other
   y=self.y>>other
   z=self.z>>other
  return Vector3(x,y,z)
 def __rrshift__(self,other):
  x=other>>self.x
  y=other>>self.y
  z=other>>self.z
  return Vector3(x,y,z)
 def __irshift__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x>>=other.x
   self.y>>=other.y
   self.z>>=other.z
  else:
   self.x>>=other
   self.y>>=other
   self.z>>=other
  return self
 def __lshift__(self,other):
  if isinstance(other,Vector3):
   x=self.x<<other.x
   y=self.y<<other.y
   z=self.z<<other.z
  else:
   x=self.x<<other
   y=self.y<<other
   z=self.z<<other
  return Vector3(x,y,z)
 def __rlshift__(self,other):
  x=other<<self.x
  y=other<<self.y
  z=other<<self.z
  return Vector3(x,y,z)
 def __ilshift__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x<<=other.x
   self.y<<=other.y
   self.z<<=other.z
  else:
   self.x<<=other
   self.y<<=other
   self.z<<=other
  return self
 def __truediv__(self,other):
  if isinstance(other,Vector3):
   x=self.x/other.x
   y=self.y/other.y
   z=self.z/other.z
  else:
   x=self.x/other
   y=self.y/other
   z=self.z/other
  return Vector3(x,y,z)
 def __rtruediv__(self,other):
  x=other/self.x
  y=other/self.y
  z=other/self.z
  return Vector3(x,y,z)
 def __itruediv__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x/=other.x
   self.y/=other.y
   self.z/=other.z
  else:
   self.x/=other
   self.y/=other
   self.z/=other
  return self
 def __sub__(self,other):
  if isinstance(other,Vector3):
   x=self.x-other.x
   y=self.y-other.y
   z=self.z-other.z
  else:
   x=self.x-other
   y=self.y-other
   z=self.z-other
  return Vector3(x,y,z)
 def __rsub__(self,other):
  x=other-self.x
  y=other-self.y
  z=other-self.z
  return Vector3(x,y,z)
 def __isub__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x-=other.x
   self.y-=other.y
   self.z-=other.z
  else:
   self.x-=other
   self.y-=other
   self.z-=other
  return self
 def __and__(self,other):
  if isinstance(other,Vector3):
   x=self.x&other.x
   y=self.y&other.y
   z=self.z&other.z
  else:
   x=self.x&other
   y=self.y&other
   z=self.z&other
  return Vector3(x,y,z)
 def __rand__(self,other):
  x=other&self.x
  y=other&self.y
  z=other&self.z
  return Vector3(x,y,z)
 def __iand__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x&=other.x
   self.y&=other.y
   self.z&=other.z
  else:
   self.x&=other
   self.y&=other
   self.z&=other
  return self
 def __mod__(self,other):
  if isinstance(other,Vector3):
   x=self.x%other.x
   y=self.y%other.y
   z=self.z%other.z
  else:
   x=self.x%other
   y=self.y%other
   z=self.z%other
  return Vector3(x,y,z)
 def __rmod__(self,other):
  x=other%self.x
  y=other%self.y
  z=other%self.z
  return Vector3(x,y,z)
 def __imod__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x%=other.x
   self.y%=other.y
   self.z%=other.z
  else:
   self.x%=other
   self.y%=other
   self.z%=other
  return self
 def __add__(self,other):
  if isinstance(other,Vector3):
   x=self.x+other.x
   y=self.y+other.y
   z=self.z+other.z
  else:
   x=self.x+other
   y=self.y+other
   z=self.z+other
  return Vector3(x,y,z)
 def __radd__(self,other):
  x=other+self.x
  y=other+self.y
  z=other+self.z
  return Vector3(x,y,z)
 def __iadd__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x+=other.x
   self.y+=other.y
   self.z+=other.z
  else:
   self.x+=other
   self.y+=other
   self.z+=other
  return self
 def __floordiv__(self,other):
  if isinstance(other,Vector3):
   x=self.x//other.x
   y=self.y//other.y
   z=self.z//other.z
  else:
   x=self.x//other
   y=self.y//other
   z=self.z//other
  return Vector3(x,y,z)
 def __rfloordiv__(self,other):
  x=other//self.x
  y=other//self.y
  z=other//self.z
  return Vector3(x,y,z)
 def __ifloordiv__(self,other):
  if self.x is self.y or self.x is self.z or self.y is self.z:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector3):
   self.x//=other.x
   self.y//=other.y
   self.z//=other.z
  else:
   self.x//=other
   self.y//=other
   self.z//=other
  return self
 def __divmod__(self,other):
  if isinstance(other,Vector3):
   x=divmod(self.x,other.x)
   y=divmod(self.y,other.y)
   z=divmod(self.z,other.z)
  else:
   x=divmod(self.x,other)
   y=divmod(self.y,other)
   z=divmod(self.z,other)
  return Vector3(x,y,z)
 def __rdivmod__(self,other):
  x=divmod(other,self.x)
  y=divmod(other,self.y)
  z=divmod(other,self.z)
  return Vector3(x,y,z)
 def __neg__(self):
  return Vector3(-self.x,-self.y,-self.z)
 def __invert__(self):
  return Vector3(~self.x,~self.y,~self.z)
 def __pos__(self):
  return Vector3(+self.x,+self.y,+self.z)
 def __abs__(self):
  return Vector3(abs(self.x),abs(self.y),abs(self.z))
 def __round__(self,n=0):
  return Vector3(round(self.x,n),round(self.y,n),round(self.z,n))
class Vector2:
 @property
 def x(self):
  return self._x
 @x.setter
 def x(self,value):
  self._x=Coord(value)
 @property
 def y(self):
  return self._y
 @y.setter
 def y(self,value):
  self._y=Coord(value)
 def __init__(self,x=0,y=None,by_ref=False):
  if y is None:
   if isinstance(x,Coord):
    self.x=x.copy()
    self.y=x.copy()
   else:
    self.x=Coord(x)
    self.y=Coord(x)
   return
  if not by_ref:
   self.x=x
   self.y=y
  if isinstance(x,Coord):
   self._x=x
  else:
   self.x=x
  if isinstance(y,Coord):
   self._y=y
  else:
   self.y=y
 def dot(self,vec):
  if not isinstance(vec,Vector2):
   raise TypeError("Vector sizes must match")
  return self.x*vec.x+self.y*vec.y
 def copy(self):
  return Vector2(self.x.copy(),self.y.copy())
 def __len__(self):
  return 2
 def __iter__(self):
  yield self.x
  yield self.y
 def __getitem__(self,key):
  keys="xy"
  if isinstance(key,int):
   key=keys[key]
  if key=="x":
   return self.x
  elif key=="y":
   return self.y
  else:
   raise IndexError("Vector2 does not contain {}".format(key))
 def __setitem__(self,key,value):
  keys="xy"
  if isinstance(key,int):
   key=keys[key]
  if key=="x":
   self.x=value
  elif key=="y":
   self.y=value
  else:
   raise IndexError("Vector2 does not contain {}".format(key))
 def __repr__(self):
  return "Vector2('{}','{}')".format(str(self.x),str(self.y))
 def __str__(self):
  return "({},{})".format(str(self.x),str(self.y))
 def simple_str(self):
  return "{} {}".format(str(self.x),str(self.y))
 @property
 def xxx(self):
  return Vector2(self.x,self.x)
 @property
 def xxy(self):
  return Vector2(self.x,self.x)
 @property
 def xyx(self):
  return Vector2(self.x,self.y)
 @property
 def xyy(self):
  return Vector2(self.x,self.y)
 @property
 def yxx(self):
  return Vector2(self.y,self.x)
 @property
 def yxy(self):
  return Vector2(self.y,self.x)
 @property
 def yyx(self):
  return Vector2(self.y,self.y)
 @property
 def yyy(self):
  return Vector2(self.y,self.y)
 @property
 def xx(self):
  return Vector2(self.x,self.x)
 @xx.setter
 def xxy(self,value):
  raise RuntimeError("Elements in this vector 'xx' refer to the same object, which makes assignment undefined")
  return NotImplemented
 @property
 def xy(self):
  return Vector2(self.x,self.y)
 @xy.setter
 def xy(self,value):
  if isinstance(value,Vector2):
   self.x=value.x
   self.y=value.y
  else:
   self.x=value
   self.y=value
 @property
 def yx(self):
  return Vector2(self.y,self.x)
 @yx.setter
 def yx(self,value):
  if isinstance(value,Vector2):
   self.y=value.x
   self.x=value.y
  else:
   self.y=value
   self.x=value
 @property
 def yy(self):
  return Vector2(self.y,self.y)
 @yy.setter
 def yyy(self,value):
  raise RuntimeError("Elements in this vector 'yy' refer to the same object, which makes assignment undefined")
  return NotImplemented
 def __eq__(self,other):
  if isinstance(other,Vector2):
   return self.x==other.x and self.y==other.y
  else:
   return NotImplemented
 def __ne__(self,other):
  if isinstance(other,Vector2):
   return self.x!=other.x or self.y!=other.y
  else:
   return NotImplemented
 def __matmul__(self,other):
  return NotImplemented
 """Arithmetic operations are performed component-wise
    """ 
 def __or__(self,other):
  if isinstance(other,Vector2):
   x=self.x|other.x
   y=self.y|other.y
  else:
   x=self.x|other
   y=self.y|other
  return Vector2(x,y)
 def __ror__(self,other):
  x=other|self.x
  y=other|self.y
  return Vector2(x,y)
 def __ior__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x|=other.x
   self.y|=other.y
  else:
   self.x|=other
   self.y|=other
  return self
 def __mul__(self,other):
  if isinstance(other,Vector2):
   x=self.x*other.x
   y=self.y*other.y
  else:
   x=self.x*other
   y=self.y*other
  return Vector2(x,y)
 def __rmul__(self,other):
  x=other*self.x
  y=other*self.y
  return Vector2(x,y)
 def __imul__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x*=other.x
   self.y*=other.y
  else:
   self.x*=other
   self.y*=other
  return self
 def __pow__(self,other):
  if isinstance(other,Vector2):
   x=self.x**other.x
   y=self.y**other.y
  else:
   x=self.x**other
   y=self.y**other
  return Vector2(x,y)
 def __rpow__(self,other):
  x=other**self.x
  y=other**self.y
  return Vector2(x,y)
 def __ipow__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x**=other.x
   self.y**=other.y
  else:
   self.x**=other
   self.y**=other
  return self
 def __xor__(self,other):
  if isinstance(other,Vector2):
   x=self.x^other.x
   y=self.y^other.y
  else:
   x=self.x^other
   y=self.y^other
  return Vector2(x,y)
 def __rxor__(self,other):
  x=other^self.x
  y=other^self.y
  return Vector2(x,y)
 def __ixor__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x^=other.x
   self.y^=other.y
  else:
   self.x^=other
   self.y^=other
  return self
 def __rshift__(self,other):
  if isinstance(other,Vector2):
   x=self.x>>other.x
   y=self.y>>other.y
  else:
   x=self.x>>other
   y=self.y>>other
  return Vector2(x,y)
 def __rrshift__(self,other):
  x=other>>self.x
  y=other>>self.y
  return Vector2(x,y)
 def __irshift__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x>>=other.x
   self.y>>=other.y
  else:
   self.x>>=other
   self.y>>=other
  return self
 def __lshift__(self,other):
  if isinstance(other,Vector2):
   x=self.x<<other.x
   y=self.y<<other.y
  else:
   x=self.x<<other
   y=self.y<<other
  return Vector2(x,y)
 def __rlshift__(self,other):
  x=other<<self.x
  y=other<<self.y
  return Vector2(x,y)
 def __ilshift__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x<<=other.x
   self.y<<=other.y
  else:
   self.x<<=other
   self.y<<=other
  return self
 def __truediv__(self,other):
  if isinstance(other,Vector2):
   x=self.x/other.x
   y=self.y/other.y
  else:
   x=self.x/other
   y=self.y/other
  return Vector2(x,y)
 def __rtruediv__(self,other):
  x=other/self.x
  y=other/self.y
  return Vector2(x,y)
 def __itruediv__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x/=other.x
   self.y/=other.y
  else:
   self.x/=other
   self.y/=other
  return self
 def __sub__(self,other):
  if isinstance(other,Vector2):
   x=self.x-other.x
   y=self.y-other.y
  else:
   x=self.x-other
   y=self.y-other
  return Vector2(x,y)
 def __rsub__(self,other):
  x=other-self.x
  y=other-self.y
  return Vector2(x,y)
 def __isub__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x-=other.x
   self.y-=other.y
  else:
   self.x-=other
   self.y-=other
  return self
 def __and__(self,other):
  if isinstance(other,Vector2):
   x=self.x&other.x
   y=self.y&other.y
  else:
   x=self.x&other
   y=self.y&other
  return Vector2(x,y)
 def __rand__(self,other):
  x=other&self.x
  y=other&self.y
  return Vector2(x,y)
 def __iand__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x&=other.x
   self.y&=other.y
  else:
   self.x&=other
   self.y&=other
  return self
 def __mod__(self,other):
  if isinstance(other,Vector2):
   x=self.x%other.x
   y=self.y%other.y
  else:
   x=self.x%other
   y=self.y%other
  return Vector2(x,y)
 def __rmod__(self,other):
  x=other%self.x
  y=other%self.y
  return Vector2(x,y)
 def __imod__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x%=other.x
   self.y%=other.y
  else:
   self.x%=other
   self.y%=other
  return self
 def __add__(self,other):
  if isinstance(other,Vector2):
   x=self.x+other.x
   y=self.y+other.y
  else:
   x=self.x+other
   y=self.y+other
  return Vector2(x,y)
 def __radd__(self,other):
  x=other+self.x
  y=other+self.y
  return Vector2(x,y)
 def __iadd__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x+=other.x
   self.y+=other.y
  else:
   self.x+=other
   self.y+=other
  return self
 def __floordiv__(self,other):
  if isinstance(other,Vector2):
   x=self.x//other.x
   y=self.y//other.y
  else:
   x=self.x//other
   y=self.y//other
  return Vector2(x,y)
 def __rfloordiv__(self,other):
  x=other//self.x
  y=other//self.y
  return Vector2(x,y)
 def __ifloordiv__(self,other):
  if self.x is self.y:
   raise RuntimeError("Elements in this vector refer to the same object, which makes assignment undefined")
   return NotImplemented
  if isinstance(other,Vector2):
   self.x//=other.x
   self.y//=other.y
  else:
   self.x//=other
   self.y//=other
  return self
 def __divmod__(self,other):
  if isinstance(other,Vector2):
   x=divmod(self.x,other.x)
   y=divmod(self.y,other.y)
  else:
   x=divmod(self.x,other)
   y=divmod(self.y,other)
  return Vector2(x,y)
 def __rdivmod__(self,other):
  x=divmod(other,self.x)
  y=divmod(other,self.y)
  return Vector2(x,y)
 def __neg__(self):
  return Vector2(-self.x,-self.y)
 def __invert__(self):
  return Vector2(~self.x,~self.y)
 def __pos__(self):
  return Vector2(+self.x,+self.y)
 def __abs__(self):
  return Vector2(abs(self.x),abs(self.y))
 def __round__(self,n=0):
  return Vector2(round(self.x,n),round(self.y,n))
 def rotated(self,angle,point_vec=None,radians=True):
  if not radians:
   angle=math.radians(angle)
  angle=Coord(angle).value
  if point_vec is None:
   point_vec=Vector2()
  assert isinstance(point_vec,Vector2),"point_vec must be a Vector2"
  result=self.copy()
  result-=point_vec
  new_x=result.x*math.cos(angle)+result.y*math.sin(angle)
  new_y=result.x*-math.sin(angle)+result.y*math.cos(angle)
  result.x,result.y=new_x,new_y
  result+=point_vec
  result.x._prefix=self.x._prefix
  result.y._prefix=self.y._prefix
  return result
 def rotate(self,angle,point_vec=None,radians=True):
  rotated_vec=self.rotated(angle,point_vec,radians)
  self.x._set_value(rotated_vec.x)
  self.y._set_value(rotated_vec.y)
# Created by pyminifier (https://github.com/liftoff/pyminifier)

