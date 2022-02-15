
restart
loadPackage "Complexes"


R=QQ[x,y,z,a,b,c]/ideal"xb-ac,yc-bz,xc-az"
I=ideal(x,a)
M=coker matrix{{y, b, c} ,{-x, -c, -z}}

--Problem 7(a)
D=res(R^1/I)
E=res(M)

--Problem 7(b)
--Test for exactness
Hom(D,M)==0
HH_1 D==0
HH_2 D==0
HH_3 D==0
HH_4 D==0
HH_5 D==0
HH_6 D==0
--(I don't know how to run an iterated eval in m2)

--Problem 7(c)
f=map(QQ[t],QQ[x,y,z, Degrees=>{13,42,73}],{t^13,t^42,t^73})
P= ker f
F=res(P)
F.dd

exit

