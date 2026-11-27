#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag
#set page(margin: 1.5cm)
#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

== Progettazione

=== Dimensionamento e calcolo degli innesti

L'innesto trasmette una coppia variabile $M_s (t)$ tra l'organo motore e l'organo condotto, ciascuno dotato di un momento d'inerzia ($I_m$ e $I_u$, di regola costanti) che rappresenta le inerzie del motore, dell'utilizzatore e dei relativi componenti della trasmissione ridotte all'asse di rotazione dell'innesto, soggetti rispettivamente alla coppia motrice $M_m$ e resistente $M_r$, inizialmente a velocità angolari distinte ($omega_(m,0) != omega_(u,0)$).

==== Analisi della sincronizzazione

Il transitorio di sincronizzazione governa la dinamica della trasmissione e il carico termico sulle superfici d'attrito (nei freni vale lo stesso schema, con decelerazione dell'organo frenato fino all'eventuale arresto). I tre diagrammi sovrapposti mostrano l'evoluzione temporale del comando (`on`/`off`), delle coppie in gioco ($M_r, M_s, M_p$) e delle velocità angolari ($omega_m, omega_u$ e relativa $omega_r = omega_m - omega_u$):

#fig-safe(include "../../figs/innesti/ecm-c13-p3-01.typ", max-h: 9.4cm)

- *Inserimento e ritardo ($t^*$–$t_0$).* Dal comando in $t^*$, giochi, rigidezze elastiche e inerzia dell'attuatore (idraulico meno pronto dell'elettromagnetico) ritardano l'inizio effettivo del contatto fino a $t_0$; in questo intervallo non viene ancora trasmessa coppia utile superiore a quella a vuoto $M_0$.
- *Inseguimento dell'utilizzatore ($t_0$–$t_2$).* Da $t_0$ la spinta $F$ porta la coppia d'attrito cinetico oltre $M_0$ e il motore inizia a decelerare ($omega_m$ scende); l'utilizzatore rimane invece fermo alla velocità iniziale finché, in $t_1$, la coppia trasmessa non supera la coppia resistente $M_r$ vincendo l'inerzia $I_u$. Da $t_1$ l'utilizzatore accelera ($omega_u$ sale) e la coppia di slittamento si porta al valore di regime $M_s$ (che in prima approssimazione si può ritenere costante, così come il coefficiente d'attrito cinetico $f_c$).
- *Sincronismo ($t_2$).* Quando $omega_m = omega_u$ ($omega_r = 0$), lo strisciamento cessa e le superfici diventano solidali: il coefficiente d'attrito passa da cinetico ($f_c$) a statico ($f_0 > f_c$), generando un picco di coppia trasmissibile senza slittamento $M_p$. Superata la fase di accelerazione verso la velocità di regime — non essendoci più né inerzia dell'utilizzatore da vincere né dissipazione per strisciamento — la coppia trasmessa si stabilizza su $M_r$. Al disinserimento (comando `off`) avviene il transitorio inverso di disaccoppiamento, generalmente più rapido.

==== Analisi del surriscaldamento

Durante lo strisciamento ($t_0$–$t_2$), la potenza termica generata eguaglia la potenza dissipata per attrito $M_s (t) dot omega_r (t)$, dove $omega_r = omega_m - omega_u$: la temperatura sale per un flusso di calore pari alla potenza dissipata e successivamente decade verso la temperatura ambiente, mentre l'energia dissipata in calore $E_d = integral_(t_0)^(t_2) M_s (t) thin omega_r (t) thin d t$ è rappresentata dall'area compresa tra le curve $omega_m (t)$ e $omega_u (t)$. Questa area va contenuta per limitare il riscaldamento delle superfici; per contro, un inserimento troppo rapido o impulsivo causerebbe un brusco salto fino al picco $M_p$ (effetto *colpo d'ariete*), con sovraccarichi dannosi per la trasmissione.
#pagebreak()
*Tempo medio di riattivazione e duty cycle.* Un aspetto determinante — che non emerge direttamente dal diagramma del singolo transitorio — è il *tempo medio di riattivazione dell'innesto* $t_m$, cioè l'intervallo di tempo tra un inserimento e quello successivo imposto dal profilo di missione (studio del *duty cycle*). Anche quando il singolo ciclo di dissipazione è sotto controllo, azionamenti ripetuti a intervalli troppo ravvicinati non lasciano tempo sufficiente per smaltire il calore verso l'ambiente, generando accumulo termico (*isteresi termica*) e surriscaldamento progressivo dell'innesto. Stabilendo $t_m$, flusso di calore medio e temperatura raggiunta possono essere calcolati a priori. Per scegliere, acquistare o progettare l'innesto vanno quindi definiti i valori delle coppie caratteristiche ($M_0$, $M_r$, $M_s$, $M_p$), la velocità di regime, la velocità relativa massima e la frequenza degli inserimenti.

==== Dimensionamento a usura delle superfici d'attrito

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il modello di dimensionamento vale sia per gli innesti a disco sia per i freni a disco. Considerando una corona circolare (o un settore d'arco $phi$, con $phi = 2 pi$ per corona completa) compresa tra il raggio interno $r_i$ e quello esterno $r_e$, sull'elemento di superficie $d A = r thin d phi thin d r$ agisce la forza normale elementare $d F = p(r) thin d A$, che genera la forza tangenziale d'attrito $d F_t = f thin p(r) thin d A$ con braccio $r$. Integrando sull'intera area di contatto si ottengono la forza assiale di spinta $F$ e la coppia di slittamento $M_s$:
    $ F = integral_A p(r) thin d A = integral_(r_i)^(r_e) integral_0^phi p(r) thin r thin d phi thin d r $
    $ M_s = integral_A f dot p(r) thin r thin d A = integral_(r_i)^(r_e) integral_0^phi f dot p(r) dot r^2 thin d phi thin d r $
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-02.typ", max-h: 5.2cm)],
)

#v(0.5em)

Per risolvere gli integrali occorre stabilire la legge di distribuzione radiale della pressione $p(r)$ (a disco nuovo la pressione è circa uniforme, ma il consumo più rapido alle velocità periferiche maggiori la ridistribuisce rapidamente durante il rodaggio). Assumendo dischi rigidi ad accostamento assiale parallelo — le cui superfici restano piane nonostante il consumo progressivo — lo spessore $h$ di materiale asportato nell'unità di tempo deve risultare uguale a ogni raggio $r$. Applicando la *legge di Archard* (modello generale di cedimento per *usura da sfregamento*, distinto dalla fatica da contatto hertziana), il rateo d'usura vale:
$ frac(d h, d t) = frac(c_u, H) p(r) thin omega r = "costante" $
dove $c_u$ è il coefficiente d'usura della coppia di materiali, $H$ la durezza della guarnizione e $v(r) = omega r$ la velocità tangenziale locale di strisciamento. A velocità angolare $omega$ uniforme segue $p(r) dot r = "costante"$: la pressione decresce iperbolicamente verso l'esterno e raggiunge il valore massimo $p_"max"$ in corrispondenza del raggio minimo $r_i$:
$ p(r) = frac("costante", r) = p_"max" dot frac(r_i, r) $

#v(0.4em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Sostituendo la distribuzione iperbolica $p(r) = p_"max" r_i / r$ negli integrali (con $f$ uniforme sulla superficie) si ricavano:
    $ F = p_"max" r_i integral_(r_i)^(r_e) integral_0^phi d phi thin d r = p_"max" r_i phi (r_e - r_i) $
    $ M_s = f p_"max" r_i integral_(r_i)^(r_e) integral_0^phi r thin d phi thin d r = f p_"max" r_i phi frac(r_e^2 - r_i^2, 2) $
    Scomponendo $r_e^2 - r_i^2 = (r_e - r_i)(r_e + r_i)$ e riconoscendo l'espressione di $F$, la coppia si riduce alla forma compatta in funzione del raggio medio $r_m = (r_e + r_i) / 2$:
    $ M_s = f F r_m $
  ],
  [#fig-safe(include "../../figs/p3-fig02.typ", max-h: 5.2cm)],
)

#v(0.4em)

*Ottimizzazione geometrica della corona.* Fissato il raggio esterno $r_e$ (dettato dall'ingombro radiale disponibile) e la pressione massima ammissibile $p_"max"$ sul raggio interno, conviene scegliere il rapporto dei raggi $rho = r_e / r_i$ in modo da massimizzare l'*efficacia* $e = M_s / p_"max"$: se $rho arrow.r 1$ ($r_i arrow.r r_e$) l'area di contatto si annulla; se $rho arrow.r infinity$ ($r_i arrow.r 0$) il vincolo su $p_"max"$ riduce la forza trasmissibile e le zone interne lavorano con braccio piccolo. Esprimendo $r_i = r_e / rho$ nella formula di $M_s$ si ottiene:
$ e = frac(M_s, p_"max") = frac(1, 2) f phi r_e^3 ( frac(1, rho) - frac(1, rho^3) ) $
Imponendo la condizione di stazionarietà $(d e) / (d rho) = 0$ si ricava $3 / rho^4 - 1 / rho^2 = 0$, da cui discendono analiticamente — a partire dalla sola relazione empirica di Archard — i rapporti geometrici riportati nei manuali:
$ rho_0 = sqrt(3) quad arrow.r.double quad r_e approx 1.7 r_i , quad r_m = frac(r_e + r_i, 2) approx 0.78 r_e $

==== Innesti a frizione monodisco e multidisco

Nel dimensionamento pratico, noti la coppia di slittamento richiesta $M_s$, i limiti del materiale ($f_c$, $f_0$, $p_"amm"$) e l'ingombro radiale $r_e$, si fissano $r_i$ e $r_m$ col rapporto ottimo, si determina la forza assiale di comando $F$ dalla coppia e si verifica che la pressione massima sul raggio interno rispetti $p_"max" = F / (r_i phi (r_e - r_i)) <= p_"amm"$.

- *Innesti a frizione monodisco.* Il disco condotto, rivestito su entrambe le facce, è serrato tra volano motore e spingidisco: le *coppie di superfici d'attrito attive sono due* (fronte e retro, con diametro medio $d_m = 2 r_m = r_e + r_i$). Poiché le due superfici lavorano in parallelo per la trasmissione della coppia ma sono attraversate assialmente in serie dalla stessa spinta $F$, la coppia di slittamento raddoppia mentre $p_"max"$ su ciascuna interfaccia resta determinata da $F$:
  #grid(
  columns: 2,
  gutter: 1em,
  [$ M_s = 2 f_c F r_m = f_c F d_m $
  Per determinare il *valore massimo della coppia* trasmissibile senza slittamento (al sincronismo / primo distacco) basta sostituire al coefficiente d'attrito cinetico $f_c$ quello *statico di primo distacco* $f_0$:
  $ M_p = 2 f_0 F r_m = f_0 F d_m $],
  [#include "../../figs/p3-fig04.typ"],
)

#grid(
  columns: 2,
  gutter: 1em,
  [- *Innesti e freni multidisco.* Per trasmettere coppie elevate mantenendo ridotto l'ingombro radiale, si impaccano più dischi conduttori (sulla campana) e condotti (sul mozzo scanalato) alternati, ottenendo $z$ *coppie di superfici d'attrito interfacciate* in contatto. La coppia sviluppata durante lo slittamento e il corrispondente valore massimo statico (sostituendo $f_0$ a $f_c$) risultano:
  $ M_s approx z f_c F r_m = frac(z f_c F d_m, 2) , quad M_p approx z f_0 F r_m = frac(z f_0 F d_m, 2) $],
  [#include "../../figs/p3-fig03.typ"],
)

#nota[
  *Caduta di forza assiale nei multidisco.* Nei pacchi multidisco la forza normale effettiva tra i dischi — in particolare tra quelli più lontani dal dispositivo di comando — è solo *approssimativamente* pari alla forza di comando $F$, poiché parte della spinta viene dissipata dall'attrito di scorrimento sui profili scanalati assiali (per questo compare il simbolo $approx$ e il numero di dischi $z$ è limitato anche da esigenze di ingombro e smaltimento termico al centro del pacco).
]

==== Innesti a frizione conici

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Negli innesti conici a singola coppia di superfici (semiangolo di conicità $alpha$), scomponendo l'azione normale $p thin d A$ (componente assiale $p sin alpha thin d A$ e radiale $p cos alpha thin d A$) e la forza d'attrito $f p thin d A$ lungo la generatrice (componente assiale $f p cos alpha thin d A$), l'equilibrio assiale fornisce:
    $ F = integral_A p (sin alpha + f cos alpha) thin d A $
    $ arrow.r.double quad integral_A p thin d A = frac(F, sin alpha + f cos alpha) $
    La coppia di slittamento diventa quindi:
    $ M_s = integral_A f p thin d A dot frac(r_e + r_i, 2) = frac(f F, sin alpha + f cos alpha) dot frac(r_e + r_i, 2) $
    Ottimizzando il guadagno $g = M_s / F$ (coppia trasmessa rispetto alla forza di comando assiale) imponendo $(d g) / (d f) = 0$ si ricava la conicità ottimale:
    $ tan alpha = 1 - f $
    (ad esempio, per $f = 0.3$ risulta $alpha approx 35 degree$).
  ],
  [
  
#include "../../figs/p3-fig05.typ"
  ],
)
#pagebreak()
=== Cenni sui freni

I freni obbediscono alle stesse leggi di attrito, usura e bilancio termico degli innesti, ma dissipano l'energia cinetica per decelerare o arrestare l'organo rotante, operando spesso con transitori brevi ma molto intensi in termini di forze, pressioni e flussi termici.

- *Freni multidisco.* Adottati per impieghi saltuari ad altissima energia, come nei carrelli aeronautici (es. ATR 42) per l'interruzione d'emergenza della corsa di decollo (attuatori idraulici o elettromeccanici periferici premono il pacco dischi attorno al perno del carrello e ai cuscinetti ruota). Rispetto alle frizioni multidisco impiegano dischi portanti e materiali d'attrito più spessi — per sostenere la severa usura e il rapido riscaldamento — e carcasse forate aperte per accelerare lo smaltimento termico mediante ventilazione centrifuga.



#grid(
  columns: (1.25fr, 0.75fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
  #image("/images/fig__parts_innesti_p3_9557.png", width: 75%)
],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-multidisco-foto.jpg"), max-h: 4.5cm)],
)

#v(0.5em)

- *Freni a ceppi interni o esterni e tamburo.* Costruttivamente semplici, ispezionabili e affidabili; l'accostamento dei ceppi avviene per rotazione attorno a una cerniera o traslazione radiale tramite camma (a), cilindro idraulico singolo (b) o doppio (c) o articolazione (d). L'*usura è disuniforme*: la forza d'attrito tangenziale genera rispetto alla cerniera un momento che può favorire l'accostamento (*ceppo avvolgente*, effetto autoamplificante con pressione e consumo maggiori) oppure opporvisi (*ceppo svolgente*).

#grid(
  columns: (1.35fr, 0.65fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon),
  [#align(center)[
  #image("/images/fig__parts_innesti_p3_7191.png", width: 75%)
]
],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-ceppi-foto.jpg"), max-h: 4.0cm)],
)

#v(0.5em)

- *Freni a disco e pinza.* Il dimensionamento a frenatura, attrito, surriscaldamento e coppia è analogo a quello degli innesti piani a corona. Nella pinza un pistone idraulico serra pastiglie ad alto attrito contro un disco esposto (spesso ventilato o forato, con molle di richiamo per il distacco a riposo), garantendo elevata potenza frenante e rapido raffreddamento; le temperature raggiunte in tempi brevissimi (es. freni sportivi) impongono un rigoroso controllo dei flussi termici per prevenire degrado delle prestazioni, cedimenti e innesco di combustioni sui componenti adiacenti.

#grid(
  columns: (1.3fr, 0.7fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [#align(center)[
  #image("/images/fig__parts_innesti_p3_4299.png", width: 65%)]
],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-disco-foto.jpg"), max-h: 3.5cm)],
)

#v(0.5em)

- *Freni a nastro.* Impiegati in macchine agricole e d'officina per la semplicità costruttiva (pur risultando meno dissipativi e meno precisi), sfruttano l'avvolgimento di un nastro flessibile su un tamburo mediante una leva di comando (bracci $a$ e $b$, tensioni $T_1$ e $T_2$). La forza di comando $F$ e la coppia frenante dipendono dalla posizione del fulcro e dal rapporto tra i bracci di leva; per effetto dell'attrito d'avvolgimento le azioni scambiate lungo l'arco di contatto crescono verso il ramo più teso ($T_1 != T_2$), rendendo il consumo disuniforme e concentrato all'estremità maggiormente sollecitata.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [#fig-safe(include "../../figs/innesti/ecm-c13-p3-07.typ", max-h: 4.6cm)],
  [#fig-safe(image("../../images/innesti/ecm-c13-p3-08.jpg"), max-h: 4.6cm)],
)
