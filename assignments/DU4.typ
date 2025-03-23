#import "math_config.typ": *

#show: project.with(
  title: "Domácí úkol č. 4",
  authors: (
    "B0B01MA1",
    "Jakub Adamec",
  ),
)

#set math.mat(delim:"|")
#set align (left)

1. Spočtěte
$
 integral_(0)^(ln sqrt(2)) (6e^(6x)-2e^(4x))/(e^(4x)-3e^(2x)+4) dif x = mat(u=e^(2x);dif u=2e^(2x) dif x)=
 integral_(1)^(2) (cancel(2e^(2x), stroke:#(paint:blue,))(3u^2-u))/(u^2-3u+4) dot (dif u)/(cancel( 2e^(2x), stroke:#(paint:blue,) ) ) =
 integral_(1)^(2) (3u^2-u)/(u^2-3u+4) dif u =
 \
 = mat("dělení";"polynomů")=integral_(1)^(2) (3+(8u-12)/(u^2-3u+4)) dif u = [3u]_(1)^(2)+integral_(1)^(2) (8u-12)/(u^2-3u+4) dif u = mat(t=u^2-3u+4;dif t=(2u-3) dif u) =
 \
 = [3u]_(1)^(2)+integral_(2)^(2) (4 dot cancel( (2u-3), stroke:#(paint:blue,) ) )/(t) dot (dif t)/cancel(2u-3, stroke:#(paint:blue,)) =
 [3u]_(1)^(2)+ underbrace(4integral_(2)^(2)(dif t) / t, "=0") = [3u]_(1)^(2) = 6-3=3\u{333}
$


2. Spočtěte
$ 
 integral_(e/2)^(oo) (3)/(x(ln^(2)2x-6ln 2x+13)) dif x = mat(u=ln 2x;dif u=1/x dif x) =
 3 integral_(1)^(oo) 1/(cancel(x, stroke:#(paint:blue,))(u^2-6u+13)) dot cancel(x, stroke:#(paint:blue,)) dif u =
 3 integral_(1)^(oo) 1/((u^2-6u+9)+4) dif u = 
 \ 
 = 3 integral_(1)^(oo) 1/((u-3)^2+4) dif u =  
 mat(t=u-3;dif t=1 dif u) = 3 integral_(-2)^(oo) 1/(t^2+4) dif t = 
 3/4 integral_(-2)^(oo) 1/(t^2/4+1) dif t = mat(v=t/2;dif v=1/2 dif t) =
 3/2 integral_(-1)^(oo) 1/(v^2+1) dif v = 
 \
 = 3/2 [arctan v]_(-1)^(oo)=3/2 (lim_(v->oo)(arctan v) - arctan(-1) ) =
 3/2 dot pi/2 - 3/2(-(pi)/4)= underline(underline((9pi)/8))
$


3. Spočtěte
$ 
 integral_(0)^(pi /2) (sin x dot cos x -4cos x)/(1-2sin x -cos^2 x) dif x = 
 mat(u=sin x;dif u=cos x dif x) = 
 integral_(0)^(1) (cancel(cos x, stroke:#(paint:blue,))(u-4))/(u^2-2u) dot (dif u)/cancel(cos x, stroke:#(paint:blue,)) =
 integral_(0)^(1) cancel(u-2, stroke:#(paint:blue,))/(u cancel((u-2), stroke:#(paint:blue,))) dif u -2 integral_(0)^(1) underbrace(1 / u(u-2),g(u)) dif u =
 \
 = underbrace([ln abs(u)]_(0)^(1),bold(S_f)) + underbrace( integral_(0)^(1) -2g(u) dif u,bold(S_g)) = 
 bold(S_f) + bold(S_g) = bold(S)
 \
 \
 \
 \
 underline(g(u)) = 1 / u(u-2) = A/u + B/(u-2)
 \
 A+B = 0 => A=-B
 \
 -2A=1 => A=-1/2 => B=1/2
 \
 g(u)=-1/2 dot 1/u + 1/2 dot 1/(u-2)
 \
 bold(S_g)=-2(integral_(0)^(1) -1/2 dot 1/u dif u + integral_(0)^(1) 1/2 dot 1/(u-2) dif u) = 
 [ln abs(u)]_(0)^(1) - [ln abs(u-2)]_(0)^(1)
 \
 \
 \
 \
 bold(S) = bold(S_f) + bold(S_g) = [ln abs(u)]_(0)^(1) + [ln abs(u)]_(0)^(1) - [ln abs(u-2)]_(0)^(1) =
 0 - lim_(u->0)ln abs(u) + 0 - lim_(u->0)ln abs(u) - 0 + ln 2 = + oo + oo + ln 2 = underline(underline(+oo))
 \
 "Diverguje" => "existuje."
$

4. Spočtěte
$ 
 integral_(pi /3)^(pi /2) (5sin x -sin x dot cos x)/(underbrace(sin^(2) x, 1-cos^ 2 x )+cos x+1) dif x = 
 mat(u=cos x;dif u=-sin x dif x) = integral_(1/2)^(0) = 
 (cancel(sin x,stroke:#(paint:blue,))(5-u))/(1-u^2+u+1) dot (dif u)/cancel(-sin x,stroke:#(paint:blue,)) = 
 integral_(1/2)^(0) (5-u)/((u-2)(u+1)) dif u =
 \
 = 5 integral_(1/2)^(0) underbrace((1)/((u-2)(u+1)),f(u)) dif u + integral_(1/2)^(0) underbrace((-u)/((u-2)(u+1)), g(u)) dif u = 
 underbrace(integral_(1/2)^(0) f(u) dif u, bold(S_f)) + underbrace( integral_(1/2)^(0) -g(u) dif u, bold(S_g)) = 
 bold(S_f) + bold(S_g) = bold(S)
 \
 \
 \
 \
 underline(f(u))=(1)/((u-2)(u+1))=A/(u-2) + B/(u+1)
 \
 A+B=0 => A=-B
 \
 A=-B and A-2B=1 => -3B=1 => B=-1/3 and A=1/3
 \
 f(u)=1/3 dot 1/(u-2) - 1/3 dot 1/(u+1)
 \
 bold(S_f)=5 integral_(1/2)^(0) f(u) = 
 5/3 integral_(1/2)^(0) 1/(u-2) dif u - 5/3 integral_(1/2)^(0) 1/(u+1) dif u =
 5/3 ([ln abs(u-2)]_(1/2) ^ 0) -5/3 ([ln abs(u+1)]_(1/2) ^ 0) =
 \
 = 5/3(ln 2 - cancel((ln 3 - ln 2),stroke:#(paint:blue,))) - 5/3 (ln 1 - cancel((ln 3 - ln 2),stroke:#(paint:blue,))) = 
 5/3(ln 2 - 0) = bold(S_f)
 \
 \
 \
 \
 underline(g(u)) = (u)/((u-2)(u+1)) = 
 cancel((u-2),stroke:#(paint:blue,))/(cancel((u-2),stroke:#(paint:blue,))(u+1)) + 2/((u-2)(u+1)) = 
 1/(u+1) + 2/3 (1/(u-2) - 1/(u+1))
 \
 bold(S_g)=- integral_(1/2)^(0) g(u) = 
 - integral_(1/2)^(0) 1/(u+1) dif u -2/3 integral_(1/2)^(0) 1/(u-2) dif u + 2/3 integral_(1/2)^(0) 1/(u+1) dif u = 
 \
 = - [ln abs(u+1)]_(1/2) ^ 0 - 2/3 [ln abs(u-2)]_(1/2) ^ 0 +2/3 [ln abs(u+1)]_(1/2) ^ 0 = -(ln 1 - (ln 3 - ln 2))
 - 2/3 (ln 2 - cancel((ln 3 - ln 2),stroke:#(paint:blue,))) + 2/3 (ln 1-cancel((ln 3 - ln 2),stroke:#(paint:blue,))) = 
 \
 = ln 3 - 0 -ln 2 - 2/3(ln 2 - 0) = bold(S_g)
 \
 \
 \
 \
 bold(S) = bold(S_f) + bold(S_g) = 5/3ln 2 + ln 3 -ln 2 - 2/3ln 2 = 
 3/3 ln 2 - ln 2 + ln 3 = underline(underline(ln 3)) 
$
