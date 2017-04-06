20 	init_values()
	clr_scrn()
	set_border_color(BLACK)
	set_inner_color(RED)
	prepare_consts_to_load()

REM maybe_draw_logo() TODO check during runtime
30 for b=1 to 3
40 	print_white_on_black(" ")
	print_black_on_white("            ")
	print_white_on_black(" ")
	print_black_on_white("            ")
	print_white_on_black(" ")
	print_black_on_white("   ")
	print_white_on_black() REM <- restore default mode
50 next b:

   for b=1 to 7
60 	print " "
	print_black_on_white("   ")
	print_white_on_black("      ")
	print_black_on_white("   ")
	print_white_on_black(" ")
	print_black_on_white("   ")
	print_white_on_black("          ")
	print_black_on_white("   ")
	print_white_on_black() REM <- restore default mode
70 next b

   for b=1 to 3
80 	print " "
	print_black_on_white("   ")
	print_white_on_black("      ")
	print_black_on_white("   ")
	print_white_on_black(" ")
	print_black_on_white("        ")
	print_white_on_black("     ")
	print_black_on_white("   ")
	print_white_on_black() REM <- restore default mode
90 next b

   for b=1 to 7
100 	print " "
	print_black_on_white("   ")
	print_white_on_black("      ")
	print_black_on_white("   ")
	print_white_on_black(" ")
	print_black_on_white("   ")
	print_white_on_black("          ")
	print_black_on_white("   ")
	print_white_on_black() REM <- restore default mode
110 next b:

   for b=1 to 3
120 	next b REM <- NOTICE: dead code? TODO check it! (delay?)

   for b=1 to 3
130 	print " "
	print_black_on_white("            ")
	print_white_on_black(" ")
	print_black_on_white("            ")
	print_white_on_black(" ")
	print_black_on_white("           ")
	print_white_on_black() REM <- restore default mode
140 next b

REM probably showing menu
200 	v=1
	unknown_dowithmem()
	maybe_wait_2sec()

260 screen_move_down_6times()

280 	print "   The big game for big money."
	screen_move_down_6times()

300 	maybe_wait_2sec_2:screen_move_down_6times()

REM get amount of players
320 	print " How many want to pump (2-6 pumper)?"
	screen_move_down_6times()

340 	get players_count
	if players_count>1 && players_count<7 
		then goto(450)

360 	mov_cursor_upp_left()
	mov_cursor_down(13)
	mov_cursor_rght(7)
	print_black_on_white("?")

380 terminate_prev_early_exit_loop()

400 	mov_cursor_upp_left()
	mov_cursor_down(13)
	mov_cursor_rght(7)
	print_black_on_white(" ")

420 terminate_prev_early_exit_loop()
440 goto 340 REM retry get correct number of players

450 	print allign_print2column(9)
	mov_cursor_up(1)
	print "one moment please"

REM init game values (string)
460 dim ab(13), bd(13), bm(13), bf$(13), bp(13), bt(13), fb(13), f(13), fm(13), pa(13)
480 dim ta(13), rp(37), gf(12), gg(12)

500 bf$(1)="Petrol station  "
520 bf$(2)="?sparkling water ?"
540 bf$(3)="deep-frozen"
560 bf$(4)="dollars "
580 bf$(5)="heavy pump    "
600 bf$(6)="pipelines   "
620 bf$(7)="happybohr    "	REM TODO translate later
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

REM randomize initial values of products?, TODO check in game
1000 for t=1 to 12
1020 	bp(t)=int(rnd(1)*70000)+30000
1040 	fm(t)=int((bp(t)-(rnd(1)*9999)+1)*10)
1060 next t

1080 for t=1 to 12:
	bt(t)=int(rnd(1)*3666)+1: 
	next t:

REM  assign some single variables, partially random
     start_money=int(rnd(1)*100000)+100000
1100 l1=int(rnd(1)*6)+1
1120 fm(l1*2)=1200:fm(l1*2-1)=1400

1140 for t=1 to 2
1160 	pf(t)=int(rnd(1)*80000)+20000
1180 next t

1200 for t=1 to 4
1220 	tp(t)=int(rnd(1)*55000)+25000
1240 	tw(t)=int(tp(t)/10000)*3:
     next t

1260 rp(1)=int(rnd(1)*7)+7

REM init, assign values?
1280 for t=2 to 34
1300 	rp(t)=rp(t-1)+(int(rnd(1)*14)-7)
1320 	if rp(t)<0 then 
	   rp(t)=1:
	   goto 1300 REM <- inner loop

	REM  max value eq 20 TODO check in game
1340 	if rp(t)>20 
	   then rp(t)=20
1360 next t:

     for t=1 to 34 REM probably empty loop
1380 a1$= (mov_cursor_down() "  They unfortunately have to put it on")
1400 a2$= (mov_cursor_down() "  ihr  or aben ist gelungen!")
1420 a3$="% get           "

REM  func z(x)
1440 def fn z(x)=int(rnd(1)*x)+1:
     goto 1520

REM: func init_values()
1460 	si=54272:
	fl=si:
	fh=si+1:
	tl=si+2

1480 	th=si+3:
	w=si+4:
	a=si+5:
	h=si+6

1500 	l=si+24:
	current_year=1983:
	return

1520 	screen_move_down_6times()
	screen_move_down_6times()

1540 
	print "        We are in the year":
	screen_move_down_6times():
	maybe_wait_2sec()

REM TODO absolutely unknown, print float number format? CBM disk? CBM char display codes?
1560 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"
1580 print tab(13)"{cbm-+} {cbm-+} {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1600 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+}  {2 cbm-+}"
1620 print tab(13)"{cbm-+}   {cbm-+} {cbm-+} {cbm-+}   {cbm-+}"
1640 print tab(13)"{cbm-+} {3 cbm-+} {3 cbm-+} {3 cbm-+}"

1660 
	screen_move_down_6times():
	maybe_wait_2sec():
	screen_move_down_6times()

1680 
	print "     The game ends in 2017":
	screen_move_down_6times():
	maybe_wait_2sec_2

REM main game loop?
1700 company_name(1)="deep throat inc.   "
1720 company_name(2)="deep and fast ag"
1740 company_name(3)="turbo & drill gmbh "

1760 for t=1 to 3
1780 	maybe_company_cost(t)=int(rnd(1)*50000)+10000
1800 next t

1820 
	a4$= (mov_cursor_down(2) "Which is to be sold"):
	goto 2000

REM: func prepare_consts_to_load()
1900 data 8, 180, 600, 13, 10, 600, 10, 247, 300, 9, 196, 150, 10, 247, 150, 8, 180, 300
1920 data 6, 133, 300, 8, 180, 300, 14, 162, 300, 13, 10, 300, 10, 247, 150, 11, 158, 150
1940 data 13, 10, 900, -1, -1, 0
1960 return

REM print players count
2000 	mov_cursor_upp_left()
	mov_cursor_down(13)
	mov_cursor_rght(9)
	print_white_on_black("     ")
	mov_cursor_left(5)
	print players_count
	print "Pumper play with "

REM get names of players
2020 
	mov_cursor_down()
	print "Now the names (max 12 letters):"
	mov_cursor_down()

2040 for t=1 to players_count
2060 
	input "      "; player_name(t):
	if len(player_name(t))>15 then 
	   print "{down} zu lang{down}":
	   goto 2060 REM try again enter name

2080 	player_money(t)=start_money: 
     next t:

     screen_move_down_6times():
     v=2

2100 	print "Much fun with money and lose":
	unknown_dowithmem():
	screen_move_down_6times()

2120 	print "Every player has %d starting money" start_money:
	screen_move_down_6times():
	maybe_wait_2sec_2

2220 	clear_screen(YELLOW):
	set_border_color(VIOLET):
	set_inner_color(LIGHT_BLUE)

REM print main menu (main loop)
2240 	print "   They are open to the following:":
	print :
	k=0

2260 	print " {blk}1.  oelfelder erwerben.{down}"
2280 	print " 2.  pumpenhersteller werden.{down}"
2300 	print " 3.  tankwagenhersteller werden.{down}"
2310 	print " 4.  bohrgesellschafter werden.{down}"
2320 	print " 5.  sabotage betreiben.{down}"
2340 	print " 6.  und natuerlich alles zusammen.{down}"
2360 	print " 7.  oder gar nichts von allem.{down}"
2400 	print " {yel}    sieger ist logischer weise der"
2420 	print "     mit dem meisten kapital am ende"
2440 	print "     des spiels."
2460	print "{down}";:
	make_menu_choice()

2500 
	clear_screen(YELLOW);:
	set_border_color(WHITE):
	set_inner_color(RED)

REM print market schemes
2520 print_black_on_white("   The refinery price development    ");
2530 print "   Trend of the next few years (round)   ";:maybe_wait_2sec()
2560 for t=1 to 34:
	poke l, 15:
	REM draw & set some values?
	for b=1 to rp(t)
2580 	   poke a, 21:
	   poke 56218+t-(b*40), 4 REM color ram mem
2600 	   poke h, 255:
	   poke 1946+t-(b*40), 224 REM smthng with starting year? scrn mem
2620 	   poke th, 8:
	   poke tl, 0:
	   poke fh, 41-t
2640 	   poke fl, 101-t:
	   poke w, 17
2660 	next b, 
     next t:
     poke w, 0

2680 	
	print ;:
	make_menu_choice():
	for t=1 to 34:
	   rp(t)=rp(t)/10: 
	next t
3000 round_num=round_num+1:

REM  turn for each player
     for s=1 to players_count
3100 	clear_screen()
	mov_cursor_down():
	set_border_color(VIOLET):
	set_inner_color(VIOLET)

3120 	mov_cursor_rght(3)
	print_black_on_white("Decision - making", WHITE):
	unknown_set_values()

3140 	mov_cursor_rght(3)
	mov_cursor_down()
	print_white_on_black("Player %s $= %d", player_name(s), player_money(s), CYAN):
	
	mov_cursor_down()
	print_black_on_white("Shopping of ", BLUE)
	print_white_on_black()

	REM print description for selection menu
3160 	mov_cursor_down()
	print "{blk}   a = Drilling company"
3180 	print "{wht}   b = pumpengesellschaft"
3200 	print "{blk}   c = tankwagenfirma"
3220 	print "{wht}   d = oelfeld"
3240 	print "{blk}   e = bohrgestaenge"
3260 	print "{wht}   f = pumpe"

3280 	print "{blk}   g = tankwagen":	
	mov_cursor_down()
	print_black_on_white("  Others  ", BLUE)
	print_white_on_black()

3300	mov_cursor_down()
 	print "{wht}   h = naechster spieler"
3320 	print "{blk}   i = sabotage betreiben"
3340 	print "{wht}   j = preisfestlegung"
3360 	print "{blk}   k = weitermachen{down}"

3400 	make_menu_choice():
	z2=asc(menu_choice):
	z2=z2-64	REM chars from 2 to 12 (a to k)
3410 	if z2<2 or z2>12 then 
	   goto 3400 REM retry correct menu choice

	REM select correct location and jump to proper menu window (jump table)
3420 	on z2 
	  gosub menu_drill_company(),
		menu_pump_company(), 
		menu_tanks_company(), 
		menu_oil_fields(), 
		menu_drill_rigging(), 
		menu_pumps(), 
		menu_tanks(), 
		menu_next_player(), 
		menu_sabotage_operation(), 
		menu_price_fix(), 
		menu_next_player()
3440 next s:

     goto 4000 REM go to summary?
3500 return

4000 for s=1 to players_count
4200 	for i=1 to 12:
	   unknown_print_magic(): 
	next i

4300 	player_money(s)=int(player_money(s)): 
     next s

4400 print "{clr}":
     callback_from_drill_rigging2()

4500 maybe_buy_something():
     current_year=current_year+1:
     if current_year=2017 then 
	goto 6000

4600 goto 3000
6000 print "{clr}":
     set_inner_color(BLACK):
     set_border_color(BLACK)

REM: summary, game over
6100 print " das"
6200 print "    spiel"
6300 print "         ist"
6400 print "             or ueber"
6500 print "{2 down}{lblu} hier das gesamtergebnis:"
6700 print "{2 down} spieler      bankkredit     kapital"
6800 print " {37 cbm-u}"
6900 for z0=1 to players_count
7000 	print "  "player_name(z0);:
	print tab(15)player_bankloan(z0);:
	print tab(28)int(player_money(z0)-(player_bankloan(z0)*1.6))
7100 next z0

7200 print "{2 down} ich hoffe sie hatten viel freude und"
7300 print " verbleibe als ihr oely.{blk}":
     v=1:unknown_dowithmem():
     end REM game over, close program

REM callback from func below
10000 print "{clr}":set_inner_color(ORANGE):set_border_color(BLACK)
10020 print "{gry1}    print_black_on_white(){shif t-pound}print_white_on_black(){blk}{cbm-r}{gry1}print_black_on_white()_print_white_on_black(){blu}    print_black_on_white()UCCC{cbm-r}I print_white_on_black()  print_black_on_white(){blk}  o e l f e l d  print_white_on_black()"
10040 print "{gry1}    print_black_on_white() print_white_on_black(){blk}]{gry1}print_black_on_white() print_white_on_black(){blu}    print_black_on_white(){cbm-q}{wht}CCC{cbm-x}{blu}JIprint_white_on_black()";:print tab(22)bf$(i)
10060 print "{gry1}    print_black_on_white() print_white_on_black(){blk}]{gry1}print_black_on_white() print_white_on_black(){blu}    print_black_on_white(){cbm-y}{blk}WW{blu}CC{blk}W{blu}Kprint_white_on_black()  {blk}{17 cbm-t}"
10080 print tab(20)"print_black_on_white(){blk} b e s i t z e r print_white_on_black()"
10090 if gg(i)<fm(i) then gf(i)=gf(i)+(8000*(pa(i)))
10100 print tab(22)player_name(s):gg(i)=gg(i)+(8000*(pa(i)))
10120 print "    jahr {wht}"current_year;
10140 print tab(20)"{blk}{17 cbm-t}"
10160 print "{down} {blu}"ra$" -":print " raffinerieabnahmepreis = "rp(r)"${down}"
10400 print "{blk} pumpenanzahl :"pa(i)
10420 print "{lgrn} versandmenge :"gf(i)
10440 print "{blk} tankwagen    :"ta(i)
10460 print "{lgrn} lkwkapazitaet:"ta(i)*7000
10480 print "{blk} kapital      :"player_money(s)
10500 if gg(i)>fm(i) then print "{down}   quelle erschoepft!"
10505 if gf(i)<=0 then print "{down}";:make_menu_choice():return
10510 if ta(i)= or a(i)=0 then print "{down}";:make_menu_choice():return
10520 print :input" wieviel liter sollen weg";m
10540 if m>gf(i)orm>ta(i)*7000 then print " zuviel{3 up}":goto 10520
10560 player_money(s)=player_money(s)+(m*(rp(r))):gf(i)=gf(i)-m
10580 print "{blu} kapital      :"player_money(s)" $"
10600 print "{down}";:make_menu_choice():return

REM:  func unknown_print_magic()
12000 	if fb(i)<>s then 
	   return
12005 	if f(i)=1 then 
	   goto 10000
12010 	print "{clr}":
      	set_border_color(BLACK):
	set_inner_color(WHITE)

12040 	print "  {blu}  print_black_on_white(){shif t-pound}    _print_white_on_black(){gry2}{cbm-i}{blk}{2 cbm-@}"
12060 	print "  {blu}  print_black_on_white()     print_white_on_black(){shif t-pound}{gry2}print_black_on_white(){cbm-i}print_white_on_black(){blk}{2 cbm-t}";
12080 	print tab(17)"{red}bohrung auf feld"
12100 	print "  {blu}  print_black_on_white() print_white_on_black(){lred}{cbm-k}{blu}  {cbm-k}{lgrn}";
12120 	print tab(17)bf$(i)
12140 	print "  {blu}  print_black_on_white() print_white_on_black()   {cbm-v}   "
12160 	print "  {blk} UK";
12180 	print tab(12)"{lblu}besitzer:{blk}"player_name(s)
12200 	print "  {blk}CK"
12220 	print " ihr oelfeldlagerverwalter teilt ihnen"
12240 	print " folgende daten mit:{down}"

12260 	if bm(i)<=0 then 
	   print "{red} bohrung unmoeglich,  da kein gestaenge"
12280 	if bm(i)<=0 then 
	   print " mehr  or anden. wir brauchen nachschub!":
	   goto 12320

12300 	bm(i)=bm(i)-500:
	ab(i)=ab(i)+500-fnz(30)

12320 	print " {grn}bisherige bohrtiefe    :"ab(i)"m"
12340 	print "{down} bohrgestaenge noch fuer:"bm(i)"m"
12360 	if ab(i)>=bt(i) then 
	   print "{2 down} wir sind fuendig.":
	   f(i)=1:v=3:
	   unknown_dowithmem()

12460 	print "{down}";:
	make_menu_choice():
      return

REM:  func callback_from_drill_rigging() TODO rewrite
28000 print :
      for dd=1 to 12:
	   print dd;
28100 	if fb(dd)=s then 
	   print tab(10)bf$(dd):
	   goto 28300
28200 	print 
28300 next dd

28400 print :
      input"fuer welches oelfeld";d
28500 if d=0 then 
	return
28600 if fb(d)<>s then 
	goto 28400
28700 return

REM:  func callback_from_drill_rigging2() TODO rewrite
29000 print "jahr:"current_year:
      print :
      for z8=1 to players_count
29100 	print player_name(z8);
29200 	print tab(20)"kapital:"player_money(z8)
29300 next z8

29400 print "{down}";
29500 make_menu_choice():
      return

REM:  func menu_oil_fields TODO rewrite
30000 	print "{clr}";:
	set_border_color(VIOLET):
	set_inner_color(WHITE)4
30020 	print "{yel}print_black_on_white()                                        print_white_on_black()";
30040 	print "print_black_on_white()     o e l f e l d a n g e b o t e      print_white_on_black()";
30060 	print "{yel}print_black_on_white()                                        print_white_on_black()";
30080 	print "{down}  {red}gesellschaft     oelfeld     preis ${down}"

30100 	for t=1 to 6:
	  print vg$(t)
30120 	  print : 
	next t

30140 	print "mov_cursor_upp_left(){5 down}"

30160 	for t=1 to 12:
	   print tab(15)"{wht}"chr$(64+t);:
	   print tab(17)"{blu}"bf$(t)
30180 	next t:

	print "mov_cursor_upp_left(){5 down}{blk}"

30200 	for t=1 to 12:
	   if fb(t)>0 then 
		print tab(31)"{cyn}verkauft{blk}":
	   goto 30240
30220 	   print tab(32)bp(t)
30240 	next t

30260 	print "{down}{wht}   "player_name(s)"{down}"
30280 	print "{blk}welches feld soll gekauft werden?  {cbm-@}"
30300 	print "{down}{blu}liquides kapital:"player_money(s)"$"

30320 	get menu_choice:
	if s$="" then 30320
30340 	   b=asc(menu_choice)-64:
	if b>9 or <0 then 
	   goto 30320

30360 	if b>12 then 
	  return
30380 	if fb(b)>0 then 
	  30320
30400 	fb(b)=s:
	player_money(s)=player_money(s)-bp(b)
	
30420 	print "{3 up}{yel}"tab(35)menu_choice"{down}"
30440 	print tab(17)"        {8 left}"player_money(s)
30460 	for t=1 to 1500: next t
30480 return

REM:  func menu_drill_company() TODO rewrite
31000 	clear_screen();:
	set_inner_color(BLUE):
	set_border_color(RED)
31020 	unknown_dowithmem():
	print "{yel}print_black_on_white()  pumpe                                 ";
31040 	print "print_black_on_white()    &     pumpenvereinigungsgesellschaft";
31060 	print "{yel}print_black_on_white()  pumpe                                 "
31080 	print " betr.  pumpenfabrikanfrage"
31100 	print " EEEEEEEEEEEEEEEEEEEEEEEEEE"
31120 	if pp(1)>0andpp(2)>0 then 
	  goto 31280
31140 	print "{down} wir koennen ihnen folgende angebote"
31160 	print " unterbreiten.{down}"

31180 	print " 1 "pf$(1);:
	if pp(1)>0 then 
	   print tab(30)"verkauft":
	goto 31220
31200 	print tab(28)pf(1)

31220 	print " 2 "pf$(2);:
	if pp(2)>0 then 
	   print tab(30)"{wht}verkauft{yel}":
	goto 31260
31240 	print tab(28)pf(2)
31260 	goto 31360

31280 	print "{down}leider muessen wir ihnen mitteilen,  dass";
31300 	print " zur zeit keine pumpenherstellungsfirma"
31320 	print "zum verkauf ansteht."

31340 	make_menu_choice():
	return

31360 print "{down} wenn sie eine fabrik kaufen wollen;"
31380 print " druecken sie die betreffende zahl. wenn";
31400 print " sie nicht wollen druecken sie 'x'"
31420 get menu_choice:
      if s$="" then 
        goto 31420
31440 if menu_choice="1" and pp(1)=0 then 
        player_money(s)=player_money(s)-pf(1):
        pp(1)=s:screen_move_down_6times():
        goto 31520

31460 if menu_choice="2" and pp(2)=0 then 
        player_money(s)=player_money(s)-pf(2):
        pp(2)=s:screen_move_down_6times():
        goto 31620

31480 print "{3 down}  schade - das wir nicht ins geschaeft":
      print "  kommen"
31500 maybe_wait_2sec_2:
      return

31520 screen_move_down_6times():
      print "mov_cursor_upp_left(){5 down}"
31540 print "{lgrn} sie sind nun besitzer der firma:{down}":
      print "     "pf$(1)".{down}"
31560 input" legen sie den pumpenpreis fest";p(1)
31580 if p(1)>60000 then 
        print "zu hoch!":
        goto 31560
31600 goto 31700
31620 screen_move_down_6times():
      print "mov_cursor_upp_left(){6 down}"
31640 print "{lgrn} sie sind nun besitzer der firma:{down}":
      print "     "pf$(2)".{down}"

31660 input"legen sie den pumpenpreis fest";p(2)
31680 if p(2)>60000 then 
        print "zu hoch!":
        goto 31660

31700 print "{2 down}  {yel}alles klar!":
      maybe_wait_2sec_2:
      return

REM:  func menu_tanks_company() TODO rewrite
32000 	print "{clr}";:
	set_border_color(BLACK):
	set_inner_color(WHITE)4:
	unknown_dowithmem()
32020 	print_black_on_white("                                        ", BLUE)
	print_white_on_black();

32040 	print_black_on_white("     t a n k w a g e n f i r m e n      ")
	print_white_on_black();
32060 	print_black_on_white("                                        ", BLUE)
	print_white_on_black();
32080 	print_black_on_white("             v e r k a u f              ")
	print_white_on_black();

32100 	print_black_on_white("                                        ", BLUE)
	print_white_on_black();

32120 	print_black_on_white(" nr    f i r m a        lkw   preis     ")
	print_white_on_black()
	mov_cursor_upp_left()
	mov_cursor_down(6)

32140 	for t=1 to 4
32160 	   print :
	   print t"  "tg$(t): 
	next t

32180 	print "mov_cursor_upp_left(){6 down}"

32200 	for t=1 to 4
32220 	   if tb(t)>0 then 
		print tab(30)"{down}{red}verkauft{blu}":
	   goto 32260
32240 	   print :
	   print tab(24)tw(t);:
	   print tab(29)tp(t)
32260 	next t

32280 	print "{down} kein kauf = 'x'"
32300 	get menu_choice:
	if s$="" then 
	   goto 32300
32320 	b=val(menu_choice):
	if tb(b)>0 then 
	   return
32340 	if b> or =0 then 
	   return

32360 	player_money(s)=player_money(s)-tp(b):tb(b)=s
32380 	print "{down}  ihr kapital betraegt jetzt"player_money(s)"{down}"
32400 	input" ihr tankwagenpreis";lp(b)
32420 	if lp(b)>60000 then 
	   print "{clr}{3 down} unrealistisch!{down}":
	   goto 32400
32440 return


REM:  func maybe_change_prices()
33000 	print "{clr}{wht}":
	set_border_color(BLACK):
	set_inner_color(BLACK)

33020 	print "     hier faellt die entscheidung !{2 down}{wht}"
33040 	w3=int(rnd(1)*10)+1
33060 	print tab(15)"print_black_on_white() + 50 %   print_white_on_black()"
33080 	print tab(15)"print_black_on_white() - 20 %   print_white_on_black()"
33100 	print tab(15)"print_black_on_white() + 40 %   print_white_on_black()"
33120 	print tab(15)"print_black_on_white() - 10 %   print_white_on_black()"
33140 	print tab(15)"print_black_on_white() + 30 %   print_white_on_black()"
33160 	print tab(15)"print_black_on_white() - 30 %   print_white_on_black()"
33180 	print tab(15)"print_black_on_white() + 10 %   print_white_on_black()"
33200 	print tab(15)"print_black_on_white() - 40 %   print_white_on_black()"
33220 	print tab(15)"print_black_on_white() + 20 %   print_white_on_black()"
33240 	print tab(15)"print_black_on_white() - 50 %   print_white_on_black()"
33260 	print "{3 down}  druecken sie im richtigen moment 'f1'":e=0

33280 	for t=1207 to 1567 step 40
33300 	   poke t, 31:
	   terminate_prev_early_exit_loop(b, 1, 3)
33320 	   e=e+1:
	   get menu_choice

33340 	   if menu_choice=chr$(133) 
		then 33380
33360 	   poke t, 224: 
	next t:
	e=0:
	goto 33280

33380 	print "{down}  sie haben die ";
33400 	on e 
	   goto 33420, 
		33440, 
		33460, 
		33480, 
		33500, 
		33520, 
		33540, 
		33560, 
		33580, 
		33600

33420 	print "+50"a3$a1$:
	e=50:
	goto 33620
33440 	print "-20"a3$a2$:
	e=-20:
	goto 33620
33460 	print "+40"a3$a1$:
	e=40:
	goto 33620
33480 	print "-10"a3$a2$:
	e=-10:
	goto 33620
33500 	print "+30"a3$a1$:
	e=30:
	goto 33620
33520 	print "-30"a3$a2$:
	e=-30:
	goto 33620
33540 	print "+10"a3$a1$:
	e=10:
	goto 33620
33560 	print "-40"a3$a2$:
	e=-40:
	goto 33620
33580 	print "+20"a3$a1$:
	e=20:
	goto 33620
33600 	print "-50"a3$a2$:
	e=-50

33620 	print "{down}";:
	make_menu_choice():
      return

REM:  func menu_sabotage_operation() TODO rewrite
35000 	print "{clr}{wht}":
	set_inner_color(WHITE)1:
	set_border_color(BLACK)
35020 	for t=1 to 23
35040 	   unknown_set_values2()
35060 	   print "{rght}"spc(t)"sabotageaktion"
35080 	next t
35100 	screen_move_down_6times():
	screen_move_down_6times()

35120 	print "{clr}":
	print tab(12)
	player_name(s)
35140 	print "{down}  folgende sabotagemoeglichkeiten"
35160 	print "  stehen zur verfuegung:{down}"
35180 	print "{lblu}  agenten anwerben und fremdes oel-"
35200 	print "  feld durch ihn unbrauchbar machen"
35220 	print "  lassen.  = f1"
35240 	print "{yel}  pumpenfirma durch sabotage ausser"
35260 	print "  betrieb setzen.  = f3"
35280 	print "{lblu}  tankwagenfirma durch bestechhung"
35300 	print "  der kreditgeber konkurs gehen "
35320 	print "  lassen.  = f5":w4=fnz(40000)
35325 	print "{yel}  bohrfirma durch oelueberschwemmung"
35330 	print "  ausser kraft setzen.  = f7"
35340 	print "{lblu}  lieber doch nichts machen. = 'x'":w3=int(rnd(1)*40000)+40000

35360 	make_menu_choice()
35380 	if menu_choice=chr$(136) then 
	   goto 45000
35400 	if menu_choice=chr$(133) then 
	   goto 35480
35420 	if menu_choice=chr$(134) then 
	   goto 43000
35440 	if menu_choice=chr$(135) then 
	   goto 44000
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
35760 print " durchfuehrung liegen bei 33% .";:maybe_wait_2sec_2:screen_move_down_6times()
35780 print "{5 down}"
35800 print "mov_cursor_upp_left(){8 down}{wht} soll ich zur tat schreiten?"
35820 get menu_choice:if s$="" then 35820:if s$="n" then return
35830 if menu_choice="n" then return
35840 if menu_choice="j" then 35880
35860 goto 35820
35880 player_money(s)=player_money(s)-w3-w4:w3=0:w4=0
35900 w3=fnz(3):t1=0
35920 if w3=1 then bp(n)=fnz(50000)+30000:w4=fnz(200000):fm(n)=w4:t1=2:f(n)=0
35940 if w3=1 then bt(n)=fnz(4500):fb(n)=0:pa(n)=0:ta(n)=0:ab(n)=0:bm(n)=0:gf(n)=0
35950 if w3=1 then gg(n)=0
35960 print "{down} {lblu} sabotageergebnis durch tastendruck{5 down}"
35980 get menu_choice:if s$="" then 35980
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

REM:  func menu_drill_company() TODO rewrite 
37000 	print "{clr}{wht}":
	set_border_color(BLUE):
	set_inner_color(BLUE)

37020 	unknown_dowithmem()
37040 	print "print_black_on_white()                                        ";
37060 	print "     bohrgesellschaftskaufangebote      ";
37080 	print "print_black_on_white()                                        {2 down}"

37100 	for t=1 to 3:
	   if bb(t)=0 then 
		goto 37140
37120 	next t:

	print "keine mehr da":
	maybe_wait_2sec_2:
      return


37140 t=0:for t=1 to 3
37160 if bb(t)>0 then 37200
37180 print "print_black_on_white()"t;" "company_name(t), maybe_company_cost(t)"  $"
37200 next t
37220 print "{2 down} welche gesellschaft wollen sie kaufen?{down}"
37240 make_menu_choice()
37260 z1=val(menu_choice):if z1= or b(z1)>0 then return
37280 print "sie sind nun inhaber der gesellschaft":print company_name(z1)". legen sie nun"
37300 print "ihren bohrgestaengepreis fuer 500 m fest"
37320 inputbd(z1)
37340 player_money(s)=player_money(s)-maybe_company_cost(z1):bb(z1)=s:return

REM:  func menu_drill_rigging() TODO rewrite
38000 	print "{clr}{wht}":
	set_inner_color(ORANGE):
	set_border_color(ORANGE)

38020 	print "folgende bohrgestaenge werden angeboten:"
38040 	print "{blu}firma";spc(15)"preis fuer 500 meter"spc(20)"bohrgestaenge"
38060 	for z=1 to 40:
	   print "D";: 
	next z:
	z=0
38080 	for z=1 to 3:
	   print z"  "company_name(z);
38100 	   if bb(z)>0 then 
		print tab(26)bd(z)"$":
		goto 38140

38120 	   print tab(26)"{blk}kein angebot{blu}"
38140 	next z

38160 	if bb(1)=0 and bb(2)=0 and bb(3)=0 then 
	   print "{2 down}{wht}es gibt noch keine firma die"
38180 	if bb(1)=0 and bb(2)=0 and bb(3)=0 then 
	   print "die gestaenge verkauft!"
38200 	if bb(1)=0 and bb(2)=0 and bb(3)=0 then 
	   maybe_wait_2sec_2:
	   maybe_wait_2sec():
	   return

38220 	print "{2 down}{red}"
38240 	input"einkauf bei welcher firma";cc:
	if cc=0 then 
	   return

38260 	if bd(cc)=0 then 
	   print "{2 down}{blk} liegt noch kein angebot vor":
	   goto 38240

38280 	input "wieviel 500m einheiten wollen sie";c:
	if c=0 then 
	   return

38300 	callback_from_drill_rigging()

38320 	if d=0 then 
	   return
38340 	player_money(s)=player_money(s)-(c*(bd(cc)))
38350 	for k=1 to players_count:
	   if bb(cc)=s then 
		player_money(s)=player_money(s)+(.2*(c*(bd(cc)))):
		goto 38380
38360 	   if bb(cc)=k then 
		player_money(k)=player_money(k)+(c*(bd(cc)))
38380 	next k:

	bm(d)=bm(d)+c*500:
	gosub callback_from_drill_rigging2()

38400 	d=0:
	dd=0:
	c=0:
	cc=0:
	k=0:
      return

REM:  func menu_pumps() TODO rewrite
39000 	print "{clr}{wht}";:
	set_inner_color(WHITE)2:
	set_border_color(WHITE)

39020 	print "print_black_on_white()  **    pumpenverkaeuferangebote    **  print_white_on_black()"
39040 	print " gesellschaft    pumpenpreis in ${down}"
39060 	for b=0 to 39:
	   print "{cbm-u}";: 
	next b:
	print 

39080 	for z=1 to 2:
	   print z;pf$(z);

39100 	   if pp(z)=0 then 
		print " {blk}kein angebot{wht}":
		goto 39140
39120 	   print p(z)
39140 	next z:

	print "{down}"

39160 	input"kauf bei welcher firma ";cc

39180 	if cc=0 then 
	   return
39200 	if pp(cc)=0 then 
	   print "{down}kein angebot da":
	   goto 39160

39220 	input"{blk}kauf von wieviel pumpen";c
39240 	if c=0 then 
	   return
39260 	callback_from_drill_rigging():
	if d=0 then 
	   return

39280 	player_money(s)=player_money(s)-(c*p(cc))
39290 	for k=1 to players_count:
	   if pp(cc)=s then 
		player_money(s)=player_money(s)+(.2*(c*p(cc))):
		goto 39320
39300 	   if pp(cc)=k then 
		player_money(k)=player_money(k)+(c*p(cc))
39320 	next k:

	pa(d)=pa(d)+c:
	callback_from_drill_rigging2()

39340 	d=0:
	dd=0:
	c=0:
	cc=0:
	k=0:
      return

REM:  func menu_tanks() TODO rewrite
40000 	clear_screen(YELLOW);:
	set_inner_color(WHITE)0:
	set_border_color(WHITE)

40020 	print "print_black_on_white()  **   tankwagenverkaufsangebote    **  print_white_on_black()"
40040 	print " nr firma      anzahl  preis{down}"
40060 	for b=0 to 39:
	   print "{cbm-u}";: 
	next b:
	print 

40080 	for z=1 to 4:
	   print z;tg$(z);tw(z);

40100 	   if tb(z)=0 then 
		print " {blk}kein angebot{wht}":
	   	goto 40140

40120 	   print lp(z)
40140 	next z:
	print "{down}"

40160 	input"lkwkauf bei welcher firma";cc
40180 	if cc=0 then 
	   return
40200 	if tb(cc)= or w(cc)<=0 then 
	   print "{down} geht nicht!":
	   goto 40160

40220 	input"{blk}kauf von wieviel lkw     ";c
40240 	if c= or >tw(cc) then 
	   return

40260 	callback_from_drill_rigging():
	if d=0 then 
	   return
40280	player_money(s)=player_money(s)-(c*lp(cc)):
	tw(cc)=tw(cc)-c

40290 	for k=1 to players_count:
	if tb(cc)=s then 
	   player_money(s)=player_money(s)+(.2*(c*lp(cc))):
	   goto 40320

40300 	if tb(cc)=k then 
	   player_money(k)=player_money(k)+(c*lp(cc))
40320 	next k:
	ta(d)=ta(d)+c:
	callback_from_drill_rigging2()

40340 	d=0:
	dd=0:
	c=0:
	cc=0:
	k=0:
      return

REM:  func menu_price_fix() TODO rewrite
42000 	print "{clr}{wht}":
	set_border_color(RED):
	set_inner_color(RED)
42100 	print " fuer welches produkt wollen sie den "
42120 	print " preis neu festlegen?"
42140 	print "{2 down} 1   =   pumpenpreis"
42160 	print "{2 down} 2   =   tankwagenpreis"
42180 	print "{2 down} 3   =   bohrgestaengepreis{2 down}"
42200 	input" nr";e1:
	if e1<= or 1>3 then 
	   goto 42200

42220 	print "{clr}":
	on e1 
	   goto 42300, 
		42500, 
		42700

42300 	print "nr  firma          pumpenpreis{2 down}"
42320 	for z=1 to 2:
	   print z;pf$(z);p(z): 
	next z

42340 	print :
	input" welche firma";e1

42360 	if e1<= or 1>2 then 
	   print " keine festlegung":
	   maybe_wait_2sec():
	return

42380 	if pp(e1)<>s then 
	   print " gehoert ihnen nicht!":
	   goto 42340

42400 	print "{down}":
	set_new_price()

42420 	p(e1)=e2:
	callback_from_drill_rigging2():
	e1=0:
	e2=0:
      return

REM price changes logic
42500 print "nr  firma       tankwagenpreis{2 down}"
42520 for z=1 to 4:
	print z;tg$(z);lp(z): 
      next z

42540 print :
      input" welche firma";e1

42560 if e1<= or 1>4 
	then print " keine festlegung":
	maybe_wait_2sec():
	return
42580 if tb(e1)<>s then 
	print " gehoert ihnen nicht!":
	goto 42540 REM select correct company

42600 mov_cursor_down:
      set_new_price()

42620 lp(e1)=e2:
      callback_from_drill_rigging2():
      e1=0:e2=0:
      return

REM TODO something else, check location
42700 print "nr  firma       gestaengepreis{2 down}"
42720 for z=1 to 3:
	print z;company_name(z);bd(z): 
      next z

42740 print :
      input" welche firma";e1
42760 if e1<= or 1>3 then 
	print " keine festlegung":
	maybe_wait_2sec():
	return

42780 if bb(e1)<>s then 
	print " gehoert ihnen nicht!":
	goto 42740 REM get correct company number

42800 mov_cursor_down():
      set_new_price()
42820 bd(e1)=e2:
      callback_from_drill_rigging2():
      e1=0:
      e2=0:
      return

43000 clr_scrn() 
      print "welche der folgenden pumpenfirmen soll"

43020 print " sabotiert und uebernommen werden?"
      mov_cursor_down(2)

43040 print print_black_on_white("gesellschaft    preis       besitzer    ")
43060 for z=1 to 2
43080   print z;pf$(z);pf(z);
43100   for zz=1 to players_count:
	  if pp(z)=zz then 
		print tab(25)player_name(zz)
43120   next zz, 
      next z:
      mov_cursor_down()
43140 select_company()
43160 if n<= or > or p(n)=0 then 
	return
43180 maybe_change_prices()
43200 e=e+100:
      if e<100 then 
	goto 43280
43220 player_money(s)=player_money(s)-((pf(n)*e)/100)
43240 goto 43340

43280 player_money(s)=player_money(s)-((pf(n)*e)/100)
43320 pp(n)=0:
      w3=fnz(100000):
      pf(n)=w3:p(n)=0

43340 e=0:
      z=0:
      zz=0:
      return

44000 print "{clr}{yel} welche der folgenden tankwagenfirmen"
44020 print " soll sabotiert werden?{2 down}"
44040 print "print_black_on_white(){blk}  gesellschaft      preis  besitzer     ":
      print "mov_cursor_upp_left(){6 down}"
44060 for z=1 to 4:
	print "{wht}"z;tg$(z)" "tp(z): 
      next z:
      print "mov_cursor_upp_left(){6 down}"
44080 for zz=1 to 4:
        for z=1 to players_count:
          if tb(zz)=z then 
		print tab(27)player_name(z):
		goto 44120
44100   next z:
        print tab(27)"{blk}frei{wht}"
44120 next zz:
      print "{down}"

44140 select_company()
44160 if n<= or > or b(n)=0 then 
	return
44180 maybe_change_prices()
44200 e=e+100:
      if e<100 then 
	goto 44280
44220 player_money(s)=player_money(s)-((tp(n)*e)/100)
44240 zz=0:z=0:e=0:
      return


44280 player_money(s)=player_money(s)-((tp(n)*e)/100)
44300 tb(n)=0
44320 w3=fnz(200000):
      tp(n)=w3:
      lp(n)=0:
      tw(n)=int(w3/10000)
44340 zz=0:
      z=0
44360 print "{clr}{yel}sie besitzen ein  or aufsrecht auf die"
44380 print "von ihnen sabotierte tankwagenfirma:"
44400 print "{down} firma      :"tg$(n)
44420 print " preis      :"tp(n)"$"
44460 print " lkwzahl    :"tw(n)
44480 print "{2 down} wollen sie kaufen (j/n)?{down}"
44500 make_menu_choice():
      set_inner_color(RED):
      print "{yel}{2 down}"
44520 if menu_choice="j" then 
        tb(n)=s:
        player_money(s)=player_money(s)-tp(n)
44540 if menu_choice="j" then 
         input" neuer lkw-preis";lp(n)
44560 return
45000 print "{clr} welche der folgenden bohrgesellschaft-";
45020 print " en soll sabotiert werden{2 down}"
45040 print "print_black_on_white()gesellschaft    preis       besitzer    print_white_on_black()"
45060 for z=1 to 3
45080   print z;company_name(z);maybe_company_cost(z);
45100   for zz=1 to players_count:
          if bb(z)=zz then 
            print player_name(zz)
45120     print : 
         next zz, 
       next zz:
       print "{down}"

45140 select_company()
45160 if n<= or > or b(n)=0 then 
        return
45180 maybe_change_prices()
45200 e=e+100:
      if e<100 then 
        goto 45280
45220 player_money(s)=player_money(s)-((maybe_company_cost(n)*e)/100)
45260 goto 45340
45280 player_money(s)=player_money(s)-((maybe_company_cost(n)*e)/100)
45320 bb(n)=0:maybe_company_cost(n)=fnz(100000):bd(n)=0
45340 e=0:
      z=0:
      zz=0:
      return

REM:  func unknown_dowithmem()
50000 	poke l, 15:
	poke th, 13:
	poke tl, 15:
	poke a, 3*16+15:
	poke h, 9
50100 	read gx:
	read gy:
	read dt
50200 	if gx=-1 then 
	  restore:
	return

50300 poke fh, gx:poke fl, gy
50400 poke w, 65
50500 for t=1 to dt/v: next t:poke w, 0
50600 goto 50100

REM:  func unknown_set_values2()
51000 	poke l, 15:
	poke a, 24:
	poke h, 170

51100 	poke fh, 2:
	poke fl, 113:
	poke w, 33

51200 	terminate_prev_early_exit_loop(tt, 1, 50) 

51300 	poke w, 0:
	poke a, 0:
	poke h, 0:
      return

REM:  func unknown_set_values()
52000 for t=1 to 6:
	for ts=4 to 14 step 10
52100 	   poke l, ts:
	   poke a, 15:
	   poke h, 0:
	   poke fh, 6

52200 	   poke fl, 133:
	   poke w, 17

52300 	   terminate_prev_early_exit_loop(tt, 1, 100)

52400 	 next ts, 
      next t:
      poke w, 0:
      poke a, 0:
      return

REM:  func set_new_price()
58000 	input" neuer preis";e2
58100 return

REM:  func maybe_buy_something()
59000 	for x=1 to players_count
59010 	   if player_bankloan(x)>0 then 
		player_money(x)=player_money(x)-5000:
		player_bankloan(x)=player_bankloan(x)-3000:
		print_player_wallet()

59020 	   if player_money(x)<0 then 
	   	make_loan_or_loose()
59040 	next x:
      return

REM:  func make_loan_or_loose()
59100 	print "{clr}{wht}";:
	set_inner_color(BLACK):
	set_border_color(BLACK)

59120 	set_mem_registers(23):
	print " Die Luft ist raus "player_name(x)

59140 	for z9=1 to 30:
	  poke l, 15

59160 	  poke a, 190:
	  poke th, 8:
	  poke tl, 0

59180 	  poke fh, 2+z9:
	  poke fl, 78+z9

59200 	  poke w, 129:
	  terminate_prev_early_exit_loop(tt, 1, 28):
	next z9:
	poke w, 0

59220 	print :
	print " Du bekommst von der Bankgesellschaft"
59240 	print "{down} Raffke und Sohn einen Bankkredit von"
59260 	print "{down} 20000 Dollar. Du musst jetzt jedes Jahr"
59280 	print "{down} 5000 Dollar abbezahlen.{down}"
59300 	print ;:
	make_menu_choice():
	print "{clr}":
	set_mem_registers(21)

59320 	player_money(x)=player_money(x)+20000:
	player_bankloan(x)=player_bankloan(x)+20000:

      return

REM:  func print_player_wallet()
59400 	print "{clr}print_black_on_white(){lblu} raffke und sohn bankkreditabteilung    print_white_on_black()":
	set_inner_color(BLACK)
59420 	print "{down} teilt "player_name(x)" mit:"
59440 	print "{2 down} noch zahlbar   :"player_bankloan(x)"$"
59460 	print "{down} jetzt zahlbar  : 5 0 0 0.-- $"
59480 	print "{down} ihr kapital    :"player_money(x)"$"
59500 	print "{2 down}";:
	make_menu_choice():
      return

REM:  func select_company()
59900 	input"print_black_on_white()   welche firma (nr)";n
59950 return

REM:  func screen_move_down_6times()
60000 for b=1 to 6:print "{down}": next b
60050 return

REM:  func maybe_wait_2sec_2()
60100	for tt=1 to 2000: 
	next tt
	return

REM:  func make_menu_choice()
60200 get menu_choice
60220 allign_print2column(6)
      print("Please press a button", WHITE)
      mov_cursor_up():
      terminate_prev_early_exit_loop(ox, 1, 100)

60260 allign_print2column(6)
      print "{blk}"
      print_black_on_white("bitte druecken sie eine taste")
      mov_cursor_up():
      terminate_prev_early_exit_loop(ox, 1, 100)

60280 if menu_choice="" then 
	60200 REM loop, go back anf get corretct value
60290 return

REM:  func maybe_wait_2sec()
60300 	for tt=1 to 2000 
	next tt
	return
