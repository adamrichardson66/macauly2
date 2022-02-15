
+ M2 --no-readline --print-width 79
Macaulay2, version 1.16.99
with packages: ConwayPolynomials, Elimination, IntegralClosure, InverseSystems,
               LLLBases, MinimalPrimes, PrimaryDecomposition, ReesAlgebra,
               Saturation, TangentCone

i1 : kk=ZZ/79

o1 = kk

o1 : QuotientRing

i2 : R=kk[a,b,c]

o2 = R

o2 : PolynomialRing

i3 : I=ideal(a^2-b^2,c^2-b^2)

             2    2     2    2
o3 = ideal (a  - b , - b  + c )

o3 : Ideal of R

i4 : M=R^1/I

o4 = cokernel | a2-b2 -b2+c2 |

                            1
o4 : R-module, quotient of R

i5 : S=R/I

o5 = S

o5 : QuotientRing

i6 : 