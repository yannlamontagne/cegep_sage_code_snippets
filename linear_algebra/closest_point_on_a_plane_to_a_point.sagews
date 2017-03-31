# Finding closest point on a plane to a point.

# Initialize variables
t=var('t');

# define the normal vector n=(a,b,c) and the constant term of plane. i.e. ax+by+cz=d
a=1; b=2; c=3;
d=4;

# define the point P=(x0,y0,z0)
x0=1; y0=1; z0=1;

x(t)=x0+t*a
y(t)=y0+t*b
z(t)=z0+t*c

eq1 = a*(x(t))+b*(y(t))+c*(z(t))==d

t=solve([eq1],t)
vector([x(t[0].rhs()), y(t[0].rhs()), z(t[0].rhs())])
