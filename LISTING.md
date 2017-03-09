# Listing

Source code is coming from [Oel Wiki](https://www.c64-wiki.de/wiki/Oel/Listing)

```
10 rem >>>d s w<<<
20 gosub1460:print"{clr}":poke53280,0:poke53281,2:gosub1900
30 forb=1to3
40 print" {rvon}            {rvof} {rvon}            {rvof} {rvon}   {rvof}"
50 nextb:forb=1to7
60 print" {rvon}   {rvof}      {rvon}   {rvof} {rvon}   {rvof}          {rvon}   {rvof}"
70 nextb:forb=1to3
80 print" {rvon}   {rvof}      {rvon}   {rvof} {rvon}        {rvof}     {rvon}   {rvof}"
90 nextb:forb=1to7
100 print" {rvon}   {rvof}      {rvon}   {rvof} {rvon}   {rvof}          {rvon}   {rvof}"
110 nextb:forb=1to3
120 nextb:forb=1to3
130 print" {rvon}            {rvof} {rvon}            {rvof} {rvon}           {rvof}"
140 nextb
200 v=1:gosub50000:gosub60300
260 gosub60000
280 print"   das grosse spiel ums grosse geld.":gosub60000
300 gosub60100:gosub60000
320 print" wieviele wollen mitpumpen (2-6 pumper)":gosub60000
340 getsz:ifsz>1andsz<7then450
360 print"{home}{13 down}{7 rght}{rvon}?"
380 fort=1to90:nextt
400 print"{home}{13 down}{7 rght}{rvon} "
420 fort=1to90:nextt
440 goto340
450 printtab(9)"{up}einen  moment  bitte"
460 dimab(13),bd(13),bm(13),bf$(13),bp(13),bt(13),fb(13),f(13),fm(13),pa(13)
480 dimta(13),rp(37),gf(12),gg(12)
500 bf$(1)="benzinacker  "
520 bf$(2)="ever-sprudel "
540 bf$(3)="tieferschlund"
560 bf$(4)="dollarspritz "
580 bf$(5)="heavypump    "
600 bf$(6)="lineonpipe   "
620 bf$(7)="happybohr    "
640 bf$(8)="immerdruck   "
660 bf$(9)="lucky hole   "
680 bf$(10)="black gold   "
700 bf$(11)="overbubble   "
720 bf$(12)="dauersprit   "
740 vg$(1)="denvercream"
760 vg$(2)="ewingoil      "
780 vg$(3)="sell & hopp   "
800 vg$(4)="never & again "
820 vg$(5)="salatoil inc  "
840 vg$(6)="swimminoil inc"
860 pf$(1)="bay. pumpe eg  "
880 pf$(2)="dt.pumpenglueck"
900 ra$="bohr & pump & sohn"
920 tg$(1)="raff und gier  "
940 tg$(2)="knaltex  gmbh  "
960 tg$(3)="never come back"
980 tg$(4)="oil on the road"
1000 fort=1to12
1020 bp(t)=int(rnd(1)*70000)+30000
1040 fm(t)=int((bp(t)-(rnd(1)*9999)+1)*10)
1060 nextt
1080 fort=1to12:bt(t)=int(rnd(1)*3666)+1:nextt:k=int(rnd(1)*100000)+100000
1100 l1=int(rnd(1)*6)+1
1120 fm(l1*2)=1200:fm(l1*2-1)=1400
1140 fort=1to2
1160 pf(t)=int(rnd(1)*80000)+20000
1180 nextt
1200 fort=1to4
1220 tp(t)=int(rnd(1)*55000)+25000
1240 tw(t)=int(tp(t)/10000)*3:nextt
1260 rp(1)=int(rnd(1)*7)+7
1280 fort=2to34
1300 rp(t)=rp(t-1)+(int(rnd(1)*14)-7)
1320 ifrp(t)<0thenrp(t)=1:goto1300
1340 ifrp(t)>20thenrp(t)=20
1360 nextt:fort=1to34
1380 a1$="{down}  sie muessen leider drauflegen"
1400 a2$="{down}  ihr vorhaben ist gelungen!"
1420 a3$="% erwischt           "
1440 deffnz(x)=int(rnd(1)*x)+1:goto1520
1460 si=54272:fl=si:fh=si+1:tl=si+2
1480 th=si+3:w=si+4:a=si+5:h=si+6
1500 l=si+24:rz=1983:return
1520 gosub60000:gosub60000
1540 print"        wir befinden uns im jahr":gosub60000:gosub60300
1560 printtab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"
1580 printtab(13)"{cbm-+} {cbm-+} {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1600 printtab(13)"{cbm-+} {3 cbm-+} {3 cbm-+}  {2 cbm-+}"
1620 printtab(13)"{cbm-+}   {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1640 printtab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"
1660 gosub60000:gosub60300:gosub60000
1680 print"     das spiel endet im jahre 2017":gosub60000:gosub60100
1700 b$(1)="deep throat inc.   "
1720 b$(2)="tief und schnell ag"
1740 b$(3)="turbo & drill gmbh "
1760 fort=1to3
1780 bg(t)=int(rnd(1)*50000)+10000
1800 nextt
1820 a4$="{2 down} welche soll verkauft werden":goto2000
1900 data8,180,600,13,10,600,10,247,300,9,196,150,10,247,150,8,180,300
1920 data6,133,300,8,180,300,14,162,300,13,10,300,10,247,150,11,158,150
1940 data13,10,900,-1,-1,0
1960 return
2000 print"{home}{13 down}{rvof}{9 rght}     {5 left}"sz"pumper spielen mit  "
2020 print"{down} nun noch die namen (max 12 buchstaben){down}"
2040 fort=1tosz
2060 input"      ";sn$(t):iflen(sn$(t))>15thenprint"{down} zu lang{down}":goto2060
2080 ks(t)=k:nextt:gosub60000:v=2
2100 print"viel spass beim geldmachen und verlieren":gosub50000:gosub60000
2120 print"jeder spieler hat "k"$ startkapital":gosub60000:gosub60100
2220 print"{clr}{yel}":poke53280,4:poke53281,14
2240 print"   ihnen stehen folgende wege offen:":print:k=0
2260 print" {blk}1.  oelfelder erwerben.{down}"
2280 print" 2.  pumpenhersteller werden.{down}"
2300 print" 3.  tankwagenhersteller werden.{down}"
2310 print" 4.  bohrgesellschafter werden.{down}"
2320 print" 5.  sabotage betreiben.{down}"
2340 print" 6.  und natuerlich alles zusammen.{down}"
2360 print" 7.  oder gar nichts von allem.{down}"
2400 print" {yel}    sieger ist logischer weise der"
2420 print"     mit dem meisten kapital am ende"
2440 print"     des spiels."
2460 print"{down}";:gosub60200
2500 print"{clr}{yel}";:poke53280,1:poke53281,2
2520 print"{rvon}   die raffinerieoelpreisentwicklung    ";
2530 print"   trend der naechsten jahre (runden)   ";:gosub60300
2560 fort=1to34:pokel,15:forb=1torp(t)
2580 pokea,21:poke56218+t-(b*40),4
2600 pokeh,255:poke1946+t-(b*40),224
2620 poketh,8:poketl,0:pokefh,41-t
2640 pokefl,101-t:pokew,17
2660 nextb,t:pokew,0
2680 print;:gosub60200:fort=1to34:rp(t)=rp(t)/10:nextt
3000 r=r+1:fors=1tosz
3100 print"{clr}{down}":poke53280,4:poke53281,4
3120 print"{3 rght}{wht}{rvon}entscheidungsmoeglichkeit fuer":gosub52000
3140 print"{3 rght}{cyn}{down}{rvof}spieler "sn$(s)" $="ks(s):print"{blu}{down}   {rvon} einkauf von {rvof}"
3160 print"{down}{blk}   a = bohrgesellschaft"
3180 print"{wht}   b = pumpengesellschaft"
3200 print"{blk}   c = tankwagenfirma"
3220 print"{wht}   d = oelfeld"
3240 print"{blk}   e = bohrgestaenge"
3260 print"{wht}   f = pumpe"
3280 print"{blk}   g = tankwagen":print"{down}{blu}   {rvon}  sonstiges  {rvof}"
3300 print"{down}{wht}   h = naechster spieler"
3320 print"{blk}   i = sabotage betreiben"
3340 print"{wht}   j = preisfestlegung"
3360 print"{blk}   k = weitermachen{down}"
3400 gosub60200:z2=asc(s$):z2=z2-64
3410 ifz2<1orz2>12then3400
3420 onz2gosub37000,31000,32000,30000,38000,39000,40000,3500,35000,42000,3500
3440 nexts:goto4000
3500 return
4000 fors=1tosz
4200 fori=1to12:gosub12000:nexti
4300 ks(s)=int(ks(s)):nexts
4400 print"{clr}":gosub29000
4500 gosub59000:rz=rz+1:ifrz=2017then6000
4600 goto3000
6000 print"{clr}":poke53281,0:poke53280,0
6100 print" das"
6200 print"    spiel"
6300 print"         ist"
6400 print"            vorrueber"
6500 print"{2 down}{lblu} hier das gesamtergebnis:"
6700 print"{2 down} spieler      bankkredit     kapital"
6800 print" {37 cbm-u}"
6900 forz0=1tosz
7000 print"  "sn$(z0);:printtab(15)bk(z0);:printtab(28)int(ks(z0)-(bk(z0)*1.6))
7100 nextz0
7200 print"{2 down} ich hoffe sie hatten viel freude und"
7300 print" verbleibe als ihr oely.{blk}":v=1:gosub50000:end
10000 print"{clr}":poke53281,8:poke53280,0
10020 print"{gry1}    {rvon}{shift-pound}{rvof}{blk}{cbm-r}{gry1}{rvon}_{rvof}{blu}    {rvon}UCCC{cbm-r}I {rvof}  {rvon}{blk}  o e l f e l d  {rvof}"
10040 print"{gry1}    {rvon} {rvof}{blk}]{gry1}{rvon} {rvof}{blu}    {rvon}{cbm-q}{wht}CCC{cbm-x}{blu}JI{rvof}";:printtab(22)bf$(i)
10060 print"{gry1}    {rvon} {rvof}{blk}]{gry1}{rvon} {rvof}{blu}    {rvon}{cbm-y}{blk}WW{blu}CC{blk}W{blu}K{rvof}  {blk}{17 cbm-t}"
10080 printtab(20)"{rvon}{blk} b e s i t z e r {rvof}"
10090 ifgg(i)<fm(i)thengf(i)=gf(i)+(8000*(pa(i)))
10100 printtab(22)sn$(s):gg(i)=gg(i)+(8000*(pa(i)))
10120 print"    jahr {wht}"rz;
10140 printtab(20)"{blk}{17 cbm-t}"
10160 print"{down} {blu}"ra$" -":print" raffinerieabnahmepreis = "rp(r)"${down}"
10400 print"{blk} pumpenanzahl :"pa(i)
10420 print"{lgrn} versandmenge :"gf(i)
10440 print"{blk} tankwagen    :"ta(i)
10460 print"{lgrn} lkwkapazitaet:"ta(i)*7000
10480 print"{blk} kapital      :"ks(s)
10500 ifgg(i)>fm(i)thenprint"{down}   quelle erschoepft!"
10505 ifgf(i)<=0thenprint"{down}";:gosub60200:return
10510 ifta(i)=0orpa(i)=0thenprint"{down}";:gosub60200:return
10520 print:input" wieviel liter sollen weg";m
10540 ifm>gf(i)orm>ta(i)*7000thenprint" zuviel{3 up}":goto10520
10560 ks(s)=ks(s)+(m*(rp(r))):gf(i)=gf(i)-m
10580 print"{blu} kapital      :"ks(s)" $"
10600 print"{down}";:gosub60200:return
12000 iffb(i)<>sthenreturn
12005 iff(i)=1then10000
12010 print"{clr}":poke53280,0:poke53281,1
12040 print"  {blu}  {rvon}{shift-pound}    _{rvof}{gry2}{cbm-i}{blk}{2 cbm-@}"
12060 print"  {blu}  {rvon}     {rvof}{shift-pound}{gry2}{rvon}{cbm-i}{rvof}{blk}{2 cbm-t}";
12080 printtab(17)"{red}bohrung auf feld"
12100 print"  {blu}  {rvon} {rvof}{lred}{cbm-k}{blu}  {cbm-k}{lgrn}";
12120 printtab(17)bf$(i)
12140 print"  {blu}  {rvon} {rvof}   {cbm-v}   "
12160 print"  {blk} UK";
12180 printtab(12)"{lblu}besitzer:{blk}"sn$(s)
12200 print"  {blk}CK"
12220 print" ihr oelfeldlagerverwalter teilt ihnen"
12240 print" folgende daten mit:{down}"
12260 ifbm(i)<=0thenprint"{red} bohrung unmoeglich, da kein gestaenge"
12280 ifbm(i)<=0thenprint" mehr vorhanden. wir brauchen nachschub!":goto12320
12300 bm(i)=bm(i)-500:ab(i)=ab(i)+500-fnz(30)
12320 print" {grn}bisherige bohrtiefe    :"ab(i)"m"
12340 print"{down} bohrgestaenge noch fuer:"bm(i)"m"
12360 ifab(i)>=bt(i)thenprint"{2 down} wir sind fuendig.":f(i)=1:v=3:gosub50000
12460 print"{down}";:gosub60200:return
28000 print:fordd=1to12:printdd;
28100 iffb(dd)=sthenprinttab(10)bf$(dd):goto28300
28200 print
28300 nextdd
28400 print:input"fuer welches oelfeld";d
28500 ifd=0thenreturn
28600 iffb(d)<>sthen28400
28700 return
29000 print"jahr:"rz:print:forz8=1tosz
29100 printsn$(z8);
29200 printtab(20)"kapital:"ks(z8)
29300 nextz8
29400 print"{down}";
29500 gosub60200:return
30000 print"{clr}";:poke53280,4:poke53281,14
30020 print"{yel}{rvon}                                        {rvof}";
30040 print"{rvon}     o e l f e l d a n g e b o t e      {rvof}";
30060 print"{yel}{rvon}                                        {rvof}";
30080 print"{down}  {red}gesellschaft     oelfeld     preis ${down}"
30100 fort=1to6:printvg$(t)
30120 print:nextt
30140 print"{home}{5 down}"
30160 fort=1to12:printtab(15)"{wht}"chr$(64+t);:printtab(17)"{blu}"bf$(t)
30180 nextt:print"{home}{5 down}{blk}"
30200 fort=1to12:iffb(t)>0thenprinttab(31)"{cyn}verkauft{blk}":goto30240
30220 printtab(32)bp(t)
30240 nextt
30260 print"{down}{wht}   "sn$(s)"{down}"
30280 print"{blk}welches feld soll gekauft werden?  {cbm-@}"
30300 print"{down}{blu}liquides kapital:"ks(s)"$"
30320 gets$:ifs$=""then30320
30340 b=asc(s$)-64:ifb>90orb<0then30320
30360 ifb>12thenreturn
30380 iffb(b)>0then30320
30400 fb(b)=s:ks(s)=ks(s)-bp(b)
30420 print"{3 up}{yel}"tab(35)s$"{down}"
30440 printtab(17)"        {8 left}"ks(s)
30460 fort=1to1500:nextt
30480 return
31000 print"{clr}";:poke53281,6:poke53280,2
31020 gosub50000:print"{yel}{rvon}  pumpe                                 ";
31040 print"{rvon}    &     pumpenvereinigungsgesellschaft";
31060 print"{yel}{rvon}  pumpe                                 "
31080 print" betr.  pumpenfabrikanfrage"
31100 print" EEEEEEEEEEEEEEEEEEEEEEEEEE"
31120 ifpp(1)>0andpp(2)>0then31280
31140 print"{down} wir koennen ihnen folgende angebote"
31160 print" unterbreiten.{down}"
31180 print" 1 "pf$(1);:ifpp(1)>0thenprinttab(30)"verkauft":goto31220
31200 printtab(28)pf(1)
31220 print" 2 "pf$(2);:ifpp(2)>0thenprinttab(30)"{wht}verkauft{yel}":goto31260
31240 printtab(28)pf(2)
31260 goto31360
31280 print"{down}leider muessen wir ihnen mitteilen, dass";
31300 print" zur zeit keine pumpenherstellungsfirma"
31320 print"zum verkauf ansteht."
31340 gosub60200:return
31360 print"{down} wenn sie eine fabrik kaufen wollen;"
31380 print" druecken sie die betreffende zahl. wenn";
31400 print" sie nicht wollen druecken sie 'x'"
31420 gets$:ifs$=""then31420
31440 ifs$="1"andpp(1)=0thenks(s)=ks(s)-pf(1):pp(1)=s:gosub60000:goto31520
31460 ifs$="2"andpp(2)=0thenks(s)=ks(s)-pf(2):pp(2)=s:gosub60000:goto31620
31480 print"{3 down}  schade - das wir nicht ins geschaeft":print"  kommen"
31500 gosub60100:return
31520 gosub60000:print"{home}{5 down}"
31540 print"{lgrn} sie sind nun besitzer der firma:{down}":print"     "pf$(1)".{down}"
31560 input" legen sie den pumpenpreis fest";p(1)
31580 ifp(1)>60000thenprint"zu hoch!":goto31560
31600 goto31700
31620 gosub60000:print"{home}{6 down}"
31640 print"{lgrn} sie sind nun besitzer der firma:{down}":print"     "pf$(2)".{down}"
31660 input"legen sie den pumpenpreis fest";p(2)
31680 ifp(2)>60000thenprint"zu hoch!":goto31660
31700 print"{2 down}  {yel}alles klar!":gosub60100:return
32000 print"{clr}";:poke53280,0:poke53281,14:gosub50000
32020 print"{blu}{rvon}                                        {rvof}";
32040 print"{rvon}     t a n k w a g e n f i r m e n      {rvof}";
32060 print"{blu}{rvon}                                        {rvof}";
32080 print"{rvon}             v e r k a u f              {rvof}";
32100 print"{blu}{rvon}                                        {rvof}";
32120 print"{rvon} nr    f i r m a        lkw   preis     {rvof}{home}{6 down}"
32140 fort=1to4
32160 print:printt"  "tg$(t):nextt
32180 print"{home}{6 down}"
32200 fort=1to4
32220 iftb(t)>0thenprinttab(30)"{down}{red}verkauft{blu}":goto32260
32240 print:printtab(24)tw(t);:printtab(29)tp(t)
32260 nextt
32280 print"{down} kein kauf = 'x'"
32300 gets$:ifs$=""then32300
32320 b=val(s$):iftb(b)>0thenreturn
32340 ifb>4orb=0thenreturn
32360 ks(s)=ks(s)-tp(b):tb(b)=s
32380 print"{down}  ihr kapital betraegt jetzt"ks(s)"{down}"
32400 input" ihr tankwagenpreis";lp(b)
32420 iflp(b)>60000thenprint"{clr}{3 down} unrealistisch!{down}":goto32400
32440 return
33000 print"{clr}{wht}":poke53280,0:poke53281,0
33020 print"     hier faellt die entscheidung !{2 down}{wht}"
33040 w3=int(rnd(1)*10)+1
33060 printtab(15)"{rvon} + 50 %   {rvof}"
33080 printtab(15)"{rvon} - 20 %   {rvof}"
33100 printtab(15)"{rvon} + 40 %   {rvof}"
33120 printtab(15)"{rvon} - 10 %   {rvof}"
33140 printtab(15)"{rvon} + 30 %   {rvof}"
33160 printtab(15)"{rvon} - 30 %   {rvof}"
33180 printtab(15)"{rvon} + 10 %   {rvof}"
33200 printtab(15)"{rvon} - 40 %   {rvof}"
33220 printtab(15)"{rvon} + 20 %   {rvof}"
33240 printtab(15)"{rvon} - 50 %   {rvof}"
33260 print"{3 down}  druecken sie im richtigen moment 'f1'":e=0
33280 fort=1207to1567step40
33300 poket,31:forb=1to3:nextb
33320 e=e+1:gets$
33340 ifs$=chr$(133)then33380
33360 poket,224:nextt:e=0:goto33280
33380 print"{down}  sie haben die ";
33400 onegoto33420,33440,33460,33480,33500,33520,33540,33560,33580,33600
33420 print"+50"a3$a1$:e=50:goto33620
33440 print"-20"a3$a2$:e=-20:goto33620
33460 print"+40"a3$a1$:e=40:goto33620
33480 print"-10"a3$a2$:e=-10:goto33620
33500 print"+30"a3$a1$:e=30:goto33620
33520 print"-30"a3$a2$:e=-30:goto33620
33540 print"+10"a3$a1$:e=10:goto33620
33560 print"-40"a3$a2$:e=-40:goto33620
33580 print"+20"a3$a1$:e=20:goto33620
33600 print"-50"a3$a2$:e=-50
33620 print"{down}";:gosub60200:return
35000 print"{clr}{wht}":poke53281,11:poke53280,0
35020 fort=1to23
35040 gosub51000
35060 print"{rght}"spc(t)"sabotageaktion"
35080 nextt
35100 gosub60000:gosub60000
35120 print"{clr}":printtab(12)sn$(s)
35140 print"{down}  folgende sabotagemoeglichkeiten"
35160 print"  stehen zur verfuegung:{down}"
35180 print"{lblu}  agenten anwerben und fremdes oel-"
35200 print"  feld durch ihn unbrauchbar machen"
35220 print"  lassen.  = f1"
35240 print"{yel}  pumpenfirma durch sabotage ausser"
35260 print"  betrieb setzen.  = f3"
35280 print"{lblu}  tankwagenfirma durch bestechhung"
35300 print"  der kreditgeber konkurs gehen "
35320 print"  lassen.  = f5":w4=fnz(40000)
35325 print"{yel}  bohrfirma durch oelueberschwemmung"
35330 print"  ausser kraft setzen.  = f7"
35340 print"{lblu}  lieber doch nichts machen. = 'x'":w3=int(rnd(1)*40000)+40000
35360 gosub60200
35380 ifs$=chr$(136)then45000
35400 ifs$=chr$(133)then35480
35420 ifs$=chr$(134)then43000
35440 ifs$=chr$(135)then44000
35460 return
35480 gosub60000:gosub60000
35500 print"{clr}{lred} hey, hier ist agent diabolo huggi baer"
35520 print" welches oelfeld soll ich sabotieren?{down}{gry2}"
35540 fort=1to12:print" "t,bf$(t):nextt
35560 print:input"  oelfeldnummer";n
35580 ifn<1orn>12thenreturn
35600 print"{down}{lred} so. fuer die sabotage des oelfeldes"
35620 print" fallen folgende unkosten an:"
35680 print" {wht}spesen, schmiergelder etc = "w3
35700 print" korken, sprengstoff etc   = "w4
35720 print" gesamt                    = "w3+w4
35740 print" {blk}die chancen einer erfolgreichen"
35760 print" durchfuehrung liegen bei 33% .";:gosub60100:gosub60000
35780 print"{5 down}"
35800 print"{home}{8 down}{wht} soll ich zur tat schreiten?"
35820 gets$:ifs$=""then35820:ifs$="n"thenreturn
35830 ifs$="n"thenreturn
35840 ifs$="j"then35880
35860 goto35820
35880 ks(s)=ks(s)-w3-w4:w3=0:w4=0
35900 w3=fnz(3):t1=0
35920 ifw3=1thenbp(n)=fnz(50000)+30000:w4=fnz(200000):fm(n)=w4:t1=2:f(n)=0
35940 ifw3=1thenbt(n)=fnz(4500):fb(n)=0:pa(n)=0:ta(n)=0:ab(n)=0:bm(n)=0:gf(n)=0
35950 ifw3=1thengg(n)=0
35960 print"{down} {lblu} sabotageergebnis durch tastendruck{5 down}"
35980 gets$:ifs$=""then35980
36000 fork=1to30:pokel,15
36020 pokea,190:poketh,8:pokefh,k
36040 printtab(13)"{yel}  gelungen {up}"
36060 pokefl,k:pokew,33:fort=1to100:nextt
36080 printtab(13)"{lblu} misslungen{up}":fort1=1to100:nextt1:pokew,0:nextk
36100 ifw3=1thenprinttab(13)"{wht}  gelungen "
36120 ifw3<>1thenprinttab(13)"{2 down}{blk}pech  gehabt"
36140 pokew,0
36160 ifw3<>1thengosub60300:return
36180 fort=16to0step-1
36200 pokel,t:pokea,15:pokeh,0
36220 pokefh,40:pokefl,200:pokew,129
36240 forts=1to100:nextts
36260 nextt
36300 pokel,15:pokea,190:pokeh,64
36320 pokefh,1:pokefl,95
36340 pokew,129
36360 fortt=1to1000:nexttt
36380 pokew,0:return
37000 print"{clr}{wht}":poke53280,6:poke53281,6
37020 gosub50000
37040 print"{rvon}                                        ";
37060 print"     bohrgesellschaftskaufangebote      ";
37080 print"{rvon}                                        {2 down}"
37100 fort=1to3:ifbb(t)=0then37140
37120 nextt:print"keine mehr da":gosub60100:return
37140 t=0:fort=1to3
37160 ifbb(t)>0then37200
37180 print"{rvon}"t;" "b$(t),bg(t)"  $"
37200 nextt
37220 print"{2 down} welche gesellschaft wollen sie kaufen?{down}"
37240 gosub60200
37260 z1=val(s$):ifz1=0orbb(z1)>0thenreturn
37280 print"sie sind nun inhaber der gesellschaft":printb$(z1)". legen sie nun"
37300 print"ihren bohrgestaengepreis fuer 500 m fest"
37320 inputbd(z1)
37340 ks(s)=ks(s)-bg(z1):bb(z1)=s:return
38000 print"{clr}{wht}":poke53281,8:poke53280,8
38020 print"folgende bohrgestaenge werden angeboten:"
38040 print"{blu}firma";spc(15)"preis fuer 500 meter"spc(20)"bohrgestaenge"
38060 forz=1to40:print"D";:nextz:z=0
38080 forz=1to3:printz"  "b$(z);
38100 ifbb(z)>0thenprinttab(26)bd(z)"$":goto38140
38120 printtab(26)"{blk}kein angebot{blu}"
38140 nextz
38160 ifbb(1)=0andbb(2)=0andbb(3)=0thenprint"{2 down}{wht}es gibt noch keine firma die"
38180 ifbb(1)=0andbb(2)=0andbb(3)=0thenprint"die gestaenge verkauft!"
38200 ifbb(1)=0andbb(2)=0andbb(3)=0thengosub60100:gosub60300:return
38220 print"{2 down}{red}"
38240 input"einkauf bei welcher firma";cc:ifcc=0thenreturn
38260 ifbd(cc)=0thenprint"{2 down}{blk} liegt noch kein angebot vor":goto38240
38280 input"wieviel 500m einheiten wollen sie";c:ifc=0thenreturn
38300 gosub28000
38320 ifd=0thenreturn
38340 ks(s)=ks(s)-(c*(bd(cc)))
38350 fork=1tosz:ifbb(cc)=sthenks(s)=ks(s)+(.2*(c*(bd(cc)))):goto38380
38360 ifbb(cc)=kthenks(k)=ks(k)+(c*(bd(cc)))
38380 nextk:bm(d)=bm(d)+c*500:gosub29000
38400 d=0:dd=0:c=0:cc=0:k=0:return
39000 print"{clr}{wht}";:poke53281,12:poke53280,12
39020 print"{rvon}  **    pumpenverkaeuferangebote    **  {rvof}"
39040 print" gesellschaft    pumpenpreis in ${down}"
39060 forb=0to39:print"{cbm-u}";:nextb:print
39080 forz=1to2:printz;pf$(z);
39100 ifpp(z)=0thenprint" {blk}kein angebot{wht}":goto39140
39120 printp(z)
39140 nextz:print"{down}"
39160 input"kauf bei welcher firma ";cc
39180 ifcc=0thenreturn
39200 ifpp(cc)=0thenprint"{down}kein angebot da":goto39160
39220 input"{blk}kauf von wieviel pumpen";c
39240 ifc=0thenreturn
39260 gosub28000:ifd=0thenreturn
39280 ks(s)=ks(s)-(c*p(cc))
39290 fork=1tosz:ifpp(cc)=sthenks(s)=ks(s)+(.2*(c*p(cc))):goto39320
39300 ifpp(cc)=kthenks(k)=ks(k)+(c*p(cc))
39320 nextk:pa(d)=pa(d)+c:gosub29000
39340 d=0:dd=0:c=0:cc=0:k=0:return
40000 print"{clr}{yel}";:poke53281,10:poke53280,10
40020 print"{rvon}  **   tankwagenverkaufsangebote    **  {rvof}"
40040 print" nr firma      anzahl  preis{down}"
40060 forb=0to39:print"{cbm-u}";:nextb:print
40080 forz=1to4:printz;tg$(z);tw(z);
40100 iftb(z)=0thenprint" {blk}kein angebot{wht}":goto40140
40120 printlp(z)
40140 nextz:print"{down}"
40160 input"lkwkauf bei welcher firma";cc
40180 ifcc=0thenreturn
40200 iftb(cc)=0ortw(cc)<=0thenprint"{down} geht nicht!":goto40160
40220 input"{blk}kauf von wieviel lkw     ";c
40240 ifc=0orc>tw(cc)thenreturn
40260 gosub28000:ifd=0thenreturn
40280 ks(s)=ks(s)-(c*lp(cc)):tw(cc)=tw(cc)-c
40290 fork=1tosz:iftb(cc)=sthenks(s)=ks(s)+(.2*(c*lp(cc))):goto40320
40300 iftb(cc)=kthenks(k)=ks(k)+(c*lp(cc))
40320 nextk:ta(d)=ta(d)+c:gosub29000
40340 d=0:dd=0:c=0:cc=0:k=0:return
42000 print"{clr}{wht}":poke53280,2:poke53281,2
42100 print" fuer welches produkt wollen sie den "
42120 print" preis neu festlegen?"
42140 print"{2 down} 1   =   pumpenpreis"
42160 print"{2 down} 2   =   tankwagenpreis"
42180 print"{2 down} 3   =   bohrgestaengepreis{2 down}"
42200 input" nr";e1:ife1<=0ore1>3then42200
42220 print"{clr}":one1goto42300,42500,42700
42300 print"nr  firma          pumpenpreis{2 down}"
42320 forz=1to2:printz;pf$(z);p(z):nextz
42340 print:input" welche firma";e1
42360 ife1<=0ore1>2thenprint" keine festlegung":gosub60300:return
42380 ifpp(e1)<>sthenprint" gehoert ihnen nicht!":goto42340
42400 print"{down}":gosub58000
42420 p(e1)=e2:gosub29000:e1=0:e2=0:return
42500 print"nr  firma       tankwagenpreis{2 down}"
42520 forz=1to4:printz;tg$(z);lp(z):nextz
42540 print:input" welche firma";e1
42560 ife1<=0ore1>4thenprint" keine festlegung":gosub60300:return
42580 iftb(e1)<>sthenprint" gehoert ihnen nicht!":goto42540
42600 print"{down}":gosub58000
42620 lp(e1)=e2:gosub29000:e1=0:e2=0:return
42700 print"nr  firma       gestaengepreis{2 down}"
42720 forz=1to3:printz;b$(z);bd(z):nextz
42740 print:input" welche firma";e1
42760 ife1<=0ore1>3thenprint" keine festlegung":gosub60300:return
42780 ifbb(e1)<>sthenprint" gehoert ihnen nicht!":goto42740
42800 print"{down}":gosub58000
42820 bd(e1)=e2:gosub29000:e1=0:e2=0:return
43000 print"{clr} welche der folgenden pumpenfirmen soll"
43020 print" sabotiert und uebernommen werden?{2 down}"
43040 print"{rvon}gesellschaft    preis       besitzer    "
43060 forz=1to2
43080 printz;pf$(z);pf(z);
43100 forzz=1tosz:ifpp(z)=zzthenprinttab(25)sn$(zz)
43120 nextzz,z:print"{down}"
43140 gosub59900
43160 ifn<=0orn>2orpp(n)=0thenreturn
43180 gosub33000
43200 e=e+100:ife<100then43280
43220 ks(s)=ks(s)-((pf(n)*e)/100)
43240 goto43340
43280 ks(s)=ks(s)-((pf(n)*e)/100)
43320 pp(n)=0:w3=fnz(100000):pf(n)=w3:p(n)=0
43340 e=0:z=0:zz=0:return
44000 print"{clr}{yel} welche der folgenden tankwagenfirmen"
44020 print" soll sabotiert werden?{2 down}"
44040 print"{rvon}{blk}  gesellschaft      preis  besitzer     ":print"{home}{6 down}"
44060 forz=1to4:print"{wht}"z;tg$(z)" "tp(z):nextz:print"{home}{6 down}"
44080 forzz=1to4:forz=1tosz:iftb(zz)=zthenprinttab(27)sn$(z):goto44120
44100 nextz:printtab(27)"{blk}frei{wht}"
44120 nextzz:print"{down}"
44140 gosub59900
44160 ifn<=0orn>4ortb(n)=0thenreturn
44180 gosub33000
44200 e=e+100:ife<100then44280
44220 ks(s)=ks(s)-((tp(n)*e)/100)
44240 zz=0:z=0:e=0:return
44280 ks(s)=ks(s)-((tp(n)*e)/100)
44300 tb(n)=0
44320 w3=fnz(200000):tp(n)=w3:lp(n)=0:tw(n)=int(w3/10000)
44340 zz=0:z=0
44360 print"{clr}{yel}sie besitzen ein vorkaufsrecht auf die"
44380 print"von ihnen sabotierte tankwagenfirma:"
44400 print"{down} firma      :"tg$(n)
44420 print" preis      :"tp(n)"$"
44460 print" lkwzahl    :"tw(n)
44480 print"{2 down} wollen sie kaufen (j/n)?{down}"
44500 gosub60200:poke53281,2:print"{yel}{2 down}"
44520 ifs$="j"thentb(n)=s:ks(s)=ks(s)-tp(n)
44540 ifs$="j"theninput" neuer lkw-preis";lp(n)
44560 return
45000 print"{clr} welche der folgenden bohrgesellschaft-";
45020 print" en soll sabotiert werden{2 down}"
45040 print"{rvon}gesellschaft    preis       besitzer    {rvof}"
45060 forz=1to3
45080 printz;b$(z);bg(z);
45100 forzz=1tosz:ifbb(z)=zzthenprintsn$(zz)
45120 print:nextzz,z:print"{down}"
45140 gosub59900
45160 ifn<=0orn>3orbb(n)=0thenreturn
45180 gosub33000
45200 e=e+100:ife<100then45280
45220 ks(s)=ks(s)-((bg(n)*e)/100)
45260 goto45340
45280 ks(s)=ks(s)-((bg(n)*e)/100)
45320 bb(n)=0:bg(n)=fnz(100000):bd(n)=0
45340 e=0:z=0:zz=0:return
50000 pokel,15:poketh,13:poketl,15:pokea,3*16+15:pokeh,9
50100 readgx:readgy:readdt
50200 ifgx=-1thenrestore:return
50300 pokefh,gx:pokefl,gy
50400 pokew,65
50500 fort=1todt/v:nextt:pokew,0
50600 goto50100
51000 pokel,15:pokea,24:pokeh,170
51100 pokefh,2:pokefl,113:pokew,33
51200 fortt=1to50:nexttt
51300 pokew,0:pokea,0:pokeh,0:return
52000 fort=1to6:forts=4to14step10
52100 pokel,ts:pokea,15:pokeh,0:pokefh,6
52200 pokefl,133:pokew,17
52300 fortt=1to100:nexttt
52400 nextts,t:pokew,0:pokea,0:return
58000 input" neuer preis";e2
58100 return
59000 forx=1tosz
59010 ifbk(x)>0thenks(x)=ks(x)-5000:bk(x)=bk(x)-3000:gosub59400
59020 ifks(x)<0thengosub59100
59040 nextx:return
59100 print"{clr}{wht}";:poke53281,0:poke53280,0
59120 poke53272,23:print" Die Luft ist raus "sn$(x)
59140 forz9=1to30:pokel,15
59160 pokea,190:poketh,8:poketl,0
59180 pokefh,2+z9:pokefl,78+z9
59200 pokew,129:fortt=1to28:nexttt:nextz9:pokew,0
59220 print:print" Du bekommst von der Bankgesellschaft"
59240 print"{down} Raffke und Sohn einen Bankkredit von"
59260 print"{down} 20000 Dollar. Du musst jetzt jedes Jahr"
59280 print"{down} 5000 Dollar abbezahlen.{down}"
59300 print;:gosub60200:print"{clr}":poke53272,21
59320 ks(x)=ks(x)+20000:bk(x)=bk(x)+20000:return
59400 print"{clr}{rvon}{lblu} raffke und sohn bankkreditabteilung    {rvof}":poke53281,0
59420 print"{down} teilt "sn$(x)" mit:"
59440 print"{2 down} noch zahlbar   :"bk(x)"$"
59460 print"{down} jetzt zahlbar  : 5 0 0 0.-- $"
59480 print"{down} ihr kapital    :"ks(x)"$"
59500 print"{2 down}";:gosub60200:return
59900 input"{rvon}   welche firma (nr)";n
59950 return
60000 forb=1to6:print"{down}":nextb
60050 return
60100 fortt=1to2000:nexttt:return
60200 gets$
60220 printtab(6)"{wht}bitte druecken sie eine taste{up}":forox=1to100:nextox
60260 printtab(6)"{blk}{rvon}bitte druecken sie eine taste{up}":forox=1to100:nextox
60280 ifs$=""then60200
60290 return
60300 fortt=1to2000:nexttt:return
```
