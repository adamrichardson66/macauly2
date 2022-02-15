
restart



R= QQ[x,y,z,a,b,c]/ideal"xb-ac,yc-bz,xc-az"

--Problem 6(a)
I=ideal(x,a)
N=R^1/ideal"x,y,z,a,b,c"
M=coker matrix{{y, b, c} ,{-x, -c, -z}}
--Ask Mac if Homs are trivial
Hom(M,N)==0
Hom(N,M)==0


--Problem 6(b)
I=ideal(x,a)
--Make I a module
module I
i=inducedMap(R^1,module I)
i**M
ker (i**M) == 0



--problem 6(c)
loadPackage "Complexes"

--counterexample ideal
I=ideal(x,a,b)
module I
i=inducedMap(R^1,module I)

--setup ses via complex
d0=map(module I,R^0,0)
d2=inducedMap(R^1/I,R^1)
d3=map(R^0,R^1/I,0)

C=complex({d3,d2,i,d0})


D=Hom(C,R^1)

HH D==0

exit
