--Problem 5
loadPackage "Complexes"

R=QQ[x,y,z]/ideal"xx,xy"
d0 = map(R^1,R^3,matrix{{x,y,z}})
d1 = map(source d0, R^3, matrix{{-y,-z,0},{x,0,-z},{0,x,y}})
d2 = map(source d1,R^1, matrix{{z},{-y},{x}})

c0 = map(R^1,R^2,matrix{{y,z}})
c1 = map(source c0,R^1, matrix{{-z},{y}})
c2 = map(source c1, R^0, 0)

D = complex({d0,d1,d2})
C = complex({c0,c1,c2})

f0 = map(target d0,target c0,1)
f1 = map(target d1,target c1,matrix{{0,0},{1_R,0},{0,1_R}})
f2 = map(target d2,target c2, matrix{{0},{0},{1_R}})
f3 = map(source d2,source c2,0)

f= map (D,C, {f0,f1,f2,f3})

HH f
prune HH f

ker f

coker f


restart
exit

