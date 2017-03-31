20   
  init_values()
  clr_scrn()
  set_border_color(BLACK)
  set_border_color(RED)
  prepare_consts_to_load()

REM FIXME do_something()
30 for b=1 to 3
40 print " {rvon}            {rvof} {rvon}            {rvof} {rvon}   {rvof}"
50 next b:for b=1 to 7
60 print " {rvon}   {rvof}      {rvon}   {rvof} {rvon}   {rvof}          {rvon}   {rvof}"
70 next b:for b=1 to 3
80 print " {rvon}   {rvof}      {rvon}   {rvof} {rvon}        {rvof}     {rvon}   {rvof}"
90 next b:for b=1 to 7
100 print " {rvon}   {rvof}      {rvon}   {rvof} {rvon}   {rvof}          {rvon}   {rvof}"
110 next b:for b=1 to 3
120 next b:for b=1 to 3
130 print " {rvon}            {rvof} {rvon}            {rvof} {rvon}           {rvof}"
140 next b

REM probably showing menu
200   
  v=1
  unknown_dowithmem()
  maybe_wait_2sec()

260 screen_move_down_6times()

280 print "   das grosse spiel ums grosse geld.":screen_move_down_6times()
300 gosub 60100:screen_move_down_6times()
320 print " wieviele wollen mitpumpen (2-6 pumper)":screen_move_down_6times()

REM <---------------------------- HERE
340 get sz:if sz>1andsz<7 then 450
360 print "{home}{13 down}{7 rght}{rvon}?"
380 for t=1 to 90: next t
400 print "{home}{13 down}{7 rght}{rvon} "
420 for t=1 to 90: next t
440 goto 340
450 print tab(9)"{up}einen  moment  bitte"
460 dimab(13), bd(13), bm(13), bf$(13), bp(13), bt(13), fb(13), f(13), fm(13), pa(13)
480 dimta(13), rp(37), gf(12), gg(12)
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
820 vg$(5)="sala to il inc  "
840 vg$(6)="swimminoil inc"
860 pf$(1)="bay. pumpe eg  "
880 pf$(2)="dt.pumpenglueck"
900 ra$="bohr & pump & sohn"
920 tg$(1)="raff und gier  "
940 tg$(2)="knaltex  gmbh  "
960 tg$(3)="never come back"
980 tg$(4)="oil on the road"
1000 for t=1 to 12
1020 bp(t)=int(rnd(1)*70000)+30000
1040 fm(t)=int((bp(t)-(rnd(1)*9999)+1)*10)
1060 next t
1080 for t=1 to 12:bt(t)=int(rnd(1)*3666)+1: next t:k=int(rnd(1)*100000)+100000
1100 l1=int(rnd(1)*6)+1
1120 fm(l1*2)=1200:fm(l1*2-1)=1400
1140 for t=1 to 2
1160 pf(t)=int(rnd(1)*80000)+20000
1180 next t
1200 for t=1 to 4
1220 tp(t)=int(rnd(1)*55000)+25000
1240 tw(t)=int(tp(t)/10000)*3: next t
1260 rp(1)=int(rnd(1)*7)+7
1280 for t=2 to 34
1300 rp(t)=rp(t-1)+(int(rnd(1)*14)-7)
1320 if rp(t)<0 then rp(t)=1:goto 1300
1340 if rp(t)>20 then rp(t)=20
1360 next t:for t=1 to 34
1380 a1$="{down}  sie muessen leider drauflegen"
1400 a2$="{down}  ihr  or aben ist gelungen!"
1420 a3$="% erwischt           "
1440 deffnz(x)=int(rnd(1)*x)+1:goto 1520

REM: func init_values()
1460 si=54272:fl=si:fh=si+1:tl=si+2
1480 th=si+3:w=si+4:a=si+5:h=si+6
1500 l=si+24:rz=1983:return

1520 screen_move_down_6times():screen_move_down_6times()
1540 print "        wir befinden uns im jahr":screen_move_down_6times():maybe_wait_2sec()
1560 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"
1580 print tab(13)"{cbm-+} {cbm-+} {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1600 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+}  {2 cbm-+}"
1620 print tab(13)"{cbm-+}   {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1640 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"
1660 screen_move_down_6times():maybe_wait_2sec():screen_move_down_6times()
1680 print "     das spiel endet im jahre 2017":screen_move_down_6times():gosub 60100
1700 b$(1)="deep throat inc.   "
1720 b$(2)="tief und schnell ag"
1740 b$(3)="turbo & drill gmbh "
1760 for t=1 to 3
1780 bg(t)=int(rnd(1)*50000)+10000
1800 next t
1820 a4$="{2 down} welche soll verkauft werden":goto 2000

REM: func prepare_consts_to_load()
1900 data 8, 180, 600, 13, 10, 600, 10, 247, 300, 9, 196, 150, 10, 247, 150, 8, 180, 300
1920 data 6, 133, 300, 8, 180, 300, 14, 162, 300, 13, 10, 300, 10, 247, 150, 11, 158, 150
1940 data 13, 10, 900, -1, -1, 0
1960 return

2000 print "{home}{13 down}{rvof}{9 rght}     {5 left}"sz"pumper spielen mit  "
2020 print "{down} nun noch die namen (max 12 buchstaben){down}"
2040 for t=1 to sz
2060 input"      ";sn$(t):if len(sn$(t))>15 then print "{down} zu lang{down}":goto 2060
2080 ks(t)=k: next t:screen_move_down_6times():v=2
2100 print "viel spass beim geldmachen und verlieren":unknown_dowithmem():screen_move_down_6times()
2120 print "jeder spieler hat "k"$ startkapital":screen_move_down_6times():gosub 60100
2220 print "{clr}{yel}":poke 53280, 4:poke 53281, 14
2240 print "   ihnen stehen folgende wege offen:":print :k=0
2260 print " {blk}1.  oelfelder erwerben.{down}"
2280 print " 2.  pumpenhersteller werden.{down}"
2300 print " 3.  tankwagenhersteller werden.{down}"
2310 print " 4.  bohrgesellschafter werden.{down}"
2320 print " 5.  sabotage betreiben.{down}"
2340 print " 6.  und natuerlich alles zusammen.{down}"
2360 print " 7.  oder gar nichts von allem.{down}"
2400 print " {yel}    sieger ist logischer weise der"
2420 print "     mit dem meisten kapital am ende"
2440 print "     des spiels."
2460 print "{down}";:gosub 60200
2500 print "{clr}{yel}";:poke 53280, 1:set_border_color(RED)
2520 print "{rvon}   die raffinerieoelpreisentwicklung    ";
2530 print "   trend der naechsten jahre (runden)   ";:maybe_wait_2sec()
2560 for t=1 to 34:poke l, 15:for b=1 to rp(t)
2580 poke a, 21:poke 56218+t-(b*40), 4
2600 poke h, 255:poke 1946+t-(b*40), 224
2620 poke th, 8:poke tl, 0:poke fh, 41-t
2640 poke fl, 101-t:poke w, 17
2660 next b, t:poke w, 0
2680 print ;:gosub 60200:for t=1 to 34:rp(t)=rp(t)/10: next t
3000 r=r+1:for s=1 to sz
3100 print "{clr}{down}":poke 53280, 4:poke 53281, 4
3120 print "{3 rght}{wht}{rvon}entscheidungsmoeglichkeit fuer":gosub 52000
3140 print "{3 rght}{cyn}{down}{rvof}spieler "sn$(s)" $="ks(s):print "{blu}{down}   {rvon} einkauf von {rvof}"
3160 print "{down}{blk}   a = bohrgesellschaft"
3180 print "{wht}   b = pumpengesellschaft"
3200 print "{blk}   c = tankwagenfirma"
3220 print "{wht}   d = oelfeld"
3240 print "{blk}   e = bohrgestaenge"
3260 print "{wht}   f = pumpe"
3280 print "{blk}   g = tankwagen":print "{down}{blu}   {rvon}  sonstiges  {rvof}"
3300 print "{down}{wht}   h = naechster spieler"
3320 print "{blk}   i = sabotage betreiben"
3340 print "{wht}   j = preisfestlegung"
3360 print "{blk}   k = weitermachen{down}"
3400 gosub 60200:z2=asc(s$):z2=z2-64
3410 if z2< or 2>12 then 3400
3420 onz2gosub 37000, 31000, 32000, 30000, 38000, 39000, 40000, 3500, 35000, 42000, 3500
3440 next s:goto 4000
3500 return
4000 for s=1 to sz
4200 for i=1 to 12:gosub 12000: next i
4300 ks(s)=int(ks(s)): next s
4400 print "{clr}":gosub 29000
4500 gosub 59000:rz=rz+1:if rz=2017 then 6000
4600 goto 3000
6000 print "{clr}":poke 53281, 0:set_border_color(BLACK)
6100 print " das"
6200 print "    spiel"
6300 print "         ist"
6400 print "             or ueber"
6500 print "{2 down}{lblu} hier das gesamtergebnis:"
6700 print "{2 down} spieler      bankkredit     kapital"
6800 print " {37 cbm-u}"
6900 for z0=1 to sz
7000 print "  "sn$(z0);:print tab(15)bk(z0);:print tab(28)int(ks(z0)-(bk(z0)*1.6))
7100 next z0
7200 print "{2 down} ich hoffe sie hatten viel freude und"
7300 print " verbleibe als ihr oely.{blk}":v=1:unknown_dowithmem():end
10000 print "{clr}":poke 53281, 8:set_border_color(BLACK)
10020 print "{gry1}    {rvon}{shif t-pound}{rvof}{blk}{cbm-r}{gry1}{rvon}_{rvof}{blu}    {rvon}UCCC{cbm-r}I {rvof}  {rvon}{blk}  o e l f e l d  {rvof}"
10040 print "{gry1}    {rvon} {rvof}{blk}]{gry1}{rvon} {rvof}{blu}    {rvon}{cbm-q}{wht}CCC{cbm-x}{blu}JI{rvof}";:print tab(22)bf$(i)
10060 print "{gry1}    {rvon} {rvof}{blk}]{gry1}{rvon} {rvof}{blu}    {rvon}{cbm-y}{blk}WW{blu}CC{blk}W{blu}K{rvof}  {blk}{17 cbm-t}"
10080 print tab(20)"{rvon}{blk} b e s i t z e r {rvof}"
10090 if gg(i)<fm(i) then gf(i)=gf(i)+(8000*(pa(i)))
10100 print tab(22)sn$(s):gg(i)=gg(i)+(8000*(pa(i)))
10120 print "    jahr {wht}"rz;
10140 print tab(20)"{blk}{17 cbm-t}"
10160 print "{down} {blu}"ra$" -":print " raffinerieabnahmepreis = "rp(r)"${down}"
10400 print "{blk} pumpenanzahl :"pa(i)
10420 print "{lgrn} versandmenge :"gf(i)
10440 print "{blk} tankwagen    :"ta(i)
10460 print "{lgrn} lkwkapazitaet:"ta(i)*7000
10480 print "{blk} kapital      :"ks(s)
10500 if gg(i)>fm(i) then print "{down}   quelle erschoepft!"
10505 if gf(i)<=0 then print "{down}";:gosub 60200:return
10510 if ta(i)= or a(i)=0 then print "{down}";:gosub 60200:return
10520 print :input" wieviel liter sollen weg";m
10540 if m>gf(i)orm>ta(i)*7000 then print " zuviel{3 up}":goto 10520
10560 ks(s)=ks(s)+(m*(rp(r))):gf(i)=gf(i)-m
10580 print "{blu} kapital      :"ks(s)" $"
10600 print "{down}";:gosub 60200:return
12000 if fb(i)<>s then return
12005 if f(i)=1 then 10000
12010 print "{clr}":set_border_color(BLACK):poke 53281, 1
12040 print "  {blu}  {rvon}{shif t-pound}    _{rvof}{gry2}{cbm-i}{blk}{2 cbm-@}"
12060 print "  {blu}  {rvon}     {rvof}{shif t-pound}{gry2}{rvon}{cbm-i}{rvof}{blk}{2 cbm-t}";
12080 print tab(17)"{red}bohrung auf feld"
12100 print "  {blu}  {rvon} {rvof}{lred}{cbm-k}{blu}  {cbm-k}{lgrn}";
12120 print tab(17)bf$(i)
12140 print "  {blu}  {rvon} {rvof}   {cbm-v}   "
12160 print "  {blk} UK";
12180 print tab(12)"{lblu}besitzer:{blk}"sn$(s)
12200 print "  {blk}CK"
12220 print " ihr oelfeldlagerverwalter teilt ihnen"
12240 print " folgende daten mit:{down}"
12260 if bm(i)<=0 then print "{red} bohrung unmoeglich,  da kein gestaenge"
12280 if bm(i)<=0 then print " mehr  or anden. wir brauchen nachschub!":goto 12320
12300 bm(i)=bm(i)-500:ab(i)=ab(i)+500-fnz(30)
12320 print " {grn}bisherige bohrtiefe    :"ab(i)"m"
12340 print "{down} bohrgestaenge noch fuer:"bm(i)"m"
12360 if ab(i)>=bt(i) then print "{2 down} wir sind fuendig.":f(i)=1:v=3:unknown_dowithmem()
12460 print "{down}";:gosub 60200:return
28000 print :for dd=1 to 12:print dd;
28100 if fb(dd)=s then print tab(10)bf$(dd):goto 28300
28200 print 
28300 next dd
28400 print :input"fuer welches oelfeld";d
28500 if d=0 then return
28600 if fb(d)<>s then 28400
28700 return
29000 print "jahr:"rz:print :for z8=1 to sz
29100 print sn$(z8);
29200 print tab(20)"kapital:"ks(z8)
29300 next z8
29400 print "{down}";
29500 gosub 60200:return
30000 print "{clr}";:poke 53280, 4:poke 53281, 14
30020 print "{yel}{rvon}                                        {rvof}";
30040 print "{rvon}     o e l f e l d a n g e b o t e      {rvof}";
30060 print "{yel}{rvon}                                        {rvof}";
30080 print "{down}  {red}gesellschaft     oelfeld     preis ${down}"
30100 for t=1 to 6:print vg$(t)
30120 print : next t
30140 print "{home}{5 down}"
30160 for t=1 to 12:print tab(15)"{wht}"chr$(64+t);:print tab(17)"{blu}"bf$(t)
30180 next t:print "{home}{5 down}{blk}"
30200 for t=1 to 12:if fb(t)>0 then print tab(31)"{cyn}verkauft{blk}":goto 30240
30220 print tab(32)bp(t)
30240 next t
30260 print "{down}{wht}   "sn$(s)"{down}"
30280 print "{blk}welches feld soll gekauft werden?  {cbm-@}"
30300 print "{down}{blu}liquides kapital:"ks(s)"$"
30320 get s$:if s$="" then 30320
30340 b=asc(s$)-64:if b>9 or <0 then 30320
30360 if b>12 then return
30380 if fb(b)>0 then 30320
30400 fb(b)=s:ks(s)=ks(s)-bp(b)
30420 print "{3 up}{yel}"tab(35)s$"{down}"
30440 print tab(17)"        {8 left}"ks(s)
30460 for t=1 to 1500: next t
30480 return
31000 print "{clr}";:poke 53281, 6:poke 53280, 2
31020 unknown_dowithmem():print "{yel}{rvon}  pumpe                                 ";
31040 print "{rvon}    &     pumpenvereinigungsgesellschaft";
31060 print "{yel}{rvon}  pumpe                                 "
31080 print " betr.  pumpenfabrikanfrage"
31100 print " EEEEEEEEEEEEEEEEEEEEEEEEEE"
31120 if pp(1)>0andpp(2)>0 then 31280
31140 print "{down} wir koennen ihnen folgende angebote"
31160 print " unterbreiten.{down}"
31180 print " 1 "pf$(1);:if pp(1)>0 then print tab(30)"verkauft":goto 31220
31200 print tab(28)pf(1)
31220 print " 2 "pf$(2);:if pp(2)>0 then print tab(30)"{wht}verkauft{yel}":goto 31260
31240 print tab(28)pf(2)
31260 goto 31360
31280 print "{down}leider muessen wir ihnen mitteilen,  dass";
31300 print " zur zeit keine pumpenherstellungsfirma"
31320 print "zum verkauf ansteht."
31340 gosub 60200:return
31360 print "{down} wenn sie eine fabrik kaufen wollen;"
31380 print " druecken sie die betreffende zahl. wenn";
31400 print " sie nicht wollen druecken sie 'x'"
31420 get s$:if s$="" then 31420
31440 if s$="1"andpp(1)=0 then ks(s)=ks(s)-pf(1):pp(1)=s:screen_move_down_6times():goto 31520
31460 if s$="2"andpp(2)=0 then ks(s)=ks(s)-pf(2):pp(2)=s:screen_move_down_6times():goto 31620
31480 print "{3 down}  schade - das wir nicht ins geschaeft":print "  kommen"
31500 gosub 60100:return
31520 screen_move_down_6times():print "{home}{5 down}"
31540 print "{lgrn} sie sind nun besitzer der firma:{down}":print "     "pf$(1)".{down}"
31560 input" legen sie den pumpenpreis fest";p(1)
31580 if p(1)>60000 then print "zu hoch!":goto 31560
31600 goto 31700
31620 screen_move_down_6times():print "{home}{6 down}"
31640 print "{lgrn} sie sind nun besitzer der firma:{down}":print "     "pf$(2)".{down}"
31660 input"legen sie den pumpenpreis fest";p(2)
31680 if p(2)>60000 then print "zu hoch!":goto 31660
31700 print "{2 down}  {yel}alles klar!":gosub 60100:return
32000 print "{clr}";:set_border_color(BLACK):poke 53281, 14:unknown_dowithmem()
32020 print "{blu}{rvon}                                        {rvof}";
32040 print "{rvon}     t a n k w a g e n f i r m e n      {rvof}";
32060 print "{blu}{rvon}                                        {rvof}";
32080 print "{rvon}             v e r k a u f              {rvof}";
32100 print "{blu}{rvon}                                        {rvof}";
32120 print "{rvon} nr    f i r m a        lkw   preis     {rvof}{home}{6 down}"
32140 for t=1 to 4
32160 print :print t"  "tg$(t): next t
32180 print "{home}{6 down}"
32200 for t=1 to 4
32220 if tb(t)>0 then print tab(30)"{down}{red}verkauft{blu}":goto 32260
32240 print :print tab(24)tw(t);:print tab(29)tp(t)
32260 next t
32280 print "{down} kein kauf = 'x'"
32300 get s$:if s$="" then 32300
32320 b=val(s$):if tb(b)>0 then return
32340 if b> or =0 then return
32360 ks(s)=ks(s)-tp(b):tb(b)=s
32380 print "{down}  ihr kapital betraegt jetzt"ks(s)"{down}"
32400 input" ihr tankwagenpreis";lp(b)
32420 if lp(b)>60000 then print "{clr}{3 down} unrealistisch!{down}":goto 32400
32440 return
33000 print "{clr}{wht}":set_border_color(BLACK):poke 53281, 0
33020 print "     hier faellt die entscheidung !{2 down}{wht}"
33040 w3=int(rnd(1)*10)+1
33060 print tab(15)"{rvon} + 50 %   {rvof}"
33080 print tab(15)"{rvon} - 20 %   {rvof}"
33100 print tab(15)"{rvon} + 40 %   {rvof}"
33120 print tab(15)"{rvon} - 10 %   {rvof}"
33140 print tab(15)"{rvon} + 30 %   {rvof}"
33160 print tab(15)"{rvon} - 30 %   {rvof}"
33180 print tab(15)"{rvon} + 10 %   {rvof}"
33200 print tab(15)"{rvon} - 40 %   {rvof}"
33220 print tab(15)"{rvon} + 20 %   {rvof}"
33240 print tab(15)"{rvon} - 50 %   {rvof}"
33260 print "{3 down}  druecken sie im richtigen moment 'f1'":e=0
33280 for t=1207 to 1567 step 40
33300 poke t, 31:for b=1 to 3: next b
33320 e=e+1:get s$
33340 if s$=chr$(133) then 33380
33360 poke t, 224: next t:e=0:goto 33280
33380 print "{down}  sie haben die ";
33400 onegoto 33420, 33440, 33460, 33480, 33500, 33520, 33540, 33560, 33580, 33600
33420 print "+50"a3$a1$:e=50:goto 33620
33440 print "-20"a3$a2$:e=-20:goto 33620
33460 print "+40"a3$a1$:e=40:goto 33620
33480 print "-10"a3$a2$:e=-10:goto 33620
33500 print "+30"a3$a1$:e=30:goto 33620
33520 print "-30"a3$a2$:e=-30:goto 33620
33540 print "+10"a3$a1$:e=10:goto 33620
33560 print "-40"a3$a2$:e=-40:goto 33620
33580 print "+20"a3$a1$:e=20:goto 33620
33600 print "-50"a3$a2$:e=-50
33620 print "{down}";:gosub 60200:return
35000 print "{clr}{wht}":poke 53281, 11:set_border_color(BLACK)
35020 for t=1 to 23
35040 gosub 51000
35060 print "{rght}"spc(t)"sabotageaktion"
35080 next t
35100 screen_move_down_6times():screen_move_down_6times()
35120 print "{clr}":print tab(12)sn$(s)
35140 print "{down}  folgende sabotagemoeglichkeiten"
35160 print "  stehen zur verfuegung:{down}"
35180 print "{lblu}  agenten anwerben und fremdes oel-"
35200 print "  feld durch ihn unbrauchbar machen"
35220 print "  lassen.  = f1"
35240 print "{yel}  pumpenfirma durch sabotage ausser"
35260 print "  betrieb setzen.  = f3"
35280 print "{lblu}  tankwagenfirma durch bestechhung"
35300 print "  der kreditgeber konkurs gehen "
35320 print "  lassen.  = f5":w4=fnz(40000)
35325 print "{yel}  bohrfirma durch oelueberschwemmung"
35330 print "  ausser kraft setzen.  = f7"
35340 print "{lblu}  lieber doch nichts machen. = 'x'":w3=int(rnd(1)*40000)+40000
35360 gosub 60200
35380 if s$=chr$(136) then 45000
35400 if s$=chr$(133) then 35480
35420 if s$=chr$(134) then 43000
35440 if s$=chr$(135) then 44000
35460 return
35480 screen_move_down_6times():screen_move_down_6times()
35500 print "{clr}{lred} hey,  hier ist agent diabolo huggi baer"
35520 print " welches oelfeld soll ich sabotieren?{down}{gry2}"
35540 for t=1 to 12:print " "t, bf$(t): next t
35560 print :input"  oelfeldnummer";n
35580 if n< or >12 then return
35600 print "{down}{lred} so. fuer die sabotage des oelfeldes"
35620 print " fallen folgende unkosten an:"
35680 print " {wht}spesen,  schmiergelder etc = "w3
35700 print "  or en,  sprengs to ff etc   = "w4
35720 print " gesamt                    = "w3+w4
35740 print " {blk}die chancen einer erfolgreichen"
35760 print " durchfuehrung liegen bei 33% .";:gosub 60100:screen_move_down_6times()
35780 print "{5 down}"
35800 print "{home}{8 down}{wht} soll ich zur tat schreiten?"
35820 get s$:if s$="" then 35820:if s$="n" then return
35830 if s$="n" then return
35840 if s$="j" then 35880
35860 goto 35820
35880 ks(s)=ks(s)-w3-w4:w3=0:w4=0
35900 w3=fnz(3):t1=0
35920 if w3=1 then bp(n)=fnz(50000)+30000:w4=fnz(200000):fm(n)=w4:t1=2:f(n)=0
35940 if w3=1 then bt(n)=fnz(4500):fb(n)=0:pa(n)=0:ta(n)=0:ab(n)=0:bm(n)=0:gf(n)=0
35950 if w3=1 then gg(n)=0
35960 print "{down} {lblu} sabotageergebnis durch tastendruck{5 down}"
35980 get s$:if s$="" then 35980
36000 for k=1 to 30:poke l, 15
36020 poke a, 190:poke th, 8:poke fh, k
36040 print tab(13)"{yel}  gelungen {up}"
36060 poke fl, k:poke w, 33:for t=1 to 100: next t
36080 print tab(13)"{lblu} misslungen{up}":for t1=1 to 100: next t1:poke w, 0: next k
36100 if w3=1 then print tab(13)"{wht}  gelungen "
36120 if w3<>1 then print tab(13)"{2 down}{blk}pech  gehabt"
36140 poke w, 0
36160 if w3<>1 then maybe_wait_2sec():return
36180 for t=16 to 0 step -1
36200 poke l, t:poke a, 15:poke h, 0
36220 poke fh, 40:poke fl, 200:poke w, 129
36240 for ts=1 to 100: next ts
36260 next t
36300 poke l, 15:poke a, 190:poke h, 64
36320 poke fh, 1:poke fl, 95
36340 poke w, 129
36360 for tt=1 to 1000: next tt
36380 poke w, 0:return
37000 print "{clr}{wht}":poke 53280, 6:poke 53281, 6
37020 unknown_dowithmem()
37040 print "{rvon}                                        ";
37060 print "     bohrgesellschaftskaufangebote      ";
37080 print "{rvon}                                        {2 down}"
37100 for t=1 to 3:if bb(t)=0 then 37140
37120 next t:print "keine mehr da":gosub 60100:return
37140 t=0:for t=1 to 3
37160 if bb(t)>0 then 37200
37180 print "{rvon}"t;" "b$(t), bg(t)"  $"
37200 next t
37220 print "{2 down} welche gesellschaft wollen sie kaufen?{down}"
37240 gosub 60200
37260 z1=val(s$):if z1= or b(z1)>0 then return
37280 print "sie sind nun inhaber der gesellschaft":print b$(z1)". legen sie nun"
37300 print "ihren bohrgestaengepreis fuer 500 m fest"
37320 inputbd(z1)
37340 ks(s)=ks(s)-bg(z1):bb(z1)=s:return
38000 print "{clr}{wht}":poke 53281, 8:poke 53280, 8
38020 print "folgende bohrgestaenge werden angeboten:"
38040 print "{blu}firma";spc(15)"preis fuer 500 meter"spc(20)"bohrgestaenge"
38060 for z=1 to 40:print "D";: next z:z=0
38080 for z=1 to 3:print z"  "b$(z);
38100 if bb(z)>0 then print tab(26)bd(z)"$":goto 38140
38120 print tab(26)"{blk}kein angebot{blu}"
38140 next z
38160 if bb(1)=0andbb(2)=0andbb(3)=0 then print "{2 down}{wht}es gibt noch keine firma die"
38180 if bb(1)=0andbb(2)=0andbb(3)=0 then print "die gestaenge verkauft!"
38200 if bb(1)=0andbb(2)=0andbb(3)=0 then gosub 60100:maybe_wait_2sec():return
38220 print "{2 down}{red}"
38240 input"einkauf bei welcher firma";cc:if cc=0 then return
38260 if bd(cc)=0 then print "{2 down}{blk} liegt noch kein angebot vor":goto 38240
38280 input"wieviel 500m einheiten wollen sie";c:if c=0 then return
38300 gosub 28000
38320 if d=0 then return
38340 ks(s)=ks(s)-(c*(bd(cc)))
38350 for k=1 to sz:if bb(cc)=s then ks(s)=ks(s)+(.2*(c*(bd(cc)))):goto 38380
38360 if bb(cc)=k then ks(k)=ks(k)+(c*(bd(cc)))
38380 next k:bm(d)=bm(d)+c*500:gosub 29000
38400 d=0:dd=0:c=0:cc=0:k=0:return
39000 print "{clr}{wht}";:poke 53281, 12:poke 53280, 12
39020 print "{rvon}  **    pumpenverkaeuferangebote    **  {rvof}"
39040 print " gesellschaft    pumpenpreis in ${down}"
39060 for b=0 to 39:print "{cbm-u}";: next b:print 
39080 for z=1 to 2:print z;pf$(z);
39100 if pp(z)=0 then print " {blk}kein angebot{wht}":goto 39140
39120 print p(z)
39140 next z:print "{down}"
39160 input"kauf bei welcher firma ";cc
39180 if cc=0 then return
39200 if pp(cc)=0 then print "{down}kein angebot da":goto 39160
39220 input"{blk}kauf von wieviel pumpen";c
39240 if c=0 then return
39260 gosub 28000:if d=0 then return
39280 ks(s)=ks(s)-(c*p(cc))
39290 for k=1 to sz:if pp(cc)=s then ks(s)=ks(s)+(.2*(c*p(cc))):goto 39320
39300 if pp(cc)=k then ks(k)=ks(k)+(c*p(cc))
39320 next k:pa(d)=pa(d)+c:gosub 29000
39340 d=0:dd=0:c=0:cc=0:k=0:return
40000 print "{clr}{yel}";:poke 53281, 10:poke 53280, 10
40020 print "{rvon}  **   tankwagenverkaufsangebote    **  {rvof}"
40040 print " nr firma      anzahl  preis{down}"
40060 for b=0 to 39:print "{cbm-u}";: next b:print 
40080 for z=1 to 4:print z;tg$(z);tw(z);
40100 if tb(z)=0 then print " {blk}kein angebot{wht}":goto 40140
40120 print lp(z)
40140 next z:print "{down}"
40160 input"lkwkauf bei welcher firma";cc
40180 if cc=0 then return
40200 if tb(cc)= or w(cc)<=0 then print "{down} geht nicht!":goto 40160
40220 input"{blk}kauf von wieviel lkw     ";c
40240 if c= or >tw(cc) then return
40260 gosub 28000:if d=0 then return
40280 ks(s)=ks(s)-(c*lp(cc)):tw(cc)=tw(cc)-c
40290 for k=1 to sz:if tb(cc)=s then ks(s)=ks(s)+(.2*(c*lp(cc))):goto 40320
40300 if tb(cc)=k then ks(k)=ks(k)+(c*lp(cc))
40320 next k:ta(d)=ta(d)+c:gosub 29000
40340 d=0:dd=0:c=0:cc=0:k=0:return
42000 print "{clr}{wht}":poke 53280, 2:set_border_color(RED)
42100 print " fuer welches produkt wollen sie den "
42120 print " preis neu festlegen?"
42140 print "{2 down} 1   =   pumpenpreis"
42160 print "{2 down} 2   =   tankwagenpreis"
42180 print "{2 down} 3   =   bohrgestaengepreis{2 down}"
42200 input" nr";e1:if e1<= or 1>3 then 42200
42220 print "{clr}":one1goto 42300, 42500, 42700
42300 print "nr  firma          pumpenpreis{2 down}"
42320 for z=1 to 2:print z;pf$(z);p(z): next z
42340 print :input" welche firma";e1
42360 if e1<= or 1>2 then print " keine festlegung":maybe_wait_2sec():return
42380 if pp(e1)<>s then print " gehoert ihnen nicht!":goto 42340
42400 print "{down}":gosub 58000
42420 p(e1)=e2:gosub 29000:e1=0:e2=0:return
42500 print "nr  firma       tankwagenpreis{2 down}"
42520 for z=1 to 4:print z;tg$(z);lp(z): next z
42540 print :input" welche firma";e1
42560 if e1<= or 1>4 then print " keine festlegung":maybe_wait_2sec():return
42580 if tb(e1)<>s then print " gehoert ihnen nicht!":goto 42540
42600 print "{down}":gosub 58000
42620 lp(e1)=e2:gosub 29000:e1=0:e2=0:return
42700 print "nr  firma       gestaengepreis{2 down}"
42720 for z=1 to 3:print z;b$(z);bd(z): next z
42740 print :input" welche firma";e1
42760 if e1<= or 1>3 then print " keine festlegung":maybe_wait_2sec():return
42780 if bb(e1)<>s then print " gehoert ihnen nicht!":goto 42740
42800 print "{down}":gosub 58000
42820 bd(e1)=e2:gosub 29000:e1=0:e2=0:return
43000 print "{clr} welche der folgenden pumpenfirmen soll"
43020 print " sabotiert und uebernommen werden?{2 down}"
43040 print "{rvon}gesellschaft    preis       besitzer    "
43060 for z=1 to 2
43080 print z;pf$(z);pf(z);
43100 for zz=1 to sz:if pp(z)=zz then print tab(25)sn$(zz)
43120 next zz, z:print "{down}"
43140 gosub 59900
43160 if n<= or > or p(n)=0 then return
43180 gosub 33000
43200 e=e+100:if e<100 then 43280
43220 ks(s)=ks(s)-((pf(n)*e)/100)
43240 goto 43340
43280 ks(s)=ks(s)-((pf(n)*e)/100)
43320 pp(n)=0:w3=fnz(100000):pf(n)=w3:p(n)=0
43340 e=0:z=0:zz=0:return
44000 print "{clr}{yel} welche der folgenden tankwagenfirmen"
44020 print " soll sabotiert werden?{2 down}"
44040 print "{rvon}{blk}  gesellschaft      preis  besitzer     ":print "{home}{6 down}"
44060 for z=1 to 4:print "{wht}"z;tg$(z)" "tp(z): next z:print "{home}{6 down}"
44080 for zz=1 to 4:for z=1 to sz:if tb(zz)=z then print tab(27)sn$(z):goto 44120
44100 next z:print tab(27)"{blk}frei{wht}"
44120 next zz:print "{down}"
44140 gosub 59900
44160 if n<= or > or b(n)=0 then return
44180 gosub 33000
44200 e=e+100:if e<100 then 44280
44220 ks(s)=ks(s)-((tp(n)*e)/100)
44240 zz=0:z=0:e=0:return
44280 ks(s)=ks(s)-((tp(n)*e)/100)
44300 tb(n)=0
44320 w3=fnz(200000):tp(n)=w3:lp(n)=0:tw(n)=int(w3/10000)
44340 zz=0:z=0
44360 print "{clr}{yel}sie besitzen ein  or aufsrecht auf die"
44380 print "von ihnen sabotierte tankwagenfirma:"
44400 print "{down} firma      :"tg$(n)
44420 print " preis      :"tp(n)"$"
44460 print " lkwzahl    :"tw(n)
44480 print "{2 down} wollen sie kaufen (j/n)?{down}"
44500 gosub 60200:set_border_color(RED):print "{yel}{2 down}"
44520 if s$="j" then tb(n)=s:ks(s)=ks(s)-tp(n)
44540 if s$="j" then input" neuer lkw-preis";lp(n)
44560 return
45000 print "{clr} welche der folgenden bohrgesellschaft-";
45020 print " en soll sabotiert werden{2 down}"
45040 print "{rvon}gesellschaft    preis       besitzer    {rvof}"
45060 for z=1 to 3
45080 print z;b$(z);bg(z);
45100 for zz=1 to sz:if bb(z)=zz then print sn$(zz)
45120 print : next zz, z:print "{down}"
45140 gosub 59900
45160 if n<= or > or b(n)=0 then return
45180 gosub 33000
45200 e=e+100:if e<100 then 45280
45220 ks(s)=ks(s)-((bg(n)*e)/100)
45260 goto 45340
45280 ks(s)=ks(s)-((bg(n)*e)/100)
45320 bb(n)=0:bg(n)=fnz(100000):bd(n)=0
45340 e=0:z=0:zz=0:return

REM:  func unknown_dowithmem()
50000 poke l, 15:poke th, 13:poke tl, 15:poke a, 3*16+15:poke h, 9
50100 read gx:read gy:read dt
50200 if gx=-1 then res to re:return

50300 poke fh, gx:poke fl, gy
50400 poke w, 65
50500 for t=1 to dt/v: next t:poke w, 0
50600 goto 50100
51000 poke l, 15:poke a, 24:poke h, 170
51100 poke fh, 2:poke fl, 113:poke w, 33
51200 for tt=1 to 50: next tt
51300 poke w, 0:poke a, 0:poke h, 0:return
52000 for t=1 to 6:for ts=4 to 14 step 10
52100 poke l, ts:poke a, 15:poke h, 0:poke fh, 6
52200 poke fl, 133:poke w, 17
52300 for tt=1 to 100: next tt
52400 next ts, t:poke w, 0:poke a, 0:return
58000 input" neuer preis";e2
58100 return
59000 for x=1 to sz
59010 if bk(x)>0 then ks(x)=ks(x)-5000:bk(x)=bk(x)-3000:gosub 59400
59020 if ks(x)<0 then gosub 59100
59040 next x:return
59100 print "{clr}{wht}";:poke 53281, 0:set_border_color(BLACK)
59120 poke 53272, 23:print " Die Luft ist raus "sn$(x)
59140 for z9=1 to 30:poke l, 15
59160 poke a, 190:poke th, 8:poke tl, 0
59180 poke fh, 2+z9:poke fl, 78+z9
59200 poke w, 129:for tt=1 to 28: next tt: next z9:poke w, 0
59220 print :print " Du bekommst von der Bankgesellschaft"
59240 print "{down} Raffke und Sohn einen Bankkredit von"
59260 print "{down} 20000 Dollar. Du musst jetzt jedes Jahr"
59280 print "{down} 5000 Dollar abbezahlen.{down}"
59300 print ;:gosub 60200:print "{clr}":poke 53272, 21
59320 ks(x)=ks(x)+20000:bk(x)=bk(x)+20000:return
59400 print "{clr}{rvon}{lblu} raffke und sohn bankkreditabteilung    {rvof}":poke 53281, 0
59420 print "{down} teilt "sn$(x)" mit:"
59440 print "{2 down} noch zahlbar   :"bk(x)"$"
59460 print "{down} jetzt zahlbar  : 5 0 0 0.-- $"
59480 print "{down} ihr kapital    :"ks(x)"$"
59500 print "{2 down}";:gosub 60200:return
59900 input"{rvon}   welche firma (nr)";n
59950 return

REM:  func screen_move_down_6times()
60000 for b=1 to 6:print "{down}": next b
60050 return

60100 for tt=1 to 2000: next tt:return
60200 get s$
60220 print tab(6)"{wht}bitte druecken sie eine taste{up}":for ox=1 to 100:next ox
60260 print tab(6)"{blk}{rvon}bitte druecken sie eine taste{up}":for ox=1 to 100:next ox
60280 if s$="" then 60200
60290 return

REM:  func maybe_wait_2sec()
60300 for tt=1 to 2000: next tt:return
