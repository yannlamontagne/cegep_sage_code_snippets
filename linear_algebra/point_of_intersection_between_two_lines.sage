# Finding point of intersection between two lines
# by Yann Lamontagne

# Initialize variables
t=var('t');
s=var('s');

# define line 1, point and direction vector
P1=vector((-4, 5, -2));
d1=vector((3, -4, 1));

L1=P1+t*d1;

# define line 2, point and direction vector
P2=vector((-3, 3, 5));
d2=vector((4, -5, -2));

L2=P2+s*d2;

# solve for what value of t and s the lines are equal
eqn1 = L1[0]==L2[0];
eqn2 = L1[1]==L2[1];
eqn3 = L1[2]==L2[2];

soln = solve([eqn1, eqn2, eqn3],t,s,solution_dict=True);

# Finding the point of intersection
C = L1(t=soln[0][t]) 

print("Point of intersection of L1 and L2:")
print(C)
