--Problem 1
loadPackage "Complexes"

R=QQ[x,y,z]/ideal"xx,xy"
d0 = map(R^1,R^3,matrix{{x,y,z}})
d1 = map(source d0, R^3, matrix{{-y,-z,0},{x,0,-z},{0,x,y}})
d2 = map(source d1,R^1, matrix{{z},{-y},{x}})
C = complex({d0,d1,d2})

HH_0(C)
HH_1(C)
HH_1(C)
HH_2(C)
HH_3(C)


isExact (C,2,2)



restart
exit

