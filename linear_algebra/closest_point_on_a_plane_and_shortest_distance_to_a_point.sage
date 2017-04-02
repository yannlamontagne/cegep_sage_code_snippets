# Finding closest point on a plane and shortest distance to a point.
# by Yann Lamontagne

# Initialize variables
t=var('t');

# define the normal vector n=(a,b,c) and the constant term of plane. i.e. ax+by+cz=d
n=vector((1, 2, 3));
d=4;

# define the point P=(x0,y0,z0)
P=vector((1, 1, 1));

# define the line which passes through P and is orthogonal to the plane
L = P+t*n;

# solve for the intersection of the line and plane
eqn1 = n.dot_product(L)==d;

soln = solve([eqn1],t,solution_dict=True);

# Closest point on the plane to the point P
C=L(t=soln[0][t])

print("Closest point on the plane: ")
print(C)
print("Shortest distance from the point to the plane:")
print((C-P).norm())
