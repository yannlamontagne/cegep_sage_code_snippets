
# This file was *autogenerated* from the file closest_point_on_a_plane_and_shortest_distance_to_a_point.sage
from sage.all_cmdline import *   # import sage library

_sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_4 = Integer(4)# Finding closest point on a plane and shortest distance to a point.
# by Yann Lamontagne

# Initialize variables
t=var('t');

# define the normal vector n=(a,b,c) and the constant term of plane. i.e. ax+by+cz=d
n=vector((_sage_const_1 , _sage_const_2 , _sage_const_3 ));
d=_sage_const_4 ;

# define the point P=(x0,y0,z0)
P=vector((_sage_const_1 , _sage_const_1 , _sage_const_1 ));

# define the line which passes through P and is orthogonal to the plane
L = P+t*n;

# solve for the intersection of the line and plane
eqn1 = n.dot_product(L)==d;
print(eqn1)
soln = solve([eqn1],t,solution_dict=True);
print(soln)
# Closest point on the plane to the point P
C=L(t=soln[_sage_const_0 ][t])

print("Closest point on the plane: ")
print(C)
print("Shortest distance from the point to the plane:")
print((C-P).norm())

