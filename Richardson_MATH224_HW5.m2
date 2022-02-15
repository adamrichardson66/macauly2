--Problem 7(a)
restart
loadPackage "Complexes"


S=QQ[x,y,z, Degrees=>{13,42,73}]
f=map(QQ[t],S,{t^13,t^42,t^73})
P= ker f
T=module S/P
C=res T
pdim T




restart
loadPackage "Complexes"

R=QQ[x,y,z,a,b,c]/ideal"xb-ac,yc-bz,xc-az"
I= ideal vars R
M=coker matrix{{y, b, c} ,{-x, -c, -z}}
D=res M
pdim M
dim R
--upper bound for proj dim

--Checking for depth of M
Ext^0(R^1/I,M) == 0
Ext^1(R^1/I,M) == 0
Ext^2(R^1/I,M) == 0 --
Ext^3(R^1/I,M) == 0

--Checking for depth of R
select(1, toList(0..3),i-> Ext^i(R^1/I,R^1) !=0)

exit
