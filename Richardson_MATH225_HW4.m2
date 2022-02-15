--Problem 6(a)
S=QQ[x,y,z]
J=ideal{x*y,y*z}
R= S/J
I=ideal{x*z}
L=I/I^2
annihilator L
A=ideal{y,x*z}
minimalPrimes A


--Problem 6(b)
R=QQ[a,b,c,d]
I=ideal(a*b,b*c,c*d,a*d)
minimalPrimes I


--Problem 6(c)
S=QQ[ux,uy,uz,vx,vy,vz]
L=ideal(0_S)
minimalPrimes L


--Problem 6(d)
k=QQ
f=map(k[t],k[x,y,z, Degrees=>{13,42,73}],{t^13,t^42,t^73})
I=ker f
numgens I
mingens I


--Problem 7
R=QQ[x,y,z]
I=ideal(x^3,x^2*y,x^2*z,x*y*z)
primaryDecomposition I


restart
exit
