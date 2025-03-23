#import "math_config.typ": *

#show: project.with(
  title: "Domácí úkol č. 3",
  authors: (
    "B0B01MA1",
    "Jakub Adamec",
  ),
)


#set math.mat(delim:"|")
#set align (left)

1. Spočtěte
$integral (2x-5)e^(-x) dif x = mat(u=2x-5,,v'=e^(-x);u'=2,,v=-e^(-x))
limits(=)_()^(P-P) (-2x+5)e^(-x)+2 integral e^(-x) dif x 
=(5-2x)e^(-x) -2e^(-x)+c=\
=3e^(-x)-2x dot e^(-x) +c, x in RR$

2. Spočtěte
$integral (3-2x)sin\2x dif x = mat(u=3-2x,,v'=sin\2x;u'=-2,,v=- (cos\2x) / 2)
limits(=)_()^(P-P) (-3+2x) (cos\2x) /2 - integral (-2)((-cos\2x) / 2) dif x
=(-3+2x) (cos\2x) /2 - (sin\2x) /2 + c=\
=1/2[ cos\2x dot (-3+2x) - sin\2x] +c, x in RR$

3. Spočtěte
$integral (3x-2)sin\x/2 dif x = mat(u=3x-2,,v'=cos\x/2;u'=3,,v=2sin\x/2)
limits(=)_()^(P-P) (3x-2) dot 2sin\x/2 - 3 dot 2 integral sin\x/2 dif x=\
=(3x-2) dot 2sin\x/2
+ 12 cos\x/2 + c,x in RR$

4. Spočtěte
$integral (3x^2 - sqrt(x)) ln\3x dif x = mat(u=ln\3x,,v'=3x^2 - sqrt(x);u'=1/x,,v=x^3 -2/3 sqrt(x^3))
limits(=)_()^(P-P) ln\3x(x^3 -2/3 sqrt(x^3))- integral (x^3 -2/3 sqrt(x^3))/x dif x=\
=ln\3x(x^3 -2/3 sqrt(x^3))- integral (x^2-2/3 dot x^(1/2)) dif x
=ln\3x(x^3 -2/3 sqrt(x^3))-(x^3 / 3 -4/9 sqrt(x^3)) +c=\
=x^3ln\3x + (2x sqrt(x) ln\3x +x^3)/3 + 4/9 dot x sqrt(x) +c, x in (0,+ infinity)$


