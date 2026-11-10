// Preambolo per file incluso (suggerito da main.typ)

#import "@preview/cetz:0.3.4": canvas, draw
// #set page(...) [omesso per evitare salti pagina nel documento genitore]
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
// #set page(...) [omesso per evitare salti pagina nel documento genitore]
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
// #set page(...) [omesso per evitare salti pagina nel documento genitore]
  numbering: "1",
  number-align: bottom + right,
)



#heading(level: 1, numbering: none)[Bilanclo di massa]
<bilanclo-di-massa>
#block[

]
$ arrow(u)_s = arrow(u) & \; & overline(cal(L)) & = M\
 & = rho & : upright(" merse ")\
phi & = upright(" denite ") $

$ frac(d Phi, d t) = frac(d M, d t) = integral_(D\(1\)) frac(partial psi, partial t) d V + integral_(S\(t\)) rho arrow(u) dot.op arrow(n) d delta = 0 $

discutere fluss diffusivi!

$ integral_D frac(partial phi, partial t) d V + integral_D "div"\(rho arrow(u)\)d V = 0\
frac(partial rho, partial t) + "div"\(rho arrow(u)\)= 0\
frac(partial rho, partial t) + frac(partial, partial x_j) (rho u_j) = 0 $

posso riscriverle in eltro modo

$  & frac(partial rho, partial t) + frac(partial, partial x_j) (p u_j) = 0\
 & frac(partial rho, partial t) + u_j frac(partial rho, partial x_j) + rho frac(partial u_j, partial x_j) = 0\
 & 1 / rho frac(partial rho, partial t) = - frac(partial u_j, partial x_j) $

Interperetio fisice de div $arrow(u) = 0$

$ arrow.l  & arrow.t\
 & arrow.b\,arrow.r\
 & arrow.b quad "dis" arrow(u) gt.eq 0 $

$ square.stroked.tiny_t^1 arrow.l^("dis" macron(u)' < 0) $

Se $rho = cos t$.

$ "div" arrow(u) = 0 $

Conservation dul. Volume implice conserverove metre

Poss moshere lo ireno visulrate $E^2$ zitornende ol the di Reynolds

$ phi = 1 $

$  & frac(d, d t) integral phi d V arrow.r frac(d v, d t)\
 & integral_(frac(partial, partial t)) frac(partial phi, partial t) d V + integral_S rho arrow(u) dot.op arrow(u) d S = integral_V "div" arrow(u) d V $

Focundo riferreto ad we particalle fluida

$ V & arrow.r 0\
1 / V frac(d V, d t) & = nabla dot.op arrow(u) $

Si pró mostrace (lo facen pie tordi) de
$frac(delta rho, rho) tilde.op M_a^2$

$ mu_a equiv u / c $

numer di Mack

Un prino simulters celebre \

$ integral_(S_1) arrow(u) dot.op arrow(n)_1 d S_1 + integral_(S_2) arrow(u) dot.op arrow(n)_2 d S_2 + integral_(S_w) arrow(u) dot.op u_w d S_w = 0 $

Nd caso in wi $arrow(u)_(i\,2)\/\/arrow(u)_(i\,2)$ \ conditiee di
impormetilite Le
$arrow(u) =\(u\,0\,0\)\;arrow(u)_(i\,L) =\(plus.minus 1\,0\,0\)$

$ - u_1 S_1 + u_2 S_2 = 0 & u_1 S_1 = u_2 S_2 = Q_N & \
u = Q_r / S & Q_J = integral arrow(u) dot.op arrow(u) d arrow(s) $

Riformlazione Th Reynolds grate a ep. di continuité

$ frac(d, d t) integral_(D\(t\)) rho x d V = integral_(D\(t\)) frac(partial\(rho x\), partial t) d V + integral_(S\(t\)) rho x arrow(u_s) d S $

#block[

]
Anelizzieno puero termice:

$ frac(partial, partial t)\(rho x\) & = rho frac(partial x, partial t) + x frac(partial rho, partial t) = frac(partial rho, partial t) = - frac(partial, partial x_j) (rho u_j)\
 & = rho frac(partial x, partial t) - x frac(partial, partial x_j) (rho u_j) =\
 & = rho frac(partial x, partial t) - [frac(partial, partial x_j) (x rho u_j) - (rho u_j) frac(partial x, partial x_j)] =\
 & = rho [frac(partial x, partial t) + u_j frac(partial x, partial x_j)] - frac(partial, partial x_j) (x rho u_j) =\
 & = rho frac(D x, partial t) - frac(partial, partial x_j) (x rho u_j) $

Riscriso dungue :1 Th. di Reynolds

$  & frac(d, d t) integral_D rho x d V = integral_D rho frac(D x, D t) d V integral_D nabla dot.op\(rho x dot.op arrow(u)\)+ integral_S rho x arrow(u) dot.op arrow(u) dot.op d S\
 & = integral_D rho frac(D x, D t) d V + integral_S rho x [arrow(u)_s - arrow(u)] dot.op arrow(u) d S $

Se $arrow(u)_s = arrow(u)$

$ frac(d, d t) integral_(D\(t\)) rho x d V = integral_D rho frac(D x, D t) d V $

Se $x = arrow(u)$

$ frac(d, d t) integral_D rho arrow(u) d V = integral_D rho frac(D arrow(u), D t) d V $

Variazibue delle duantità di moto del volume MATERIALE di Furido \ per
$V arrow.r 0$, considns perticlle flida 4.4

$ p nu frac(D arrow(u), D t) & = arrow(F)_V + arrow(F)_s =\
 & = integral_D rho g d V + integral_(S') arrow(arrow(sigma)) dot.op arrow(n) d delta' $

- $nabla_(i j)$ - tensore simmetrico implice due contributi

$ nabla_(i j) = & (sigma_(i j))_(upright("eq ")) + (sigma_(i j))_(upright("dis ")) +\(upright(" stalico ")\
upright(" o ") arrow(u) upright(" vujere ") quad upright(" i.e. ")\
arrow(u)\(arrow(x)\) $

$ (nabla_(i j))_(e q) = mat(delim: "(", - p, 0, 0; 0, - p, 0; 0, 0, - p) = - p delta_(i j) $

$ integral_D rho frac(D arrow(u), D t) d V & = integral_D rho arrow(g) d V + integral_S arrow(arrow(sigma)) dot.op arrow(n) d S =\
 & = integral_D rho arrow(g) d V + integral_oo nabla dot.op arrow(arrow(sigma)) d S $

$ rho frac(D u_i, D t) & = rho g_i + frac(partial, partial x_j) nabla_(i j) =\
 & = rho g_i - frac(partial, partial x_j) (p nabla_(i j)) arrow.r.double $

$ rho frac(D u_i, D t) = rho g_i - frac(partial p, partial x_i) $

Eq. di \ Eulero \ perdé- $- p delta_(i j) = sigma_(i j)$ ?

$ T_i = sigma_(i j) u_j & = mat(delim: "(", - p, 0, 0; 0, - p, 0; 0, 0, - p) vec(0, 0, 1) =\
 & =\(0\,0\,- p\) $

\ sforso eserihet del Jhido s.tle percente

Ep. En. Cinetia

$  & arrow(u) dot.op {rho frac(D arrow(u), D t) = nabla dot.op arrow(arrow(v)) + rho arrow(f)}\
 & rho u_i frac(D u_i, D t) = u_i frac(partial sigma_(i j), partial x_j) + u_i rho g_i\
 & u_i dot.op u_i = pi^2\;sigma_(i j) = - p delta_(i j)\
 & rho frac(D u^2\/2, D t) = - u_i frac(partial p', partial x_j) - u_j frac(partial p psi, partial x_j) $

$ psi upright(" :potentiale ") quad g_j = - frac(partial psi, partial x_j)\;psi = - g_i dot.op x_i = 0 $

$  & rho frac(partial, partial t) (u^2 / 2) + p u_j frac(partial, partial x_j) (u^2 \/ 2) + u_i frac(partial p, partial x_i) + u_i frac(partial p psi, partial x_i) = 0\
 & arrow.l.r.double partial\/partial t = 0 $

$ u_j frac(rho, partial x_j)\[underbrace(rho u^2 / 2 + p + rho chi, cal(H))\]= 0 $

$ arrow(u) dot.op nabla H = 0\
H = p + p g x_3 + u^2 / 2 =\
= upright(" const. livys une linee ") $

#figure([#block[

  ]],
  caption: [
    Applicazione : Tubo di Pirot
  ]
)

trasdutton prenisce, misure $(p_0 - p_1)$

$  & 1 / 2 p u_1^2 + p_1 = 1 / 2 p u_0^2\
 & arrow.r = 0\
 & 1 / 2 p u_1^2 = (p_0 - p_1)\
 & u_1 = sqrt(frac(2 (p_0 - p_1), rho)) $

Se considero un Jeido a denrité corrente $rho = cos t$

$ {frac(partial u_j, partial x_j) = 0\
frac(D u_i, D t) = - 1 / rho frac(partial p, partial x_i) + g_i $

$ {nabla dot.op arrow(u) = 0\
frac(D arrow(u), D t) = - 1 / rho nabla p + arrow(rho) $

4 equation $arrow.l.r.double 4$ inognire

$ \(arrow(u)\,p\) $

II sireme ve cempletero con delle conditiali al bordo- In caso di parete
solide, I impore le condition di impermeebilité

$ arrow(u) dot.op arrow(u) = 0 $

\ $arrow(u)$ nan deve were und campoute perpendicalar ello perete

#heading(level: 1, numbering: none)[APPLICAZIONI del Teorema di
BERNOULLI]
<applicazioni-del-teorema-di-bernoulli>
Studio dei procui di offerro attraverso fori a poti velle pereti (Foro
no min) \ \ luce

A battente \ (contorns del fars titts a contets con it Juide) \ \ A
STRAMAZZO \ If (lecque cade con parte del fero likero)

#figure([#block[

  ]],
  caption: [
    ESEMPLO 1
  ]
)

idede? (a rijore no!)

Prendo i punti. $A$ e $B$.

$  & z_A + p_A / p + frac(u_A^2, 2 g) = z_B + frac(p_B, divides u_0) + frac(u_B^2, 2 g)\
 & 2 z_A = z_B + Delta + delta tilde.eq z_B + Delta\
 & frac(u_B^2, 2 g) = Delta quad arrow.r quad u_B = sqrt(2 g Delta) $

In restèt la ve locité è un po' jic picole, vidette de un coefficieted
d' 'perdite di conce' cr一) Portata $Q = A c_v U_B$

Deso coniduee de $A_c = c_c A$ \ a vena contracte

$ Q & = underbrace(c_v dot.op c_c) A sqrt(2 g Delta)\
 & tilde.eq 0.6 $

Esemplo 2 : Luce solto Paratoia \

$ z_A + P_A / j + frac(v_A^2, 2 g) = z_B + P_B / v^2 + frac(u_B^2, 2 g)\
h_B = c_c a $

$  & U_B = sqrt(2 g (H - c_c a))\
 & Q = A_c c_v U_B = underbrace(c_c c_v, 0\,6) a sqrt(2 g (H - c_c a)) $

Esemplo 3 \

Elluss in Arie \ a cense dette gravitá be traiettice ti incurreno; h non
e- costente welle fetise d' cunhello \ in $B arrow.r P_B = 0$

$ u_B = sqrt(2 g (H - 2_B)) $

Nell'iptei de $d lt.double H$

$  & 2_B - 2'_B - 2_a\
u = & sqrt(2_g (H - 2_a)) quad\;quad Q = c_v A sqrt(2_g (H - 2_a)) $

$ {u_x = 2 x\
u_y = - 2 y\
u_z = 0 $

+ Campo di moto competitate con le seguenti ippresi:

$  & - {v = 0\,arrow(rho) = 0\,rho = upright(" const. ")\
p = p_0 - 1 / 2 rho alpha^2 (x^2 + y^2)\
 & {rho frac(D arrow(u), D t) = rho (frac(partial arrow(u), partial t) + arrow(u) dot.op upright(" frad ") arrow(u)) = - nabla p\
upright(" div ") arrow(u) = 0\
frac(partial, partial t) = 0\
 & {frac(partial p, partial x) = - rho (alpha x - alpha y frac(partial, partial y)) alpha x = - rho alpha^2 x\
frac(partial p, partial y) = rho (alpha x frac(partial, partial x) - alpha y frac(partial, partial y)) alpha y = - rho alpha^2 y\
frac(partial p, partial z) = - rho (alpha x frac(partial, partial x) - alpha y frac(partial, partial f)) 0 = 0 $

$"div" arrow(u) = frac(partial, partial x)\(alpha x\)+ frac(partial, partial y)\(- alpha y\)= alpha - alpha = 0$

$ {frac(d p, d x) = - rho alpha^2 x\
frac(d p, d y) = - p alpha^2 y quad arrow.r.double p\(x\,y\)= ?\
frac(d p, d z) = 0 quad p\(x\,y\)= integral frac(partial p, partial x) d x + integral frac(partial p, partial y) d y\
p\(x\,y\)= integral - rho alpha^2 x d x + integral - rho alpha^2 y d y =\
= p_0 - 1 / 2 p alpha^2 (x^2 + y^2) $

- Verificar e'applicabilité del thid'Beralli $gamma = 0\;quad rho =$
  cout. $\;quad frac(2, partial t) = 0\;quad arrow(g) = - nabla chi$
  $ H = p / rho + 1 / 2 u^2 + psi = upright(" const. ") $ lungs una
  lines d' conente. \ Nel coso presate contiders de $psi = 0$
  $ H = underbrace(p_0 / rho - 1 / 2 alpha^2 (x^2 + y^2), phi.alt) + underbrace(1 / 2 (alpha^2 x^2 + alpha^2 y^2), u^2) =\
  Z\(p_0 / rho = underline(underline(upright(" const "))) $

- Disguee le iso-pressive 4.9

\ 4. Live di conerte $arrow(u) times d arrow(x) = 0$

$  & mat(delim: "|", i, j, arrow(k); u_x, u_y, u_z; d x, u_y, d_z) = 0\;mat(delim: "|", u_y d z - u_z d y; - u_x d t + u_z d x; u_x d y - u_y d x) = 0\
 & {d z = 0\
u_x d y - u_y d x = 0 arrow.r alpha x d y + alpha y d x = 0\
 & x d y + y d x = 0\
 & d\(x y\)= 0 $

Le lieee di consente (in was nette fine) sono iperbali sul friemo
$\(x\,y\)$

#heading(level: 1, numbering: none)[Esercitio 2 - Fluido
$I_(D E A L) =$]
<esercitio-2---fluido-i_d-e-a-l>
#block[

]
- Fluido incopuprenible, $arrow(y) = 0$

- $frac(1, 2 t) = 0$, arsisimuetzico $u_r\(r\,f\)\;u_y\(r\,y\)$

- $r_1 gt.double h\;(r_2 - r_1) gt.double h$

separatiee di scale! \ Colcob il flusso nel comele A

$  & q = pi r_1^2 U_A = 2 pi r_1 h U_B\
 & U_A / U_B = frac(2 h, r_1) lt.double 1\
 & U_A lt.double U_B $

#heading(level: 1, numbering: none)[Valuto la disrribuziec dette
premieni]
<valuto-la-disrribuziec-dette-premieni>
$  & quad nabla p = - rho arrow(u) dot.op nabla arrow(u)\
 & rho arrow(u) dot.op nabla arrow(u) = 0 (rho u_A^2 / r_1)\
 & Delta p_A tilde.op rho u_A^2 $

poide $u_A tilde.op u l / r_1 arrow.r u_A lt.double u$ \ dunque
$quad Delta p_A lt.double rho V_B^2$ \ Bernalli tre (A) e (C)

$ p_c + 1 / 2 rho u_c^2 = p_A + 1 / 2 rho u_A^2 $

- → il terme $1 / 2 p U_A^2 < c 1 / 2 p U_(B\,C)^2$, peno trescuerlo

- $arrow.r Delta P_A lt.double rho U^2 arrow.r$ denque jeno arrumer
  chice $P_A =$ const. $ P_A = P_C + 1 / 2 p u_c^2 $

#heading(level: 1, numbering: none)[Calculo delle forte]
<calculo-delle-forte>
#block[

]
La forte ci é. dete de dre contributi;

$ F = integral_(s_1) (p_0 - p_A) d delta_1 + integral_(delta_2) [p_0 - p_c \( r \)] d delta_2 $

Per colcolar purte differente dipresine tho Becmell.

$ P_A = 1 / 2 rho U_c^2\(r\)+ P_c\(r\)\
U_c\(r\)= frac(9, 2 pi r h) arrow.l upright(" por lo continuite ") $

$ p_c\(r\)= p - 1 / 2 p u_c^2\(r\)= p_A - 1 / 8 frac(p q^2, pi^2 h^2 r^2) $

Per $r = r_2$, led done $p_c (r_2) = p_0$

$ p_c (r_2) = p_A - 1 / 8 frac(rho q^2, pi^2 h^2 r_2^2) = p_0 $

- Posso quindi colclere $(p_0 - p_A)$
  $ (p_0 - p_A) = - frac(rho q^2, 8 pi^2 h^2 r_2^2) $

- Calcob ande $(P_0 - P_c \( r \))$

$  & p_0 - p_c\(r\)= (p_0 - p_A) + 1 / 8 frac(rho q^2, pi^2 h^2 r^2)\
 & p_0 - p_c\(r\)= - frac(rho q^2, 8 pi^2 h^2 r_2^2) + frac(rho q^2, 8 pi h^2 r^2)\
 & p_0 - p_c\(r\)= frac(rho q^2, 8 pi^2 h^2) (1 / r^2 - 1 / r_2^2) $

Ho doupue tulti gli elemati for colcolare

$ F = integral_(S_1) (p_0 - p_A) d delta_1 + integral_(S_2) (p_0 - p_C) d S_2 $

$ upright(" - ") integral_(S_1) (p_0 - p_A) d delta_1 = (p_0 - p_A) pi r_1^2 $

poidé $P_A$ è corrente

$  & quad integral_(s_2) p_0 - p_c\(r\)d s_2 = integral_(r_1)^(r_2) (p_0 - p_c \( r \)) 2 pi r d r\
 & F = underbrace((p_0 - p_A) pi r_1^2, upright("queto onlibite ")) + integral_(r_1)^(r_2) lr((p_0 - p_c \( r \)]) 2 pi r d r =\
 & = - frac(rho q^2, 8 pi^2 h^2 r_2^2) pi r_1^2 + 2 pi frac(rho q^2, 8 pi^2 h^2) integral_(r_1)^(r_2) (1 / r^2 - 1 / r_2^2) r d r =\
 & = frac(rho q^2, 4 pi^4 h^2) {- 1 / 2 (r_1 / r_2)^2 + integral_(r_1)^(r_2) (1 / r^2 - 1 / r_2^2) r d r} =\
 & = frac(rho q^2, 4 pi^2 h^2) {- 1 / 2 (r_1 / r_2)^2 + integral_(r_1)^(r_2) 1 / r d r - integral_(r_1)^(r_2) r / r_2^2 d r} =\
 & = frac(rho rho^2, 4 pi^2 h^2) {- 1 / 2 (r_1 / r_2)^2 + ln r_2 / r_1 - lr(|frac(r_2, 2 r_2^2)|)} =\
 & = frac(rho rho^2, 4 macron(pi)^2 h^2) {- 1 / 2 (r_1 / r_2)^2 + ln r_2 / r_1 - 1 / 2 + 1 / 2 (r_1 / r_2)^2} $

$  & F = frac(rho q^2, 4 pi h^2) {log nabla - 1 / 2}\
 & nabla = r_2 / r_1 upright(" - fotta di forme ") $

Le forte é positive se \ \ L'equilibro é instabile \ laso sretico 4.4 bi

Forte enerciete \ \ del Jecido sul cargo?

$  & arrow(U) = 0\
 & arrow(arrow(sigma)) = - p quad arrow(I) $

#block[

]
$ arrow(g) & = vec(0, 0, - f)\
- frac(partial P, partial x_3) & = rho g $

se

$ rho = rho_0 = upright(" const ") - integral_(p_0)^p d p = integral_0^3 rho g d x_3 $

$ p_0 - p = rho_0 g x_3 $

$p = p_0 - p_0 g x_3 quad\[$ nel ceso de considro $x_3$ é negatio! \]

$ upright(H)_2 upright(O) quad rho_0 = 10^3 upright(med k g) / upright(med m)^3 $

$ rho_0 g Delta x_3 & = 10^5 P_2\
 & = 1 upright(" etm ") $

#heading(level: 1, numbering: none)[Forte escribehe del Jliido]
<forte-escribehe-del-jliido>
$ d F_A = T d delta & = arrow(arrow(sigma)) dot.op arrow(n) d delta' =\
 & = - p arrow(arrow(I)) dot.op arrow(n) d s' $

$ T_0 d delta' = sigma_(i j) dot.op n_j = - p delta_(i j) dot.op n_j d s $

$ (F_A / F_A)_i = - integral_S p delta_(i j) n_j d S & = - integral_V frac(0, partial x_j) (p delta_(i j)) u_j d V =\
= integral_V - frac(partial p, partial x_j) d V & = integral_V - p g_i d V =\
 & = - g_i integral_V p d V = - g_i M_f $

$M_f =$ messe di fliide sperketo \ $arrow(F)_A$ é opperte e $arrow(f)$ !
