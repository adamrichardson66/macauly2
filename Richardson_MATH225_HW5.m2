--Problem 7
S=ZZ/101[a,b,c,d]
I=ideal(a*b-c*d)
R=S/I
codim I
isPrime I


restart
exit



--Problem 8(a)
R=QQ[a,b,c,d]
J=ideal(a*b,b*c,c*d,a*d)
codim J

--Problem 8(b)
k=QQ
R=k[x,y,z]
S=k[a,b,c, Degrees=>{{3,3,0},{3,2,0},{2,0,3}}]
f=map(R,S,{x^3*y^3,x^3*y^2*z,x^2*z^3})
I=ker f
T=S/I
dim T

--Problem 8(c)
R=QQ[x,y,z]
J=ideal(x^8*y-z^2,y^7-x^17*z,x^25-y^6*z)
codim J

--Problem 8(d)
R=QQ[x,y,z]
I=ideal(x^3,x^2*y,x^2*z,x*y*z)
S=R/I
dim S
codim I

--Problem 8(e)
S=QQ[x,y,z]
J=ideal{x*y,y*z}
R= S/J
I=ideal{x*z}
L=I/I^2
dim L

