# Finding closest points and shortest distance between parallel lines.
# by Yann Lamontagne

# Initialize variables
t=var('t');
s=var('s');

# othogonal projection
def proj_on(u, a):
	return (u.dot_product(a)/a.dot_product(a))*a

# define line 1, point and direction vector
P1=vector((0, 1, 0));
d1=vector((1, 2, 0))

L1=P1+t*d1;

# define line 2, point and direction vector
P2=vector((0, -1/2, 0));
d2=vector((1, 2, 0))

L2=P2+s*d2;


# Closest point on line 1 and line 2
C1 = L1(t=0)+proj_on(L2(s=0)-L1(t=0), L1(t=1)-L1(t=0))
C2 = L2(s=0)

print("Point on L1:")
print(C1)
print("is closest to the point on L2:") 
print(C2)
print("Shortest distance between L1 and L2: ")
print((C2-C1).norm())
