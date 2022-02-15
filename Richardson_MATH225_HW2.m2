--Problem 4(a)
k=QQ
f=map(k[s,t],k[a,b,c,Degrees=>{{2,0},{1,1},{0,2}}],{s^2,s*t,t^2})


--Problem 4(b)
k=QQ
f=map(k[t],k[a,b,c, Degrees=>{3,13,42}],{t^3,t^13,t^42})

--Problem 5
k=QQ
R=k[x,y,z]
f=map(k[t],R,{t^3,t^4,t^5})
I=ker f
isPrime(I)

restart
exit
