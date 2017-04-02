# Finding closest point on a plane and shortest distance to a point.
# by Yann Lamontagne

# Initialize variables
t=var('t');
s=var('s');

# define line 1, point and direction vector
P1=vector((1, 2, 3));
d1=vector((-2, -1, 3))

L1=P1+t*d1;

# define line 2, point and direction vector
P2=vector((4, -1, 2));
d2=vector((3, 1, 1))

L2=P2+s*d2;

# solve for what value of t and s the vector L1L2 is othogonal to d1 and d2
eqn1 = (L2-L1).dot_product(d2)==0;
eqn2 = (L2-L1).dot_product(d1)==0;

soln=solve([eqn1, eqn2],t,s,solution_dict=True);

# Closest point on line 1 and line 2
C1 = L1(t=soln[0][t]) 
C2 = L2(s=soln[0][s])  

print("Closest point on L1:")
print(C1)
print("Closest point on L2:") 
print(C2)
print("Shortest distance from L1 to L2: ")
print((C2-C1).norm())
