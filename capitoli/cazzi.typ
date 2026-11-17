#import "../template.typ": *
#show: conf
#show figure: set text(size: 9pt)

== Flussi esterni, Paradosso di D'Alembert e regimi di Reynolds

=== Richiamo sui flussi interni e confronto con i flussi esterni

Nelle lezioni precedenti l'attenzione si è concentrata sui *flussi interni*, e in particolare sul moto stazionario in una condotta cilindrica (flusso di Hagen-Poiseuille), per il quale è possibile ricavare una *soluzione analitica esatta* delle equazioni di Navier-Stokes. Imponendo che il campo di velocità possieda un'unica componente assiale non nulla $u_x (r)$ (con componenti radiale e circonferenziale identicamente nulle, $u_r = u_theta = 0$) e che il moto sia stazionario ($partial slash partial t = 0$), i termini inerziali non lineari si annullano esattamente: sostituendo la soluzione nelle equazioni di Navier-Stokes si ottiene un'identità ($0 = 0$), con un gradiente di pressione costante lungo l'asse $x$, un profilo di velocità parabolico $u(r)$ e uno sforzo tangenziale $tau_(r x)(r)$ lineare.

Dal punto di vista matematico, il carattere *laminare* di questa soluzione risiede proprio nella sua stazionarietà e nell'assenza di componenti di velocità trasversali. Finché il numero di Reynolds $"Re" = U D slash nu$ rimane moderato (ad esempio $"Re" approx 500, 1000, 1500$), un aumento della portata accresce la velocità massima sull'asse $u_0$, ma la forma del profilo adimensionalizzato $u(r) slash u_0$ resta invariata. Tuttavia, superata una certa soglia, questa soluzione di equilibrio diventa *instabile* alle perturbazioni:
- Compaiono inizialmente in modo intermittente delle macchie turbolente localizzate (*turbulent patches* o *puff*), trasportate convettivamente a valle, all'interno delle quali il profilo parabolico viene distrutto istantaneamente e il campo di velocità diventa tridimensionale e dipendente dal tempo.
- Aumentando ulteriormente il numero di Reynolds oltre il valore critico $"Re"_c approx 2250$, le macchie turbolente invadono rapidamente l'intera condotta e il moto diventa ovunque pienamente turbolento.

Storicamente, questa distinzione netta tra i due regimi fu messa in evidenza dal celebre *esperimento di Reynolds*, iniettando un filetto di colorante sull'asse del condotto: in regime laminare il colorante procede a valle formando un filamento rettilineo ben definito e stratificato, mentre in regime turbolento si disperde immediatamente attraverso fluttuazioni caotiche trasversali, rimescolandosi su tutta la sezione.

Il moto in condotta mostra dunque un comportamento *dicotomico* (o interamente laminare o interamente turbolento), tipico dei flussi interni. Passando invece ai *flussi esterni* — come il campo di moto generato da una corrente uniforme e stazionaria di velocità $U_infinity$ che investe una sfera o un cilindro circolare indefinito di diametro $D$ — la transizione alla turbolenza perde questo carattere brusco e globale, manifestandosi in modo molto più progressivo e spazialmente confinato (inizialmente nella sola scia a valle del corpo). Inoltre, mentre nei condotti l'interesse ingegneristico risiede nel coefficiente di perdita di carico (pari a $lambda = 64 slash "Re"$ in regime laminare), nei flussi esterni l'analisi si concentra sulla forza risultante scambiata tra fluido e corpo, espressa tramite il *coefficiente di resistenza* $C_D$. Come si dimostrerà tramite l'analisi dimensionale, per un fluido incomprimibile anche l'intera configurazione dinamica attorno al cilindro o alla sfera non dipende separatamente da $U_infinity$, $D$ o dalla viscosità cinematica $nu$, bensì unicamente dalla loro combinazione adimensionale, ovvero dal numero di Reynolds $"Re" = U_infinity D slash nu$.

=== Soluzione a potenziale attorno a un cilindro o sfera e Paradosso di D'Alembert

Consideriamo il campo di moto irrotazionale stazionario attorno a un cilindro circolare indefinito (o a una sfera), trascurando le variazioni di quota ($chi$ trascurabile), per cui vale ovunque $1 slash 2 thin rho u^2 + p = "cost"$:

#grid(
  columns: (1.18fr, 0.82fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Simmetria e distribuzione di pressione:* la soluzione a potenziale fornisce un andamento delle linee di corrente perfettamente simmetrico sia tra parte superiore e inferiore, sia tra monte e valle. Percorrendo la superficie del corpo al variare dell'angolo polare $theta in [0, pi]$ (con $theta = 0$ punto frontale a monte e $theta = pi$ punto posteriore a valle):
      - In $theta = 0$ (e $theta = pi$) si hanno i *punti di arresto* (o di ristagno): la velocità si annulla ($u = u_"min" = 0$) e per Bernoulli la pressione raggiunge il valore massimo ($p = p_"max"$).
      - Procedendo da $theta = 0$ verso i fianchi del corpo ($theta = pi slash 2$), le linee di corrente si addensano, il fluido accelera fino a $u = u_"max"$ e la pressione scende al valore minimo $p = p_"min"$.
      - Nella metà a valle ($theta in [pi slash 2, pi]$), per la simmetria del campo a potenziale, il fluido decelera nuovamente senza staccarsi dalla parete, realizzando un *recupero completo di pressione* fino a ritrovare $p = p_"max"$ in $theta = pi$ (curva continua nel grafico a lato; la curva tratteggiata mostra invece la perdita di recupero $Delta p$ nei flussi reali con distacco).
  ],
  [
    #include "../figs/cap9-fig01.typ"
  ]
)

#nota[
  *Paradosso di D'Alembert* \
  Calcolando la forza risultante esercitata dal fluido sul corpo tramite l'integrale delle pressioni (con $hat(n)$ normale uscente dalla superficie $S$),
  $ arrow(F) = - integral_S p hat(n) dif S = arrow(0) $
  si ottiene una forza identicamente nulla a causa della perfetta simmetria delle pressioni tra monte e valle. Più in generale, il *paradosso di D'Alembert* afferma che in un campo di moto stazionario, incomprimibile e irrotazionale attorno a un corpo immerso di forma qualsiasi (anche un profilo alare non simmetrico), la componente della forza nella direzione della corrente indisturbata (*resistenza aerodinamica*) è sempre identicamente nulla, mentre può essere non nulla la componente trasversale (*portanza*).
]

Infine, poiché nei campi a potenziale la vorticità è nulla ($arrow(omega) = arrow(0)$) e il problema è lineare, non può mai innescarsi la transizione alla turbolenza.

=== Evoluzione reale del campo di moto attorno a una sfera/cilindro al variare di $"Re"$

Nei fluidi viscosi reali, la condizione di aderenza a parete genera vorticità nello strato limite e il campo di moto effettivo attorno a una sfera (o cilindro) cambia radicalmente al variare del numero di Reynolds $"Re" = U_infinity D slash nu$. Sperimentalmente, tali configurazioni possono essere visualizzate immergendo un cilindro in una corrente d'acqua uniforme e generando per elettrolisi, tramite sottili fili metallici percorsi da corrente elettrica, delle microbollicine di idrogeno opportunamente illuminate: finché il campo di moto è stazionario, le traiettorie descritte dalle bollicine in una fotografia a lunga esposizione coincidono esattamente con le *linee di corrente* (che possono essere confrontate direttamente con le simulazioni numeriche CFD).

#v(0.2em)

#grid(
  columns: (1.15fr, 0.85fr),
  row-gutter: 0.95em,
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),

  // 1. Re << 1
  [
    *1. Campo di moto per $"Re" << 1$ (regime di Stokes, fino a $"Re" approx 1$):* \
    le forze viscose dominano su quelle inerziali. Le linee di corrente seguono il profilo del corpo senza distacco e presentano a prima vista un andamento quasi simmetrico tra monte e valle, apparentemente simile alla configurazione del flusso a potenziale. Tuttavia la fisica sottostante è opposta: nel flusso a potenziale la viscosità è assente e la resistenza è nulla, mentre per $"Re" << 1$ la viscosità domina l'intero campo (che è fortemente rotazionale e viscoso) e un'analisi attenta mostra già una lieve asimmetria tra monte e valle.
  ],
  [
    #include "../figs/cap9-fig02.typ"
  ],

  // 2. Re ~ 5 - 40
  [#v(1em)
    *2. Regime $"Re" tilde.op 5 div 40$ (ricircolo stazionario):* \
    superata l'unità ($"Re" approx 5 div 10$), l'inerzia del fluido non è più trascurabile e la simmetria monte-valle si rompe nettamente. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso e si separa dalla parete: si formano due *bolle di ricircolazione* stazionarie, simmetriche e controrotanti (con corrente da sinistra a destra, il vortice superiore ruota in senso orario e quello inferiore in senso antiorario). Aumentando il numero di Reynolds (ad esempio passando da $"Re" approx 10$ a $"Re" approx 26$ e fino a $"Re" approx 40$), le due bolle si allungano progressivamente a valle fino a raggiungere e superare una lunghezza pari al diametro $D$ del cilindro, ma il campo di moto resta rigorosamente *stazionario* e laminare (la velocità in ogni punto dipende dallo spazio ma non dal tempo).
  ],
  [
    #include "../figs/cap9-fig03.typ"
  ],

  // 3. Distacco dello strato limite
  [#v(1em)
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente è favorevole ($partial p slash partial s < 0$) e accelera il fluido; a valle di $p_"min"$ il gradiente diventa avverso ($partial p slash partial s > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u(n)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #include "../figs/cap9-fig04.typ"
  ],

  // 4. Re > 40
  [#v(2em)
    *4. Regime $"Re" > 40$ (instabilità della scia e scia di von Kármán):* \
    superata la soglia critica $"Re" approx 40$, le due bolle di ricircolo allungate diventano instabili e non riescono più a rimanere adese al corpo: la simmetria si rompe e s'innesca un *distacco periodico e alternato di vortici* controrotanti convogliati a valle (*scia di von Kármán*). Il fenomeno cruciale è che, pur imponendo condizioni al contorno perfettamente stazionarie, il campo di moto perde spontaneamente la propria stazionarietà e sviluppa una *frequenza caratteristica di oscillazione* autonoma. Ciò è una manifestazione diretta della *non linearità* delle equazioni di Navier-Stokes (analogamente a una corda di violoncello che, sollecitata dal movimento quasi stazionario dell'archetto a $approx 0.1 "Hz"$, vibra spontaneamente alla propria frequenza naturale di $440 "Hz"$).
  ],
  [
    #include "../figs/cap9-fig05.typ"
  ]
)

#v(0.8em)
*5. Transizione alla turbolenza nella scia per $"Re"$ elevati:* \
aumentando ulteriormente il numero di Reynolds, l'effetto non lineare genera, accanto alla frequenza principale del distacco alternato (associata ai grandi vortici coerenti di dimensione paragonabile al diametro $D$), molteplici altre frequenze. I vortici principali appaiono sempre più frastagliati e al loro interno si sviluppano vortici di piccola scala, disordinati e caotici, finché la scia diventa pienamente *turbolenta*. A differenza del moto in condotta, tuttavia, questa transizione presenta due peculiarità fondamentali:
- è *progressiva* al crescere di $"Re"$ (passando gradualmente dal moto stazionario, all'instazionarietà periodica monofrequenza, fino al caos multiscala);
- è *spazialmente localizzata*: la turbolenza rimane confinata nella regione della scia a valle del corpo, mentre a monte e a grande distanza dal cilindro il flusso resta indisturbato e laminare.

#v(1.5em)

== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#nota[
  *Equazione del trasporto della vorticità di Helmholtz* \
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.

= Analisi dimensionale

== Teorema $pi$ o di Buckingham

Il *teorema $pi$ di Buckingham* è un principio di validità generale nella fisica e nell'ingegneria (non limitato alla sola meccanica dei fluidi) che permette di ridurre il numero di variabili indipendenti di un problema fisico sfruttando l'omogeneità dimensionale:
- Si consideri una grandezza fisica dipendente osservata $a$ che sia funzione di $n$ *parametri di controllo* indipendenti $a_1, a_2, dots.h, a_n$.
- Ciascuna di queste grandezze possiede determinate dimensioni fisiche (velocità, accelerazione, densità, ecc.), tutte riconducibili a un insieme di $r$ *dimensioni fondamentali indipendenti* $d_1, d_2, dots.h, d_r$ (quali lunghezza $L$, massa $M$, tempo $T$, temperatura, ecc.):
$
  a = f_1 (a_1, a_2, dots.h, a_n) quad "con" quad r "dimensioni fondamentali indipendenti" (d_1, d_2, dots.h, d_r) .
$
- Il teorema $pi$ afferma che tale legge fisica può essere sempre riscritta in forma compatta e *adimensionale* in funzione di soli $(n - r)$ gruppi adimensionali indipendenti:
$
  pi = f_2 (pi_1, pi_2, dots.h, pi_(n-r))
$
dove $pi$ è la grandezza osservata $a$ resa adimensionale mediante una combinazione opportuna dei parametri di controllo, e $pi_1, dots.h, pi_(n-r)$ sono i gruppi adimensionali che governano il fenomeno.

Questa riformulazione offre tre vantaggi fondamentali:
- *Riduzione della complessità:* il numero di variabili indipendenti da cui dipende il fenomeno scende da $n$ a $(n - r)$.
- *Significato fisico e indipendenza dalle unità di misura:* i gruppi $pi_i$ sono numeri puri dotati di un preciso significato fisico (rapporti tra effetti competitivi) e la relazione $f_2$ prescinde completamente dal sistema di unità di misura scelto, che è del tutto arbitrario.
- *Ruolo dell'esperimento:* l'analisi dimensionale non fornisce a priori la forma analitica della funzione $f_2$, né garantisce da sola di aver incluso tutti i parametri fisicamente rilevanti; tuttavia permette di formulare un'ipotesi funzionale snella da verificare e calibrare mediante *prove sperimentali* o simulazioni.

== Esempio di Taylor: stima dell'energia di un'esplosione nucleare

Un'applicazione storica celebre del teorema $pi$ fu realizzata dal fisico inglese G. I. Taylor durante la Seconda Guerra Mondiale per stimare la resa energetica $E$ del primo test nucleare statunitense (Trinity Test) a partire unicamente da una sequenza di fotografie declassificate dell'esplosione. Poiché le immagini riportavano una scala geometrica di riferimento e l'istante temporale $t$ trascorso dalla detonazione, Taylor poté misurare l'evoluzione nel tempo del raggio caratteristico $r_f (t)$ dell'onda d'urto sferica ("palla di fuoco").

Taylor ipotizzò che il raggio $r_f$ dipendesse essenzialmente da $n = 3$ parametri di controllo: l'energia rilasciata dall'esplosione $E$, la densità dell'aria ambiente indisturbata $rho_0$ e il tempo $t$:

$
  cases(
    delim: "}",
    r_f = f(E, rho_0, t),
    [E] = M L / T^2 L = M L^2 T^(-2) \; quad [rho_0] = M L^(-3) \; quad [t] = T,
    n = 3,
    r = 3
  ) quad n - r = 0 quad arrow.r quad pi = "cost."
$

Poiché le dimensioni fondamentali coinvolte sono $r = 3$ ($M, L, T$), il teorema di Buckingham prevede $n - r = 3 - 3 = 0$ parametri adimensionali indipendenti: di conseguenza, il raggio adimensionalizzato $pi = R^*$ deve dipendere da zero variabili, ossia deve essere una *costante universale*:

$
  (r_f) / (E^alpha rho_0^beta t^gamma) = "costante" <==> "Raggio adimensionato", R^* .
$

Determiniamo gli esponenti $alpha, beta, gamma$ imponendo l'uguaglianza dimensionale tra $r_f$ (di dimensione $[L]^1 [M]^0 [T]^0$) e il monomio $E^alpha rho_0^beta t^gamma$:

$
  & r_f prop E^alpha rho_0^beta t^gamma \
  & [L] tilde.op M^alpha L^(2 alpha) / T^(2 alpha) M^beta / L^(3 beta) T^gamma \
  & cases(
      alpha + beta = 0,
      2 alpha - 3 beta = 1,
      gamma - 2 alpha = 0
    ) arrow.r cases(
      alpha = -beta,
      -2 beta - 3 beta = 1,
      gamma = 2 alpha
    ) arrow.r cases(
      beta = -1/5,
      alpha = 1/5,
      gamma = 2/5
    ) \
  & r_f = R^* ((E t^2) / rho_0)^(1/5) arrow.r (r_f (t_2)) / ((E t_2^2) / rho_0)^(1/5) = dots.h = (r_f (t_1)) / ((E t_1^2) / rho_0)^(1/5)
$

Passando ai logaritmi, la legge di scala teorica si traduce nell'equazione di una *retta* nel piano bilogaritmico $(ln t, ln r_f)$:
$
  ln r_f = 2/5 ln t + 1/5 ln (E / rho_0) + ln R^* .
$
Riportando in grafico le coppie sperimentali $(t, r_f)$ ricavate dalle fotografie, Taylor verificò innanzitutto che i punti si allineavano effettivamente lungo una retta di pendenza $2/5$ (confermando la correttezza dei tre parametri scelti) e, nota la densità dell'aria $rho_0$ e la costante $R^*$ (di ordine unitario), poté risalire dall'intercetta della retta alla stima dell'energia $E$ della bomba.

== Coefficiente di resistenza aerodinamica

Applichiamo ora il teorema di Buckingham al problema del flusso esterno stazionario attorno a un cilindro o a una sfera di diametro $D$, investiti da una corrente uniforme di velocità $U_infinity$ in un fluido di densità $rho$ e viscosità dinamica $mu$. La grandezza osservata di nostro interesse è la *forza di resistenza aerodinamica* $F_D = arrow(F) dot hat(i)$ (componente della forza risultante nella direzione del moto), che dipende da $n = 4$ parametri di controllo:

$
  rho, mu quad F_D = arrow(F) dot hat(i)
$

$
  F_D = f underbrace((U_infinity, rho, mu , D), n = 4)
$

Analizzando le dimensioni dei parametri rispetto alle $r = 3$ grandezze fondamentali $(M, L, T)$, si ottiene un unico gruppo adimensionale indipendente ($n - r = 4 - 3 = 1$), che coincide con il *numero di Reynolds*:

$
  & [U_infinity] = L / T quad [mu] = M / (L T) quad [rho] = M / L^3 quad [D] = L \
  & r = 3 \
  & (n - 3) = 1 ==> "Re" = (rho U_infinity D) / mu = (U_infinity D) / nu \
  & (F_D) / (1/2 rho U_infinity^2 D^2) = C_D = C_D ("Re") \
  & (F_D) / (mu U_infinity D) = k = k("Re")
$

La forza adimensionalizzata (espressa nella convenzione aerodinamica standard tramite il *coefficiente di resistenza* $C_D$, scalato con la pressione dinamica $1/2 rho U_infinity^2$ e l'area caratteristica $D^2$, oppure nella forma viscosa $k = F_D slash (mu U_infinity D)$ usata per i bassi numeri di Reynolds) è dunque funzione *unicamente* del numero di Reynolds.

Su questo risultato fondamentale valgono tre osservazioni fisiche importanti:
- *Ruolo della viscosità cinematica $nu = mu slash rho$:* per quanto riguarda la cinematica del campo di moto e la costruzione del parametro governante, la densità $rho$ e la viscosità dinamica $mu$ intervengono solo attraverso il loro rapporto $nu$. Se infatti si cercasse il gruppo adimensionale che governa il campo di velocità considerando direttamente i soli $n = 3$ parametri $(U_infinity, D, nu)$, le cui dimensioni $[U_infinity] = L T^(-1)$, $[D] = L$ e $[nu] = L^2 T^(-1)$ non contengono la massa $M$, il numero di dimensioni indipendenti scenderebbe a $r = 2$ (sole lunghezza $L$ e tempo $T$). Si otterrebbe così nuovamente $n - r = 3 - 2 = 1$ parametro adimensionale, ritrovando esattamente $"Re" = U_infinity D slash nu$.
- *Ipotesi di fluido newtoniano:* la possibilità di riassumere il comportamento reologico del fluido in un unico scalare costante $mu$ (o $nu$) vale esclusivamente per i *fluidi newtoniani*, nei quali gli sforzi tangenziali viscosi dipendono linearmente dai gradienti di velocità. Per fluidi non newtoniani (la cui legge costitutiva è più complessa) compaiono ulteriori parametri reologici e il solo numero di Reynolds non è più sufficiente.
- *Ipotesi di incomprimibilità ed estensione al numero di Mach:* l'analisi svolta presuppone che la densità $rho$ sia costante, il che equivale ad assumere che le perturbazioni di pressione (onde acustiche) si propaghino nel fluido a velocità infinita. Se invece il fluido è comprimibile e subisce dilatazioni o compressioni significative, occorre includere tra i parametri di controllo anche la *velocità del suono* $c$ (con $[c] = L T^(-1)$):
  $
    F_D = f(U_infinity, rho, mu, D, c) quad ==> quad n = 5, quad r = 3 quad ==> quad n - r = 2 .
  $
  In tal caso il coefficiente di resistenza dipende da *due* gruppi adimensionali: il numero di Reynolds e il *numero di Mach* $"Ma" = U_infinity slash c$,
  $
    C_D = C_D ("Re", "Ma") .
  $
  Finché la velocità del flusso è molto piccola rispetto a quella del suono ($U_infinity << c$), le onde acustiche viaggiano a velocità quasi infinita rispetto al moto del fluido e la dipendenza da $"Ma"$ può essere trascurata: nella pratica aerodinamica, il flusso può essere considerato incomprimibile fino a $"Ma" approx 0.3$ (corrispondente in aria a velocità fino a circa $100 div 110 "m/s"$).

=== Interpretazione fisica del numero di Reynolds

Per comprendere il significato fisico profondo del numero di Reynolds, consideriamo l'equazione di Navier-Stokes per un fluido incomprimibile (trascurando il termine gravitazionale delle forze di volume) e stimiamo l'*ordine di grandezza* dei singoli termini utilizzando le scale caratteristiche del problema: la velocità indisturbata $U_infinity$, la lunghezza geometrica $D$ e la scala temporale convettiva $T tilde.op D slash U_infinity$:

$
  underbrace(rho (partial arrow(u)) / (partial t), rho U_infinity^2 / D \ "Instazionarietà") + underbrace(rho arrow(u) dot nabla arrow(u), rho U_infinity^2 / D \ "Convezione di q.tà di moto (inerzia)") = -nabla p + underbrace(mu Delta arrow(u), mu U_infinity / D^2 \ "Diffusione viscosa")
$

Mentre il termine di pressione $-nabla p$ si adatta al regime di moto (o viene imposto dall'esterno come nei condotti), il confronto diretto tra l'ordine di grandezza del *termine convettivo inerziale* (dove compaiono il prodotto di due velocità e una derivata spaziale $nabla tilde.op 1 slash D$) e quello del *termine diffusivo viscoso* (dove compare il laplaciano $Delta tilde.op 1 slash D^2$) fornisce esattamente il numero di Reynolds:

$
  "Re" & = "convezione" / "diffusione" = (rho U_infinity^2 / D) / (mu U_infinity / D^2) = (rho U_infinity D) / mu = \
       & = U_infinity / (nu / D) = "velocità convettiva" / "velocità diffusiva"
$

Assegnare il valore del numero di Reynolds significa dunque soppesare l'importanza relativa dei processi di trasporto convettivo rispetto a quelli di diffusione e dissipazione viscosa: a densità costante, tutta la dinamica del fluido può essere letta come una competizione continua tra convezione e diffusione. Da questa interpretazione discendono tre conseguenze fondamentali per la transizione dei regimi di moto:
- *Bassi numeri di Reynolds ($"Re" << 1$):* il termine diffusivo viscoso $mu Delta arrow(u)$ domina nettamente sul termine convettivo $rho (arrow(u) dot nabla) arrow(u)$, che risulta trascurabile. Poiché il termine convettivo è l'*unico termine non lineare* dell'equazione di Navier-Stokes, la sua scomparsa (per $"Re" << 1$, oppure per vincoli geometrici esatti come nel moto di Poiseuille in condotta) rende il problema matematicamente *lineare*.
- *Linearità vs laminarità:* un campo di moto governato da un'equazione lineare è necessariamente *laminare*; non vale però il viceversa, poiché un moto laminare non è necessariamente lineare (ad esempio, attorno al cilindro per $"Re" in [5, 40]$ le bolle di ricircolo stazionarie nascono proprio dagli effetti inerziali non lineari, pur restando il flusso laminare).
- *Alti numeri di Reynolds e "autonomia" della turbolenza:* al crescere di $"Re"$ (fino a valori di $10^4, 10^5$ e oltre), il termine convettivo non lineare diventa dominante. È proprio questa *non linearità* che permette al fluido di svincolarsi dalle simmetrie imposte: già a $"Re" > 40$ essa innesca il distacco alternato dei vortici, e ad alti $"Re"$ conduce alla turbolenza. Dal punto di vista fisico, un campo di moto *turbolento* si distingue dunque perché non risponde più in modo univoco, simmetrico e stazionario alle condizioni al contorno imposte, ma sviluppa per via non lineare una propria dinamica *autonoma* e caotica.