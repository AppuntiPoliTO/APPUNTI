#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag
#set page(margin: 1.5cm)
#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

== Progettazione

=== Dimensionamento e calcolo degli innesti

L'innesto trasmette una coppia variabile $M_s (t)$ tra l'organo motore e l'organo condotto, ciascuno dotato di un momento d'inerzia ($I_m$ e $I_u$, di regola costanti) che rappresenta le inerzie del motore, dell'utilizzatore e dei relativi componenti della trasmissione ridotte all'asse di rotazione dell'innesto, soggetti rispettivamente alla coppia motrice $M_m$ e resistente $M_r$, inizialmente a velocità angolari distinte ($omega_(m,0) != omega_(u,0)$).

==== Analisi della sincronizzazione e del surriscaldamento

Il transitorio di sincronizzazione governa la dinamica della trasmissione e il carico termico sulle superfici d'attrito (nei freni vale lo stesso schema, con decelerazione dell'organo frenato fino all'eventuale arresto):



#fig-safe(include "../../figs/innesti/ecm-c13-p3-01.typ", max-h: 6.4cm)

- *Inserimento e ritardo ($t^*$–$t_0$).* Dal comando in $t^*$, giochi, rigidezze e inerzia dell'attuatore (idraulico meno pronto dell'elettromagnetico) ritardano l'inizio effettivo del contatto fino a $t_0$.
- *Inseguimento dell'utilizzatore ($t_0$–$t_2$).* Al crescere della spinta $F$, la coppia d'attrito cinetico supera la coppia a vuoto $M_0$ e, in $t_1$, supera la coppia resistente $M_r$: l'utilizzatore accelera ($omega_u$ sale) mentre il motore decelera ($omega_m$ scende) e la coppia di slittamento si porta al valore di regime $M_s$ (che in prima approssimazione si può ritenere costante, così come il coefficiente d'attrito cinetico $f_c$).
- *Sincronismo ($t_2$).* Quando $omega_m = omega_u$, lo strisciamento cessa e il coefficiente d'attrito passa da cinetico ($f_c$) a statico ($f_0$), generando un picco di coppia trasmissibile senza slittamento $M_p$; successivamente il sistema solidale riacquista velocità angolare fino alla velocità di regime e la coppia si stabilizza su $M_r$. Al disinserimento (comando `off`) avviene il transitorio inverso di disaccoppiamento, generalmente più rapido.

Durante lo strisciamento ($t_0$–$t_2$), la potenza termica generata eguaglia la potenza dissipata per attrito $M_s (t) dot omega_r (t)$, dove $omega_r = omega_m - omega_u$: la temperatura sale e decade poi verso la temperatura ambiente, mentre l'energia dissipata in calore $E_d = integral_(t_0)^(t_2) M_s (t) thin omega_r (t) thin d t$ è rappresentata dall'area compresa tra le curve $omega_m (t)$ e $omega_u (t)$. In caso di azionamenti ripetuti con tempo medio di riattivazione $t_m$ (*duty cycle*), un raffreddamento incompleto tra cicli successivi produce accumulo termico progressivo e surriscaldamento. Per scegliere o progettare l'innesto vanno quindi definiti i valori delle coppie caratteristiche ($M_0$, $M_r$, $M_s$, $M_p$), la velocità di regime, la velocità relativa massima e la frequenza degli inserimenti.

==== Dimensionamento a usura delle superfici d'attrito

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Su una corona circolare compresa tra i raggi $r_i$ ed $r_e$ su un arco di ampiezza $phi$, la forza assiale $F$ e la coppia di slittamento $M_s$ valgono:
    $ F = integral_(r_i)^(r_e) integral_0^phi p(r) thin r thin d phi thin d r $
    $ M_s = integral_(r_i)^(r_e) integral_0^phi f dot p(r) dot r^2 thin d phi thin d r $
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-02.typ", max-h: 5.2cm)],
)

#v(0.5em)

Assumendo dischi rigidi ad accostamento parallelo (le cui superfici restano piane nonostante il consumo) e applicando la *legge di Archard* — modello generale di cedimento per *usura da sfregamento*, distinto dalla fatica da contatto — il tasso di riduzione dello spessore $h$ nell'unità di tempo risulta indipendente dal raggio:
$ frac(d h, d t) = frac(c_u, H) p(r) thin omega r = "costante" $
dove $c_u$ è il coefficiente d'usura e $H$ la durezza del materiale di guarnizione. Essendo $omega$ uniforme, segue $p(r) dot r = "costante"$: la pressione massima si localizza sul raggio interno $r_i$ con distribuzione iperbolica:
$ p(r) = p_"max" dot frac(r_i, r) $

#v(0.4em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Integrando $p(r)$ sulla corona circolare si ottengono:
    $ F = p_"max" r_i phi (r_e - r_i) $
    $ M_s = f p_"max" r_i phi frac(r_e^2 - r_i^2, 2) = f F r_m $
    con raggio medio $r_m = (r_e + r_i) / 2$. Definiti l'efficacia $e = M_s / p_"max"$ e il rapporto geometrico $rho = r_e / r_i$, la condizione di ottimo $(d e) / (d rho) = 0$ fornisce analiticamente i rapporti geometrici riportati sui manuali:
    $ rho_0 = sqrt(3) quad arrow.r.double quad r_e approx 1.7 r_i , quad r_m approx 0.78 r_e $
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-03.typ", max-h: 4.8cm)],
)

#v(0.5em)

Per un innesto *monodisco* ($2$ coppie di superfici attive, fronte e retro, con $d_m = 2 r_m$), la coppia di slittamento e il valore massimo di picco (sostituendo all'attrito cinetico $f_c$ quello *statico di primo distacco* $f_0$) valgono:
$ M_s = 2 f_c F r_m = f_c F d_m , quad M_p = f_0 F d_m $
Per un innesto *multidisco* con $z$ superfici attive, la coppia di slittamento risulta:
$ M_s approx z f_c F r_m = frac(z f_c F d_m, 2) $

#nota[
  *Caduta di forza assiale nei multidisco.* Nei pacchi multidisco la forza normale effettiva tra i dischi più lontani dall'attuatore è solo *approssimativamente* pari alla forza di comando $F$, poiché parte della spinta viene dissipata dall'attrito di scorrimento sui profili scanalati (per questo nella formula compare il simbolo $approx$ e il numero di dischi è limitato).
]

==== Innesti a frizione conici

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Negli innesti conici a singola coppia di superfici (semiangolo di conicità $alpha$), scomponendo l'azione normale $p thin d A$ e la forza d'attrito $f p thin d A$ lungo la generatrice nelle direzioni assiale e radiale, l'equilibrio assiale fornisce:
    $ F = integral_A p (sin alpha + f cos alpha) thin d A $
    $ arrow.r.double quad integral_A p thin d A = frac(F, sin alpha + f cos alpha) $
    La coppia di slittamento diventa quindi:
    $ M_s = frac(f F, sin alpha + f cos alpha) dot frac(r_e + r_i, 2) $
    Ottimizzando il guadagno $g = M_s / F$ imponendo $(d g) / (d f) = 0$ si ricava la conicità ottimale:
    $ tan alpha = 1 - f $
    (ad esempio, per $f = 0.3$ risulta $alpha approx 35 degree$).
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-04.typ", max-h: 5.2cm)],
)

=== Cenni sui freni

I freni obbediscono alle stesse leggi di attrito, usura e bilancio termico degli innesti, ma dissipano l'energia cinetica per decelerare o arrestare l'organo rotante.

- *Freni multidisco.* Adottati per impieghi saltuari ad altissima energia, come nei carrelli aeronautici (es. ATR 42) per l'interruzione d'emergenza della corsa di decollo. Rispetto alle frizioni multidisco impiegano dischi portanti e materiali d'attrito più spessi — per sostenere la severa usura e il rapido riscaldamento — e carcasse forate aperte per accelerare la ventilazione centrifuga.

#grid(
  columns: (1.25fr, 0.75fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-multidisco-sez.jpg"), max-h: 4.5cm)],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-multidisco-foto.jpg"), max-h: 4.5cm)],
)

#v(0.5em)

- *Freni a ceppi interni o esterni e tamburo.* Costruttivamente semplici, ispezionabili e affidabili; l'accostamento dei ceppi avviene per rotazione attorno a una cerniera o traslazione radiale tramite camma (a), cilindro idraulico singolo (b) o doppio (c) o articolazione (d). L'*usura è disuniforme* e la forza d'attrito può favorire l'accostamento (*ceppo avvolgente*, effetto autoamplificante) oppure opporvisi (*ceppo svolgente*).

#grid(
  columns: (1.35fr, 0.65fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-ceppi-schema.jpg"), max-h: 4.0cm)],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-ceppi-foto.jpg"), max-h: 4.0cm)],
)

#v(0.5em)

- *Freni a disco e pinza.* Il dimensionamento a frenatura, attrito, surriscaldamento e coppia è analogo a quello degli innesti piani a corona. La pinza serra pastiglie ad alto attrito contro un disco esposto (spesso ventilato o forato), garantendo elevata potenza frenante e rapido raffreddamento; le temperature raggiunte in tempi brevissimi (es. freni sportivi) impongono un rigoroso controllo dei flussi termici per evitare il danneggiamento o l'innesco di combustioni sui componenti adiacenti.

#grid(
  columns: (1.3fr, 0.7fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-disco-sez.jpg"), max-h: 4.3cm)],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-disco-foto.jpg"), max-h: 3.5cm)],
)

#v(0.5em)

- *Freni a nastro.* Impiegati in macchine agricole e d'officina per la semplicità costruttiva (pur risultando meno dissipativi e meno precisi), sfruttano l'avvolgimento di un nastro flessibile su un tamburo mediante una leva di comando (bracci $a$ e $b$, tensioni $T_1$ e $T_2$). La forza di comando $F$ e la coppia frenante dipendono dalla posizione del fulcro e dal rapporto tra i bracci di leva; il consumo risulta disuniforme, concentrandosi all'estremità maggiormente sollecitata.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-07.typ", max-h: 4.6cm)],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-08.jpg"), max-h: 4.6cm)],
)
