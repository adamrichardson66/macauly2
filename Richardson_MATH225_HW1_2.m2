restart
Macaulay2, version 1.16.99
with packages: ConwayPolynomials, Elimination, IntegralClosure, InverseSystems,
               LLLBases, MinimalPrimes, PrimaryDecomposition, ReesAlgebra,
               Saturation, TangentCone

i1 : T=QQ[x,y,u,v]

o1 = T

o1 : PolynomialRing

i2 : S=QQ[xy,xu,yv,uv]

o2 = S

o2 : PolynomialRing

i3 : U=QQ[a,b,c,d]

o3 = U

o3 : PolynomialRing

i6 : f=map(T,U,{x*y,x*u,y*v,u*v})

o6 = map(T,U,{x*y, x*u, y*v, u*v})

o6 : RingMap T <--- U

i7 : ker f

o7 = ideal(b*c - a*d)

o7 : Ideal of U

i8 : I=ker f

o8 = ideal(b*c - a*d)

o8 : Ideal of U

i9 : M=U/I

o9 = M

o9 : QuotientRing

i10 : presentation M

o10 = | bc-ad |

              1       1
o10 : Matrix U  <--- U

i11 : restart
Macaulay2, version 1.16.99
with packages: ConwayPolynomials, Elimination, IntegralClosure, InverseSystems,
               LLLBases, MinimalPrimes, PrimaryDecomposition, ReesAlgebra,
               Saturation, TangentCone

i1 : kk=ZZ/101

o1 = kk

o1 : QuotientRing

i2 : R=kk[u,v,x,y,z]

o2 = R

o2 : PolynomialRing

i4 : I=ideal(x^3+y^3+z^3)

            3    3    3
o4 = ideal(x  + y  + z )

o4 : Ideal of R

i5 : S=R/I

o5 = S

o5 : QuotientRing

i7 : T=kk[ux,uy,uz,vx,vy,vz]

o7 = T

o7 : PolynomialRing

i8 : U=kk[a,b,c,d,e,g]

o8 = U

o8 : PolynomialRing

i9 : f=map(S,U,{u*x,u*y,u*z,v*x,v*y,v*z})

o9 = map(S,U,{u*x, u*y, u*z, v*x, v*y, v*z})

o9 : RingMap S <--- U

i10 : J=ker f

                                               3    3    3     2      2      2 
o10 = ideal (c*e - b*g, c*d - a*g, b*d - a*e, d  + e  + g , a*d  + b*e  + c*g ,
      -------------------------------------------------------------------------
       2     2     2    3    3    3
      a d + b e + c g, a  + b  + c )

o10 : Ideal of U

i11 : M=U/J

o11 = M

o11 : QuotientRing

i12 : presentation M

o12 = | ce-bg cd-ag bd-ae d3+e3+g3 ad2+be2+cg2 a2d+b2e+c2g a3+b3+c3 |

              1       7
o12 : Matrix U  <--- U

i13 : 