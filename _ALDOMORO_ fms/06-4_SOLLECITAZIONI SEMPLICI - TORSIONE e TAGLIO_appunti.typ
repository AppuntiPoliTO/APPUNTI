#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw
#let canvas(..args) = align(center, cetz-canvas(..args))

#set page(paper: "a4", margin: 1.5cm, numbering: "1", number-align: bottom + right)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")

#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)

// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body
)
#let circ = sym.degree
#let varphi = $phi$
#let varepsilon = $epsilon$
#let vartheta = $theta$


#set heading(numbering: "1.")


// ============================================================================
// CODICE TYPST GENERATO DA GEMINI
// ============================================================================



// === Blocco_01_Slide_01-15 ===

= Sollecitazioni semplici: Torsione

== Torsione in travi a sezione circolare

La soluzione analitica esatta per il problema della torsione si ricava esclusivamente per la trave a sezione circolare soggetta a due momenti torcenti uguali e contrari $M_x = M_t$ applicati in corrispondenza delle sue sezioni trasversali di estremità.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    In tale configurazione geometrica vale l'ipotesi fondamentale di conservazione delle sezioni piane:
    - per effetto dell'azione del momento torcente $M_t$, ciascuna sezione trasversale ruota rigidamente nel proprio piano senza subire ingobbamenti fuori piano;
    - sulla generica sezione trasversale $S$, che divide idealmente il solido nei tronchi $1$ e $2$, agisce unicamente la componente di tensione tangenziale $tau$.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig01.typ"
  ]
)
#v(1em)

=== Scorrimento, angolo di torsione ed equazione di equivalenza

Isoliamo il tronco $1$ di lunghezza $l$. Poiché ogni sezione trasversale ruota rigidamente rispetto alla precedente, la generica fibra longitudinale $A_0 B_0$, inizialmente parallela all'asse $x$ della trave (in rosso), in seguito alla deformazione si dispone secondo un tratto di elica cilindrica $A_0 B$ (in blu), assumendo un'inclinazione pari all'angolo di scorrimento $gamma_1$.

Nell'ipotesi di piccoli spostamenti, lo scorrimento $gamma_1$ si approssima con la sua tangente trigonometrica:

$ gamma_1 approx tan gamma_1 = (B_0 B) / l $

Osservando la vista frontale della sezione trasversale nel piano $y z$, la lunghezza dell'arco $B_0 B$ sotteso dall'angolo di rotazione torsionale $theta$ a distanza radiale $r_1$ dal centro $O'$ vale:

$ B_0 B = r_1 theta $

Sostituendo l'espressione dell'arco nella relazione cinematica precedente, si ottiene il legame fondamentale tra lo scorrimento angolare $gamma_1$ e l'angolo di torsione $theta$:

$ gamma_1 = (r_1 theta) / l = theta / l r_1 $

Per un materiale elastico lineare, la tensione tangenziale $tau$ è legata da proporzionalità diretta allo scorrimento angolare $gamma$ mediante la legge di Hooke per le tensioni tangenziali:

$ tau = G gamma => tau = G theta / l r $

dove $G$ rappresenta il modulo di elasticità tangenziale (o modulo di taglio). Nel caso di materiali omogenei e isotropi, il modulo $G$ si esprime in funzione del modulo di elasticità normale $E$ (modulo di Young) e del coefficiente di contrazione trasversale di Poisson $nu$:

$ G = E / (2 (1 + nu)) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Per effetto del momento torcente applicato, nel punto generico $B$ a distanza $r_1$ dal centro agisce la tensione tangenziale $tau_1$: sull'area elementare $d A_1$ si genera pertanto la forza infinitesima $d F_1 = tau_1 d A_1$. Analogamente, sull'area elementare $d A_2$ posta a distanza $r_2$ agisce la forza $d F_2 = tau_2 d A_2$. Su ciascun elemento infinitesimo della sezione trasversale agisce quindi la forza:

    $ d F_i = tau_i d A_i $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig02.typ"
  ]
)
#v(1em)

Imponendo l'equilibrio alla rotazione intorno all'asse longitudinale $x$ del tronco di trave, la somma dei momenti statici elementari generati dalle forze tangenziali interne deve eguagliare il momento torcente esterno $M_t$:

$ M_t = tau_1 d A_1 r_1 + tau_2 d A_2 r_2 + dots = sum_(i = 1)^n tau_i d A_i r_i = integral_A tau r d A $

Sostituendo la distribuzione elastica lineare $tau = G (theta / l) r$ all'interno dell'integrale d'area e portando fuori i termini costanti rispetto alla geometria della sezione, si ricava l'equazione di equivalenza per la torsione:

$ M_t = integral_A tau r d A = integral_A G theta / l r dot r d A = G theta / l integral_A r^2 d A = G theta / l I_P $

dove $I_P = integral_A r^2 d A$ è il momento d'inerzia polare della sezione trasversale.

=== Rigidezza torsionale, distribuzione tensionale e modulo di resistenza

Dall'equazione di equivalenza si esplicitano direttamente il momento torcente e l'angolo di rotazione torsionale:

$ M_t = G I_P theta / l quad <=> quad theta = (M_t l) / (G I_P) $

#nota[
  Il termine $(G I_P) / l$ prende il nome di *rigidezza torsionale* della trave. Considerando un tronco di trave di lunghezza unitaria ($l = 1$), si definisce *angolo unitario di torsione* $theta_u$ il rapporto:
  $ theta_u = theta / l = M_t / (G I_P) $
]

Sostituendo l'espressione dell'angolo unitario di torsione $theta / l = M_t / (G I_P)$ all'interno della legge di Hooke $tau = G (theta / l) r$, si ottiene la formula fondamentale per il calcolo della tensione tangenziale di torsione:

$ tau = M_t / I_P r $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    La tensione tangenziale di torsione presenta quindi una distribuzione lineare lungo il raggio della sezione trasversale circolare: è nulla in corrispondenza del baricentro ($r = 0$) e raggiunge il valore massimo sul contorno esterno, per $r = D / 2$ (con $D$ diametro esterno della sezione):

    $ tau_"max" = (M_t D) / (2 I_P) $

    Definendo il *modulo di resistenza torsionale* $W_t$ come:

    $ W_t = I_P / (D / 2) = (2 I_P) / D $

    la tensione tangenziale massima di torsione assume la forma compatta:

    $ tau_"max" = M_t / (I_P / (D / 2)) = M_t / W_t $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig03.typ"
  ]
)
#v(1em)

Si riportano le espressioni esplicite del modulo di resistenza a torsione $W_t$ per i due casi di interesse applicativo:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Sezione circolare piena* di diametro $D$:
      $ W_t = I_P / (D / 2) = ((pi D^4) / 32) / (D / 2) = (pi D^3) / 16 $

    - *Sezione circolare cava* (anulare) di diametro esterno $D$ e diametro interno $d$:
      $ W_t = I_P / (D / 2) = (pi (D^4 - d^4) / 32) / (D / 2) = (pi (D^4 - d^4)) / (16 D) $
      Introducendo il rapporto tra i diametri $m = d / D$, la relazione si può riscrivere come:
      $ W_t = (pi D^3) / 16 (1 - m^4) $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig04.typ"
  ]
)
#v(1em)

== Torsione in travi a sezione rettangolare

Nel caso generale di travi aventi sezione trasversale non circolare, l'ipotesi cinematica di conservazione delle sezioni piane a seguito dell'applicazione del momento torcente cessa di essere valida.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Le sezioni trasversali della trave subiscono un *ingobbamento* (deformazione fuori dal proprio piano) e la distribuzione della tensione tangenziale di torsione sulla generica sezione non può essere dedotta mediante il procedimento elementare adottato per le travi a sezione circolare.

    Per determinare lo stato tensionale si ricorre pertanto a metodi indiretti, sfruttando le analogie matematiche che il problema della torsione alla Saint-Venant presenta con altri problemi fisici già risolti; in particolare si fa uso dell'*analogia idrodinamica*.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig05.typ"
  ]
)
#v(1em)

=== Analogia idrodinamica e distribuzione delle tensioni tangenziali

Immaginiamo un recipiente a fondo orizzontale avente contorno rettangolare identico alla sezione trasversale della trave di lati $a$ (lato lungo) e $b$ (lato corto) soggetta a torsione, all'interno del quale sia posto un liquido in rotazione.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    L'analogia idrodinamica stabilisce che:
    - tra la velocità $v$ del liquido in un generico punto del recipiente e la tensione tangenziale di torsione $tau$ nel corrispondente punto della sezione della trave sussiste una relazione di proporzionalità diretta;
    - l'andamento delle linee di flusso della velocità del liquido ricalca esattamente la direzione delle tensioni tangenziali $tau$ sulla sezione.

    Poiché la velocità del fluido si annulla nei quattro vertici del recipiente ed è massima nei punti medi dei lati lunghi, in modo del tutto analogo la tensione tangenziale $tau$ è nulla negli spigoli della sezione rettangolare e raggiunge il valore massimo nei punti medi $A$ dei lati lunghi di dimensione $a$ ($tau_A = tau_"max" > tau_B$, dove $B$ indica i punti medi dei lati corti $b$).
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig06.typ"
  ]
)
#v(1em)

=== Calcolo della tensione massima e fattore di rigidezza torsionale

Il valore massimo della tensione tangenziale di torsione si manifesta nei punti $A$ (punti medi dei lati lunghi di dimensione $a$) ed è espresso dalla relazione:

$ tau_"max" = tau_A = (alpha M_t) / (a b^2) = M_t / W_t $

dove il modulo di resistenza a torsione della sezione rettangolare vale $W_t = (a b^2) / alpha$. Il coefficiente adimensionale $alpha$ dipende esclusivamente dal rapporto geometrico $a / b$ tra il lato lungo e il lato corto della sezione e si ricava sperimentalmente o analiticamente mediante la seguente tabella:

#align(center)[
  #table(
    columns: 7,
    align: center + horizon,
    table.header([$a / b$], [$1$], [$1.5$], [$2$], [$3$], [$10$], [$infinity$]),
    table.hline(),
    [$alpha$], [$4.80$], [$4.33$], [$4.06$], [$3.74$], [$3.20$], [$3$],
  )
]

Per caratterizzare la deformabilità torsionale delle sezioni non circolari si introduce il *fattore di rigidezza torsionale* $I_t$ (che sostituisce il momento d'inerzia polare $I_P$ delle sezioni circolari), definito per la sezione rettangolare in funzione dei lati $a, b$ come:

$ I_t = (a b^3) / alpha $

In funzione del fattore di rigidezza torsionale $I_t$, la tensione tangenziale massima e l'angolo unitario di torsione $theta_u$ si riscrivono nella forma generale:

$ tau_"max" = M_t / W_t = M_t / I_t b, quad theta_u = M_t / (G I_t) $


// === Blocco_02_Slide_16-30 ===

== Torsione in travi a sezione aperta sottile

I risultati ricavati per le travi a sezione rettangolare, ipotizzando che il rettangolo diventi molto allungato e sottile ($a gt.double b$), consentono di studiare il comportamento torsionale delle sezioni sottili aperte tipiche dei profilati strutturali a $C$, $T$, $Z$, $I$, $H$ ed $L$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Nel caso di sezioni in parete sottile aperta, le linee di flusso delle tensioni tangenziali $tau$ di torsione non possono chiudersi attorno a una cavità interna, ma sono costrette a percorrere in andata e ritorno i lati lunghi di ciascun singolo tratto rettangolare elementare che compone la sezione stessa.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig07.typ"
  ]
)
#v(1em)

=== Scomposizione in tratti rettilinei, rigidezza e tensione massima

Suddividendo la sezione aperta sottile in $n$ tratti rettilinei elementari (ciascuno assimilabile a un rettangolo allungato di lunghezza $a_i$ e spessore $b_i$), per il generico tratto $i$-esimo valgono le relazioni della sezione rettangolare:

$ tau_("max", i) = M_(t, i) / I_(t, i) b_i, quad theta_(u, i) = M_(t, i) / (G I_(t, i)) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Per garantire la congruenza cinematica e la continuità strutturale della sezione, l'intera sezione trasversale deve ruotare della medesima quantità di cui ruotano i singoli elementi che la compongono. Gli angoli unitari di torsione dei singoli tratti $theta_(u, i)$ devono quindi eguagliare l'angolo unitario di torsione complessivo $theta_u$ dell'intera sezione:

    $ theta_(u, i) = M_(t, i) / (G I_(t, i)) = theta_u = M_t / (G I_t) => M_(t, i) = I_(t, i) / I_t M_t = I_(t, i) / (sum_(i = 1)^n I_(t, i)) M_t $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig08.typ"
  ]
)
#v(1em)

Sostituendo l'espressione del momento torcente parziale $M_(t, i)$ nella relazione della tensione tangenziale massima del singolo tratto $i$-esimo, si ottiene:

$ tau_("max", i) = M_(t, i) / I_(t, i) b_i = M_t / I_t b_i = M_t / (sum_(i = 1)^n I_(t, i)) b_i $

#nota[
  Dalla relazione $tau_("max", i) = (M_t / I_t) b_i$ si deduce che, in una trave a sezione aperta sottile, la massima tensione tangenziale di torsione assoluta si localizza sempre nel tratto caratterizzato dallo spessore $b_i$ maggiore.
]

Il fattore di rigidezza torsionale complessivo $I_t$ della sezione aperta sottile è dato dalla somma dei fattori di rigidezza torsionale $I_(t, i)$ dei singoli tratti rettilinei:

$ I_t = sum_(i = 1)^n I_(t, i) = sum_(i = 1)^n (a_i b_i^3) / alpha_i $

Poiché per una parete sottile la lunghezza di ciascun tratto è molto maggiore del relativo spessore ($a_i gt.double b_i$), dalla tabella dei coefficienti per la sezione rettangolare si assume il valore limite $alpha_i = 3$, ottenendo:

$ I_t = 1 / 3 sum_(i = 1)^n a_i b_i^3 $

dove $a_i$ indica la lunghezza della linea media dell'$i$-esimo tratto rettilineo della sezione e $b_i$ il corrispondente spessore.

== Torsione in travi a sezione chiusa sottile

Le travi dotate di sezione trasversale chiusa (cava) in parete sottile — ovvero caratterizzata da uno spessore $s$, costante o variabile lungo il perimetro, piccolo rispetto alle dimensioni globali della sezione — si prestano a una trattazione analitica agevole (teoria di Bredt), indipendentemente dalla forma geometrica del contorno.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    In virtù dell'ipotesi di piccolo spessore, è lecito trascurare la variazione della tensione lungo lo spessore della parete, assumendo la tensione tangenziale $tau$ uniforme nello spessore $s$ e pari al valore medio $tau_m$ valutato in corrispondenza della linea mediana (tratteggiata) compresa tra il bordo interno e il bordo esterno della parete:

    $ tau = tau_m $

    Consideriamo una porzione di parete di lunghezza infinitesima $d l$ lungo la linea mediana: su tale elemento di area $d A = s d l$ agisce la forza tangenziale infinitesima:

    $ d F = tau d A = tau s d l $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig09.typ"
  ]
)
#v(1em)

=== Formula di Bredt e angolo unitario di torsione

Per l'ipotesi di piccolo spessore, la forza elementare $d F$ risulta tangente alla linea mediana della parete. Indicando con $delta$ il braccio di tale forza rispetto al baricentro della sezione (ossia la distanza ortogonale tra il baricentro e la retta tangente alla linea mediana nel punto di applicazione di $d F$), il momento torcente elementare $d M_t$ rispetto all'asse longitudinale $x$ della trave vale:

$ d M_t = delta d F = delta tau s d l = 2 tau s d Omega $

avendo osservato geometricamente che il prodotto $delta d l = 2 d Omega$ rappresenta il doppio dell'area $d Omega$ del triangolo infinitesimo avente per base l'arco $d l$ e per altezza il braccio $delta$. Integrando tale contributo lungo l'intera linea mediana chiusa della sezione trasversale e ricordando che il flusso tangenziale $tau s$ deve mantenersi costante per equilibrio longitudinale, si ottiene il momento torcente totale:

$ M_t = integral d M_t = integral_Omega 2 tau s d Omega = 2 tau s Omega $

dove $Omega$ è l'area complessiva racchiusa dalla linea mediana della parete (comprensiva della cavità interna). Esplicitando la tensione tangenziale si giunge alla *prima formula di Bredt*:

$ tau = tau_m = M_t / (2 Omega s) $

#nota[
  L'angolo unitario di torsione $theta_u$ per una trave a sezione chiusa sottile è espresso dalla *seconda formula di Bredt*:
  $ theta_u = M_t / (4 G Omega^2) integral.cont (d l) / s $
  Nel caso frequente in cui la sezione sia costituita da $n$ tratti di lunghezza $l_i$ ciascuno a spessore costante $s_i$, le espressioni della tensione tangenziale nel tratto $i$-esimo e dell'angolo unitario di torsione si particolarizzano in:
  $ tau_i = M_t / (2 Omega s_i), quad theta_u = M_t / (4 G Omega^2) sum_(i = 1)^n l_i / s_i $
]

=== Esempio applicativo: sezione scatolare a spessori differenziati

Si consideri una trave a sezione chiusa sottile di forma rettangolare (scatolare), avente dimensioni esterne $l_1$ e $l_2$ e pareti di spessore costante a tratti $s_1, s_2, s_3, s_4$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Area $Omega$ racchiusa dalla linea mediana*:
      $ Omega = (l_1 - s_2 / 2 - s_4 / 2) (l_2 - s_1 / 2 - s_3 / 2) $

    - *Tensioni tangenziali di torsione nei quattro tratti*:
      $ tau_1 = M_t / (2 Omega s_1), quad tau_2 = M_t / (2 Omega s_2) $
      $ tau_3 = M_t / (2 Omega s_3), quad tau_4 = M_t / (2 Omega s_4) $

    - *Angolo unitario di torsione*:
      $ theta_u = M_t / (4 G Omega^2) (l_1 / s_1 + l_2 / s_2 + l_1 / s_3 + l_2 / s_4) $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig10.typ"
  ]
)
#v(1em)

= Sollecitazioni semplici: Taglio

== Caratteristiche generali del taglio nelle travi

Dalla relazione differenziale di equilibrio delle travi rettilinee $T(x) = (d M(x)) / (d x)$ discende che la presenza di uno sforzo di taglio $T$ si accompagna quasi sempre a una variazione del momento flettente $M(x)$ lungo l'asse della trave.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Si realizza pertanto una condizione ideale di *taglio puro* esclusivamente nelle singole sezioni trasversali (come la sezione $S^+$ nello schema) in cui il diagramma del momento flettente $M(x)$ si annulla o passa per lo zero.

    Inoltre, affinché sulla sezione si manifesti esclusivamente taglio senza torsione secondaria, la retta d'azione della forza di taglio $T$ deve necessariamente passare per un punto caratteristico denominato *centro di taglio* (o centro di taglio-torsione), il quale non sempre coincide con il baricentro geometrico $G$ della sezione; in caso contrario nasce anche un momento torcente aggiuntivo.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig11.typ"
  ]
)
#v(1em)

=== Linee di flusso, equazioni di equivalenza e confronto con la flessione

Analogamente a quanto osservato per la torsione, le tensioni tangenziali $tau$ generate dallo sforzo di taglio (ad esempio $T_y$) si distribuiscono sulla sezione trasversale disponendosi secondo linee di flusso governate da un'analogia idrodinamica (canalizzazione del flusso tangenziale entro i contorni della sezione).

Lo sforzo di taglio $T_y$ produce pertanto non solo componenti di tensione tangenziale parallele alla direzione della forza tagliante ($tau_(x y)$), ma anche componenti ortogonali ad essa ($tau_(x z)$), necessarie affinché il vettore tensione tangenziale risulti sempre tangente al contorno libero della sezione.

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig12.typ"
]
#v(0.5em)

Considerando la sola presenza dello sforzo di taglio verticale $T_y$ ($T_z = 0$), le equazioni di equivalenza statica sulla sezione trasversale di area $A$ impongono che:

$ integral_A tau_(x y) d A = T_y, quad integral_A tau_(x z) d A = T_z = 0 $

Le tensioni tangenziali $tau$ dovute al taglio presentano una distribuzione non uniforme sulla sezione, il cui valor medio della componente lungo la direzione del taglio è dato da:

$ tau_m = T / A $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Nelle travi snelle, e in particolar modo per le sezioni piene, le tensioni tangenziali $tau$ indotte dal taglio risultano solitamente molto più piccole rispetto alle tensioni normali $sigma$ dovute al momento flettente.

    *Esempio numerico (mensola a sezione quadrata)*:
    Si consideri una trave incastrata in $B$ e caricata all'estremità libera $A$ da una forza concentrata $P = 1000 "N"$, con lunghezza $L = 1 "m"$ e sezione quadrata di lati $b = 0.1 "m"$ e $h = 0.1 "m"$. Svolgendo i calcoli nella sezione d'incastro $B$ ($T = P$, $M = P L$), si ottiene:
    $ sigma_"max" = M / W_f = (6 P L) / (b h^2) = 60 "daN"/"cm"^2 = 6 "MPa" $
    $ tau_m = T / A = P / (b h) = 1 "daN"/"cm"^2 = 0.1 "MPa" $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig13.typ"
  ]
)
#v(1em)

Il comportamento meccanico della trave soggetta a forze di taglio non può essere descritto in modo esatto con un modello cinematico elementare come avviene per i casi estensionale, flessionale e torsionale. Nella pratica ingegneristica (teoria approssimata di Jourawski):
- l'effetto del taglio si studia separatamente nei due piani coordinati principali d'inerzia $x y$ e $x z$;
- il caso generale di taglio deviato (compresenza di $T_y$ e $T_z$) si risolve applicando il principio di sovrapposizione degli effetti.

== Studio dello sforzo di taglio $T_y$

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Isoliamo un tronco elementare di trave di lunghezza infinitesima $d x$. In assenza di carichi trasversali distribuiti lungo il concio $d x$, per garantire l'equilibrio alla traslazione verticale gli sforzi di taglio devono risultare uguali (e opposti in verso sulle facce contrapposte) in corrispondenza delle due sezioni distanti tra loro $d x$.

    Sulla faccia di ascissa $x$ agiscono il taglio $T_y$ e il momento flettente $M_z$, mentre sulla faccia di ascissa $x + d x$ agiscono il taglio $T_y$ e il momento incrementato $M_z + d M_z$. Dall'equilibrio alla rotazione del concio attorno all'asse $z$ si ritrova la relazione fondamentale secondo cui il taglio è la derivata del momento flettente:

    $ T_y = (d M_z) / (d x) $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig14.typ"
  ]
)
#v(1em)


// === Blocco_03_Slide_31-45 ===

=== Flusso delle tensioni tangenziali e formula di Jourawski

Si consideri sulla sezione trasversale della trave una generica porzione di area $A^*$ delimitata dal contorno esterno libero e da una corda rettilinea di larghezza $b$ tracciata parallelamente all'asse neutro $z$. Si definisce *flusso della tensione tangenziale* $tau_(x y)$ attraverso la corda $b$ l'integrale di linea:

$ t_(x y) = integral_b tau_(x y) d z $

Per il teorema di reciprocità delle tensioni tangenziali di Cauchy ($tau_(x y) = tau_(y x)$), le tensioni $tau_(x y)$ agenti sul piano della sezione trasversale coincidono puntualmente con le tensioni tangenziali longitudinali $tau_(y x)$ che agiscono sul piano orizzontale longitudinale perpendicolare alla sezione e passante per la corda $b$. Il flusso longitudinale per unità di lunghezza vale pertanto:

$ t_(y x) = integral_b tau_(y x) d z = t_(x y) $

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig15.typ"
]
#v(0.5em)

Isolando l'elemento tridimensionale di lunghezza infinitesima $d x$ compreso tra le due porzioni di area $A^*$ delle sezioni trasversali poste a distanza $d x$, l'equazione di equilibrio alla traslazione lungo l'asse longitudinale $x$ impone che lo squilibrio delle tensioni normali di flessione $sigma_(x x)$ sia bilanciato dalla forza tangenziale longitudinale $t_(y x) d x = t_(x y) d x$:

$ t_(x y) d x + integral_(A^*) sigma_(x x) d A - integral_(A^*) (sigma_(x x) + (d sigma_(x x)) / (d x) d x) d A = 0 $ // INCERTO: dedotto dal contesto (nelle slide compare un refuso dx dentro gli integrali d'area che poi si semplifica nel passaggio successivo)

Semplificando i termini opposti e dividendo per $d x$, si ricava:

$ t_(x y) = integral_(A^*) (d sigma_(x x)) / (d x) d A $

Sostituendo la formula di Navier per la flessione retta $sigma_(x x) = -(M_z / I_z) y$ (a meno del segno convenzionale, considerando il modulo dello scorrimento) e ricordando la relazione differenziale $T_y = (d M_z) / (d x)$, si ottiene:

$ t_(x y) = integral_(A^*) (d / (d x) (M_z / I_z y)) d A = integral_(A^*) 1 / I_z (d M_z) / (d x) y d A = T_y / I_z integral_(A^*) y d A = (T_y S_z^(A^*)) / I_z $

dove $S_z^(A^*) = integral_(A^*) y d A$ rappresenta il momento statico della porzione di sezione $A^*$ calcolato rispetto all'asse baricentrico $z$ dell'intera sezione. Esplicitando infine l'espressione del flusso medio lungo la corda $t_(x y) = integral_b tau_(x y) d z = tau_(x y) b$, si perviene alla *formula di Jourawski* per lo sforzo di taglio $T_y$:

$ integral_b tau_(x y) d z = (T_y S_z^(A^*)) / I_z => tau_(x y) b = (T_y S_z^(A^*)) / I_z => tau_(x y) = (T_y S_z^(A^*)) / (I_z b) $

=== Estensione allo sforzo di taglio $T_z$ e osservazioni generali

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Con procedimento del tutto duale, considerando uno sforzo di taglio orizzontale $T_z = (d M_y) / (d x)$ agente lungo l'asse $z$ e una corda $b$ parallela all'asse $y$ che isola la porzione di area $A^*$, la formula di Jourawski fornisce la tensione tangenziale media $tau_(x z)$:

    $ integral_b tau_(x z) d y = (T_z S_y^(A^*)) / I_y => tau_(x z) b = (T_z S_y^(A^*)) / I_y $

    $ tau_(x z) = (T_z S_y^(A^*)) / (I_y b) $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig16.typ"
  ]
)
#v(1em)

#nota[
  *Osservazioni fondamentali sullo stato tensionale nella trave di de Saint-Venant*:
  - Sulla superficie esterna libera della trave i flussi delle tensioni tangenziali di taglio si annullano ($A^* = 0 => S_z = 0$): le tensioni tangenziali di taglio sono pertanto *nulle sul contorno superiore e inferiore della trave*, esattamente dove risultano invece massime le componenti di tensione dovute alle altre caratteristiche di sollecitazione (trazione/compressione, flessione, torsione).
  - Le tensioni tangenziali di taglio raggiungono il valore *massimo al centro del solido* (in corrispondenza dell'asse neutro baricentrico), là dove si annullano invece le tensioni normali di flessione e le tensioni tangenziali di torsione.
  - Di conseguenza, il punto critico di verifica o di progetto in una trave snella di de Saint-Venant (a sezione compatta) si colloca quasi sempre sulla superficie esterna, dove agiscono contemporaneamente le tensioni massime di trazione, flessione e torsione.
]

== Distribuzione della tensione $tau_(x y)$ nelle sezioni spesse e sottili

In base alla formula di Jourawski, il valore puntuale (medio sulla corda) della componente di tensione tangenziale parallela allo sforzo di taglio $T_y$ alla generica ordinata $y$ della sezione trasversale è espresso da:

$ tau_(x y)(y) = (T_y S_z(y)) / (I_z b(y)) $

dove i termini hanno il seguente significato fisico e geometrico:
- $tau_(x y)(y)$ è la tensione tangenziale di taglio in corrispondenza della coordinata $y$;
- $S_z(y) = A^* y_0$ è il momento statico della porzione di sezione $A^*$ delimitata dalla coordinata $y$ (ed esterna ad essa), valutato rispetto all'asse baricentrico $z$ dell'intera sezione ($y_0$ è l'ordinata del baricentro $G_0$ dell'area $A^*$);
- $I_z$ è il momento d'inerzia di area dell'intera sezione trasversale rispetto all'asse baricentrico $z$;
- $b(y)$ è la larghezza della corda della sezione alla quota $y$, ortogonale alle tensioni $tau_(x y)$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Dall'esame della formula di Jourawski emerge un fenomeno strutturale di primaria importanza: le tensioni tangenziali $tau_(x y)$ aumentano bruscamente laddove la larghezza della corda $b(y)$ subisce una repentina riduzione (come avviene nel passaggio dall'ala di larghezza $b$ all'anima di larghezza $b'$ nelle sezioni a $I$ o a $T$).

    Infatti, poiché il momento statico $S_z(y)$ è una funzione integrale continua che non subisce discontinuità per variazioni infinitesime della coordinata $y$ a cavallo della variazione di sezione, il flusso tangenziale complessivo $tau_(x y)(y) b(y) = (T_y S_z(y)) / I_z$ deve rimanere costante, determinando una discontinuità a salto della tensione puntuale ($tau'_(x y) = tau_(x y) b / b' > tau_(x y)$).
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig17.typ"
  ]
)
#v(1em)

Occorre inoltre distinguere il comportamento strutturale tra sezioni spesse e sezioni sottili:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Sezione spessa*: le componenti di tensione tangenziale non parallele allo sforzo di taglio ($tau_(x z)$) risultano trascurabili rispetto alle componenti parallele al taglio ($tau_(x y)$).
    - *Sezione sottile*: le componenti di tensione tangenziale non parallele allo sforzo di taglio ($tau_(x z)$ nelle ali) assumono valori confrontabili con le componenti parallele al taglio ($tau_(x y)$ nell'anima); non sono pertanto trascurabili e devono essere esplicitamente calcolate.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig18.typ"
  ]
)
#v(1em)

=== Trave a sezione rettangolare

In una trave a sezione rettangolare piena di base $b$ e altezza $h$, la larghezza della corda $b(y) = b$ si mantiene costante lungo tutta l'altezza della sezione:

$ tau_(x y)(y) = (T_y S_z(y)) / (I_z b) $

Il momento statico $S_z(y)$ della porzione rettangolare superiore (campita a tratteggio) compresa tra l'ordinata generica $y$ e il bordo superiore $h / 2$, valutato rispetto all'asse baricentrico $z$, è pari al prodotto dell'area $A^* = (h / 2 - y) b$ per la distanza $y_0$ del suo baricentro $G_0$ dall'asse $z$:

$ S_z(y) = A^* d_G = (h / 2 - y) b y_0 = (h / 2 - y) b (y + (h / 2 - y) / 2) = (h / 2 - y) b (h / 2 + y) / 2 = b / 2 (h^2 / 4 - y^2) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Sostituendo l'espressione del momento statico $S_z(y)$ e il momento d'inerzia della sezione rettangolare $I_z = (b h^3) / 12$ nella formula di Jourawski, si ottiene:

    $ tau_(x y)(y) = (T_y b / 2 (h^2 / 4 - y^2)) / ((b h^3) / 12 b) = (6 T_y) / (b h^3) (h^2 / 4 - y^2) $

    La tensione tangenziale $tau_(x y)(y)$ segue pertanto una *distribuzione parabolica* lungo l'altezza della sezione: si annulla ai lembi estremi ($y = plus.minus h / 2$) e raggiunge il valore massimo sull'asse neutro baricentrico $z$ ($y = 0$), pari al $50 %$ in più rispetto al valor medio $tau_m$:

    $ tau_(x y, "max") = (6 T_y) / (b h^3) h^2 / 4 = 3 / 2 T_y / (b h) = 3 / 2 tau_m $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig19.typ"
  ]
)
#v(1em)

=== Trave a sezione circolare

Nel caso di una trave a sezione circolare piena di raggio $R$, la larghezza della corda $b(y) = 2 sqrt(R^2 - y^2)$ non è costante ma varia in funzione dell'ordinata $y$:

$ tau_(x y)(y) = (T_y S_z(y)) / (I_z b(y)) $

Per la sezione circolare di raggio $R$, il momento d'inerzia polare $I_P$ si calcola integrando su corone circolari infinitesime di raggio $r$ e spessore $d r$ ($d A = 2 pi r d r$):

$ I_P = integral_A r^2 d A = integral_0^R r^2 2 pi r d r = (pi R^4) / 2 $

In virtù dell'assialsimmetria della sezione ($I_P = I_z + I_y$ con $I_z = I_y$), i momenti d'inerzia assiali baricentrici valgono:

$ I_z = I_y = I_P / 2 = (pi R^4) / 4 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Passando in coordinate polari ($y = r sin vartheta$, $d A = r d vartheta d r$), il momento statico rispetto all'asse $z$ si esprime come:

    $ S_z(y) = integral_(A^*) y d A = integral_r integral_vartheta r sin vartheta (r d vartheta d r) $

    Il momento statico raggiunge il valore massimo $S_(z, "max")$ in corrispondenza del semicerchio superiore delimitato dall'asse diametrale $z$ ($y = 0$, ossia per $r in [0, R]$ e $vartheta in [0, pi]$):

    $ S_(z, "max") = integral_0^R integral_0^pi r^2 sin vartheta d vartheta d r = [-cos vartheta]_0^pi integral_0^R r^2 d r = 2 R^3 / 3 $

    Sostituendo $S_(z, "max")$, $I_z = (pi R^4) / 4$ e la larghezza diametrale $b(0) = 2 R$ nella formula di Jourawski, si ricava la tensione tangenziale massima sull'asse neutro $z$:

    $ tau_(x y, "max") = (T_y 2 / 3 R^3) / ((pi R^4) / 4 2 R) = 4 / 3 T_y / (pi R^2) = 4 / 3 tau_m $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig20.typ"
  ]
)
#v(1em)

== Taglio in travi a sezione sottile

=== Sezione a doppio T: canalizzazione del flusso tangenziale

Un caso applicativo di fondamentale rilevanza ingegneristica è rappresentato dalla trave a sezione sottile a doppio $T$ (o a $I$), avente larghezza delle ali $b$ e spessore di parete $s$ molto minore di $b$ ($s lt.double b$).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    In virtù dell'analogia idrodinamica, il flusso delle tensioni tangenziali $tau$ di taglio può essere assimilato a una corrente fluida incompressibile canalizzata entro le pareti sottili del profilato, la cui portata deve mantenersi continua anche in presenza di brusche variazioni geometriche o deviazioni ad angolo retto della parete.

    Poiché la sezione è in parete sottile ($s lt.double b$), nelle quattro mezze ali orizzontali le componenti verticali $tau_(x y)$ risultano trascurabili (avendo corda orizzontale $b$ molto ampia e spessore verticale $s$ esiguo), mentre nascono rilevanti tensioni tangenziali orizzontali $tau_(x z)$ dirette lungo l'asse mediano delle ali, le quali confluiscono dall'ala superiore verso l'anima verticale (dove agiscono le $tau_(x y)$) e si ridistribuiscono simmetricamente nelle due semiali inferiori.
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig21.typ"
  ]
)
#v(1em)


// === Blocco_04_Slide_46-60 ===

=== Conservazione del flusso delle tensioni tangenziali nei nodi

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Affinché sia garantita la conservazione del flusso delle tensioni tangenziali di taglio in corrispondenza del nodo strutturale in cui convergono i tre elementi sottili di spessore $b_1, b_2, b_3$, deve essere soddisfatta l'equazione di bilancio tra flussi entranti e flussi uscenti:

    $ sum (tau dot b)_"in" = sum (tau dot b)_"out" $

    Poiché la tensione $tau_2$ agente nell'anima verticale è concorde con il verso dello sforzo di taglio esterno $T_y$, il flusso associato $tau_2 b_2$ risulta uscente dal nodo; per simmetria e continuità, gli altri due flussi provenienti dalle semiali ($tau_1 b_1$ e $tau_3 b_3$) devono essere entranti nel nodo.

    Assumendo per convenzione positivi i flussi uscenti dal nodo e negativi quelli entranti, la condizione di conservazione al nodo si scrive:

    $ -tau_1 b_1 + tau_2 b_2 - tau_3 b_3 = 0 $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig22.typ"
  ]
)
#v(1em)

== Confronto applicativo: sezione spessa vs sezione sottile (profilo HEB 200)

Si consideri una trave con sezione a doppio $T$ unificata *HEB 200* (altezza totale $h = 200 "mm"$, larghezza delle ali $b = 200 "mm"$, spessore delle ali $s = 15 "mm"$, spessore dell'anima $b' = 9 "mm"$, altezza netta dell'anima $170 "mm"$), soggetta a uno sforzo di taglio verticale $T_y = 100 "kN" = 100 thin 000 "N"$. Si vuole analizzare come varia la distribuzione delle tensioni tangenziali di taglio sulla sezione adottando l'ipotesi di sezione spessa oppure l'ipotesi di sezione sottile.

I parametri geometrici complessivi della sezione trasversale valgono:
- area totale della sezione: $A = 2 dot (200 dot 15) + 170 dot 9 = 7530 "mm"^2$;
- momento d'inerzia baricentrico rispetto all'asse $z$ (somma dei contributi dell'anima centrale e delle due ali superiore e inferiore): $I_z = 55 thin 134 thin 750 "mm"^4$.

=== Ipotesi 1: Modello di sezione spessa

Assumendo la sezione come spessa, si considerano unicamente le tensioni tangenziali verticali $tau_(x y)(y)$ sia nell'anima centrale sia nelle ali, trascurando le componenti orizzontali $tau_(x z)$:

$ tau_(x y)(y) = (T_y S_z(y)) / (I_z b(y)) $

dove la larghezza della corda orizzontale $b(y)$ varia con l'ordinata $y$ come una funzione costante a tratti ($b = 200 "mm"$ nelle ali, $b' = 9 "mm"$ nell'anima).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    1. *Bordo inferiore dell'ala superiore (corda rossa $a$, $b = 200 "mm"$)*:
       Il momento statico dell'intera ala superiore rispetto all'asse baricentrico $z$ (con baricentro dell'ala a quota $d_"ala" = 100 - 15 / 2 = 92.5 "mm"$) vale:
       $ S_z = A_"ala" d_"ala" = (200 dot 15) dot 92.5 = 277 thin 500 "mm"^3 $
       La tensione tangenziale sulla corda $a$ dell'ala superiore risulta:
       $ tau_(x y, a) = (100 thin 000 dot 277 thin 500) / (55 thin 134 thin 750 dot 200) = 2.5 "MPa" $

    2. *Attacco superiore dell'anima verticale (corda arancione $b$, $b' = 9 "mm"$)*:
       A parità di momento statico $S_z = 277 thin 500 "mm"^3$, il restringimento della corda da $200 "mm"$ a $9 "mm"$ innalza la tensione a:
       $ tau_(x y, b) = (100 thin 000 dot 277 thin 500) / (55 thin 134 thin 750 dot 9) = 55.9 "MPa" $

    3. *Baricentro della sezione (corda blu $c$ sull'asse $z$, $b' = 9 "mm"$)*:
       Scendendo fino a $y = 0$, si somma il momento statico della semianima superiore di altezza $170 / 2 = 85 "mm"$:
       $ S_(z, "max") = 277 thin 500 + (85 dot 9) dot 85 / 2 = 277 thin 500 + 36 thin 125 = 313 thin 625 "mm"^3 $
       La tensione tangenziale massima al centro dell'anima vale:
       $ tau_(x y, c) = (100 thin 000 dot 313 thin 625) / (55 thin 134 thin 750 dot 9) = 62.5 "MPa" $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig23.typ"
  ]
)
#v(1em)

=== Ipotesi 2: Modello di sezione sottile

Considerando ora il profilato HEB 200 come una sezione in parete sottile, le tensioni tangenziali orizzontali $tau_(x z)$ lungo le ali non sono più trascurabili.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Introducendo l'ascissa locale $xi$ misurata a partire dal bordo libero esterno della semiala superiore ($0 <= xi <= 100 "mm"$), l'area isolata dalla corda verticale rossa di spessore $s = 15 "mm"$ vale $A^*(xi) = xi s$. Poiché il baricentro di tale porzione cade sempre sulla linea media dell'ala, posta a distanza costante $h / 2 - s / 2 = 100 - 7.5 = 92.5 "mm"$ dall'asse neutro $z$, il momento statico $S_z(xi)$ varia linearmente con $xi$:

    $ S_z(xi) = xi s (h / 2 - s / 2) $

    Di conseguenza, anche la tensione tangenziale $tau_(x z)(xi)$ presenta un andamento lineare lungo ciascuna semiala:

    $ tau_(x z)(xi) = (T_y S_z(xi)) / (I_z s) = (T_y xi) / I_z (h / 2 - s / 2) $

    Per un'intera semiala superiore ($xi = 100 "mm"$), il momento statico rispetto all'asse $z$ vale:

    $ S_z = (100 dot 15) dot 92.5 = 1500 dot 92.5 = 138 thin 750 "mm"^3 $

    e la tensione tangenziale massima nell'ala (in prossimità dell'innesto con l'anima) raggiunge il valore:

    $ tau_(x z, "max") = (100 thin 000 dot 138 thin 750) / (55 thin 134 thin 750 dot 15) = 16.8 "MPa" $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig24.typ"
  ]
)
#v(1em)

Lungo l'anima verticale, dove confluiscono i contributi di entrambe le semiali superiori ($2 dot 138 thin 750 = 277 thin 500 "mm"^3$), l'andamento della tensione tangenziale verticale $tau_(x y)$ rimane identico a quello calcolato per la sezione spessa, variando parabolicamente da $tau_(x y, b) = 55.9 "MPa"$ fino al picco baricentrico $tau_(x y, c) = 62.5 "MPa"$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Si riassumono in tabella i valori caratteristici per il modello di sezione sottile:

    #align(center)[
      #table(
        columns: 2,
        align: center + horizon,
        table.header([*Componente di tensione*], [*Valore ($"MPa"$)*]),
        table.hline(),
        [$tau_(x z)$ (massima nell'ala)], [$16.8$],
        [$tau_(x y, b)$ (attacco anima)], [$55.9$],
        [$tau_(x y, c)$ (centro anima)], [$62.5$],
      )
    ]

    #nota[
      *Confronto tra i due modelli*:
      La differenza sostanziale tra i due approcci si manifesta nelle ali della sezione: la tensione tangenziale massima $tau_(x z) = 16.8 "MPa"$ calcolata con il modello a parete sottile è oltre sei volte superiore rispetto alla tensione verticale $tau_(x y, a) = 2.5 "MPa"$ fornita dal modello di sezione spessa. Il modello a *sezione sottile* risulta pertanto nettamente più realistico e cautelativo per la verifica delle ali (fermo restando che entrambi costituiscono modelli analitici di prima approssimazione e che un'analisi locale rigorosa dei raccordi ala-anima richiede metodi numerici agli elementi finiti, FEM).
    ]
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig25.typ"
  ]
)
#v(1em)

== Centro di taglio-torsione (CTT)

È noto dalla teoria dello sforzo normale che la sollecitazione assiale risulta pura (assenza di flessione) esclusivamente quando la retta d'azione della forza normale $N_x$ passa per il baricentro geometrico $G$ della sezione trasversale; in caso contrario, l'eccentricità del carico genera anche un momento flettente.

Un accoppiamento del tutto analogo sussiste tra sforzo di taglio e momento torcente:
- affinché sulla sezione si abbia *taglio puro* (in assenza di torsione), la retta d'azione della forza di taglio deve necessariamente passare per il *centro di taglio-torsione (CTT)*;
- il CTT di una generica sezione trasversale è pertanto definito come il punto geometrico che disaccoppia l'effetto flesso-tagliante dall'effetto del momento torcente.

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig26.typ"
]
#v(0.5em)

Qualora la retta d'azione dello sforzo di taglio $T_y$ non passi per il CTT ma presenti un'eccentricità $L$ rispetto ad esso, il calcolo dello stato tensionale si effettua riducendo il sistema di forze al CTT, ovvero:
1. trasportando la forza di taglio $T_y$ direttamente sul CTT;
2. aggiungendo il *momento torcente di trasporto* $M_x = T_y L$.

Sulla sezione nasceranno pertanto sia tensioni tangenziali $tau$ dovute al taglio centrato $T_y$, sia tensioni tangenziali $tau$ dovute al momento torcente $M_x$, da sommare algebricamente per sovrapposizione degli effetti.

Il centro di taglio-torsione *coincide con il baricentro* $G$ nelle sezioni dotate di due assi di simmetria o di simmetria polare (ad esempio sezioni rettangolari, circolari e a doppio $T$ o a $I$), mentre *non coincide con il baricentro* nelle sezioni prive di doppia simmetria (ad esempio sezioni sottili aperte a $C$ o a $T$).

=== Caso della sezione sottile aperta a C

Un classico esempio strutturale in cui il centro di taglio-torsione non coincide con il baricentro geometrico $G$ (trovandosi all'esterno del profilo stesso, dal lato opposto rispetto alla cavità della $C$) è rappresentato dalla trave a sezione sottile aperta a $C$.

#nota[
  _[Figura nelle slide: dimostrazione sperimentale su tre mensole uguali a sezione sottile a $C$, sollecitate all'estremità libera dallo stesso carico verticale di taglio $T$ applicato in tre posizioni trasversali differenti mediante un braccio rigido collegato all'anima del profilato.]_

  A seconda della posizione della retta d'azione del carico di taglio $T$ rispetto al baricentro $G$ e al centro di taglio-torsione $"CTT"$, si osservano sperimentalmente tre regimi deformativi distinti:
  - *Taglio $T$ applicato lungo il baricentro $G$* (freccia rossa): poiché il carico passa a destra del $"CTT"$, oltre all'inflessione verticale nasce una *torsione oraria* della sezione.
  - *Taglio $T$ applicato lungo il $"CTT"$* (freccia azzurra): la sezione è soggetta a *taglio puro senza alcuna rotazione torsionale* (è visibile unicamente la flessione verticale associata al taglio).
  - *Taglio $T$ applicato oltre il $"CTT"$* (freccia nera, a sinistra del $"CTT"$): l'eccentricità si inverte e nasce una *torsione antioraria* della sezione.
]


// === Blocco_05_Slide_61-71 ===

=== Regole pratiche per l'individuazione del CTT

L'individuazione geometrica immediata della posizione del centro di taglio-torsione $"CTT"$ è agevolata da tre proprietà fondamentali:
1. *Un asse di simmetria*: se la sezione possiede un asse di simmetria (es. sezione a $C$ o a $T$), il $"CTT"$ giace necessariamente su tale asse di simmetria.
2. *Due assi di simmetria*: se la sezione possiede due assi di simmetria (es. sezione a doppio $T$), il $"CTT"$ si trova all'intersezione dei due assi e coincide pertanto con il baricentro geometrico ($text{"CTT"} = G$).
3. *Tratti sottili convergenti in un punto*: se una sezione aperta sottile è costituita da più tratti rettilinei le cui linee medie convergono in un unico nodo (es. sezione a $T$, a $L$ o a croce), il $"CTT"$ coincide con il punto di intersezione delle linee medie dei tratti sottili (poiché i flussi tangenziali interni hanno tutti braccio nullo rispetto a tale polo).

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig27.typ"
]
#v(0.5em)

=== Determinazione analitica della posizione del CTT

Per determinare analiticamente la posizione del $"CTT"$ (ovvero la sua distanza $d$ dal baricentro $G$) occorre calcolare le forze risultanti delle tensioni tangenziali di taglio agenti nei singoli tratti sottili della sezione e imporre che il momento risultante rispetto a un polo (ad esempio il baricentro $G$) equivalga al momento della forza di taglio esterna $T_y$ applicata direttamente nel $"CTT"$ (condizione di assenza di momento di trasporto).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Con riferimento a una sezione aperta sottile a $C$ soggetta a taglio verticale $T_y$:
    - sulle due ali orizzontali (superiore e inferiore, poste a distanza $h$ tra le rispettive linee medie) le tensioni tangenziali $tau_(x z)$ hanno verso opposto e generano due forze orizzontali uguali e contrarie di modulo:
      $ T_z = integral_(A_"ala") tau_(x z) d A $
    - sull'anima verticale (la cui linea media dista $d_G$ dal baricentro $G$) le tensioni tangenziali $tau_(x y)$ ammettono come risultante l'intero sforzo di taglio verticale:
      $ T_y = integral_(A_"anima") tau_(x y) d A $

    Scrivendo l'equazione di equivalenza alla rotazione nel piano della sezione rispetto al baricentro $G$, il momento della forza $T_y$ applicata nel $"CTT"$ a distanza $d$ da $G$ deve eguagliare la somma del momento della coppia $T_z h$ generata dalle ali e del momento $T_y d_G$ generato dall'anima:

    $ T_y d = T_z h + T_y d_G => d = T_z / T_y h + d_G $
  ],
  [
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig28.typ"
  ]
)
#v(1em)

=== Sollecitazione composta di taglio e torsione

Qualora la retta d'azione della forza di taglio $T$ presenti un braccio $L$ non nullo rispetto al centro di taglio-torsione $"CTT"$, la riduzione del carico al $"CTT"$ genera un momento torcente di trasporto $M = T L$. Lo stato tensionale complessivo sulla sezione aperta sottile è pertanto dato dalla sovrapposizione di due regimi distinti:
1. le tensioni tangenziali di *taglio puro* (in blu), costanti lungo lo spessore $s$ della parete e dirette lungo la linea media;
2. le tensioni tangenziali di *torsione* alla Saint-Venant per sezioni sottili aperte (in verde), le quali variano linearmente lungo lo spessore $s$ annullandosi sulla linea media e invertendo il proprio verso tra lembo interno e lembo esterno di ciascun tratto rettangolare.

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig29.typ"
]
#v(0.5em)

== Esempio completo: trave a sezione sottile a C caricata nel baricentro

Si consideri una trave a mensola avente sezione aperta sottile a $C$ (di dimensioni esterne $B, H$, dimensioni sulla linea media $b, h$, spessore di parete $s$ e distanza tra linea media dell'anima e baricentro pari a $d_G$), incastrata a un estremo e sollecitata all'estremo libero da una forza di taglio verticale $T_y$ la cui retta d'azione passa per il baricentro geometrico $G$ della sezione. Si vogliono determinare:
1. la posizione del centro di taglio-torsione $"CTT"$ (distanza $d$ da $G$);
2. la tensione tangenziale massima totale agente sulla sezione.

=== 1. Calcolo della posizione del CTT

Dalla relazione di equivalenza statica sappiamo che la distanza $d$ del $"CTT"$ dal baricentro $G$ vale:

$ d = d_G + T_z / T_y h $

Per calcolare la risultante orizzontale $T_z$ nelle ali partiamo dalla formula di Jourawski applicata all'ala superiore di spessore $s$:

$ tau_(x z)(xi) = (T_y S_z(xi)) / (I_z s) $

 Introducendo l'ascissa locale $xi$ ($0 <= xi <= b$) misurata a partire dall'estremità libera dell'ala superiore verso l'anima, il momento statico della porzione di ala tratteggiata di area $s xi$ (il cui baricentro dista $h / 2$ dall'asse neutro $z$) risulta:

    $ S_z(xi) = s xi h / 2 $

    Sostituendo $S_z(xi)$ nella formula di Jourawski si ricava la distribuzione lineare della tensione tangenziale $tau_(x z)$ lungo l'ala:

    $ tau_(x z)(xi) = (T_y s xi h / 2) / (I_z s) = (T_y h) / (2 I_z) xi $

    Integrando la tensione $tau_(x z)(xi)$ sull'intera area della linea media dell'ala ($d A = s d xi$, per $xi$ da $0$ a $b$), si ottiene la forza orizzontale risultante $T_z$:

    $ T_z = integral_0^b tau_(x z)(xi) s d xi = (T_y h s) / (2 I_z) integral_0^b xi d xi = (T_y h s b^2) / (4 I_z) $

    Sostituendo il valore numerico di $T_z$ nell'espressione di $d$, si determina la posizione del centro di taglio-torsione:

    $ d = d_G + T_z / T_y h = d_G + (h^2 s b^2) / (4 I_z) = 33.7 "mm" $
#align(center)[
    #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig30.typ"
  ]
#v(1em)

=== 2. Calcolo della tensione tangenziale massima totale

Poiché la forza di taglio esterna $T_y$ è applicata nel baricentro $G$, essa presenta un braccio pari a $d = 33.7 "mm"$ rispetto al centro di taglio-torsione $"CTT"$. Riducendo la sollecitazione al $"CTT"$, la sezione risulta soggetta contemporaneamente a:
- uno sforzo di taglio centrato $T_y$;
- un momento torcente di trasporto $M_t = T_y d$.

Per valutare la tensione tangenziale massima totale occorre determinare separatamente le tensioni tangenziali verticali $tau_(x y)$ massime nell'anima dovute al taglio e alla torsione:

1. *Contributo dovuto al taglio $T_y$*:
   La distribuzione di tensione tangenziale $tau_(x y)$ nell'anima verticale di spessore $s$ si calcola mediante la formula di Jourawski:
   $ tau_(x y)(y) = (T_y S_z(y)) / (I_z s) $
   dove il momento statico $S_z(y)$ della porzione superiore alla generica ordinata $y$ nell'anima (somma del contributo dell'ala superiore e del tratto di anima compreso tra $y$ e $h / 2$) vale:
   $ S_z(y) = (b + s / 2) s h / 2 + s (h / 2 - s / 2 - y) (h / 2 - s / 2 + y) / 2 $
   Il valore massimo si raggiunge sull'asse neutro baricentrico $z$, per $y = 0$:
   $ S_z(y = 0) = 11 thin 208 "mm"^3 => tau_(x y, "max")^"TAGLIO" = (T_y S_z(0)) / (I_z s) = 3.4 "MPa" $

2. *Contributo dovuto al momento torcente $M_t = T_y d$*:
   Trattandosi di una sezione aperta sottile composta da tre tratti rettilinei di spessore costante $s$ (un'anima di lunghezza $h$ e due ali di lunghezza $b$), il fattore di rigidezza torsionale complessivo $I_t$ vale:
   $ I_t = (h s^3) / 3 + 2 (b s^3) / 3 = 3840 "mm"^4 $
   La tensione tangenziale massima dovuta alla torsione (raggiunta sui bordi interno ed esterno della parete di spessore $s$) risulta:
   $ tau_(x y, "max")^"TORSIONE" = M_t / I_t s = (T_y d) / I_t s = 35.1 "MPa" $

#align(center)[
  #include "figs/06-4_SOLLECITAZIONI-SEMPLICI---TORSIONE-e-TAGLIO_appunti-fig31.typ"
]
#v(0.5em)

#nota[
  *Sovrapposizione degli effetti nel punto più sollecitato $P$*:
  La tensione tangenziale massima totale si localizza nel punto $P$, situato sul bordo interno dell'anima verticale in corrispondenza dell'asse neutro baricentrico $z$ ($y = 0$), dove le tensioni tangenziali massime di taglio e di torsione risultano concordi (entrambe dirette verso il basso) e si sommano algebricamente:
  $ tau_(x y, "max") = tau_(x y, "max")^"TAGLIO" + tau_(x y, "max")^"TORSIONE" = 3.4 + 35.1 = 38.5 "MPa" $
]
