import goslate

raw = [
"a = bohrgesellschaft",
"benzinacker ",
"bitte druecken sie eine taste",
" das grosse spiel ums grosse geld.",
" das spiel endet im jahre 2017",
" die raffinerieoelpreisentwicklung ",
"einen moment bitte",
"einkauf von ",
"entscheidungsmoeglichkeit fuer",
"% erwischt ",
"ever-sprudel ",
"heavypump ",
" ihnen stehen folgende wege offen:",
"jeder spieler hat  startkapital",
"lineonpipe ",
" nun noch die namen (max 12 buchstaben)",
"pumper spielen mit ",
" sie muessen leider drauflegen",
" sonstiges ",
"spieler",
"tieferschlund",
"tief und schnell ag",
" trend der naechsten jahre (runden) ",
"viel spass beim geldmachen und verlieren",
" welche soll verkauft werden",
" wieviele wollen mitpumpen (2-6 pumper)",
" wir befinden uns im jahr",
" 1. oelfelder erwerben.",
"verkauft",
" 1 = pumpenpreis",
" 20000 Dollar. Du musst jetzt jedes Jahr",
" 2. pumpenhersteller werden.",
" 2 = tankwagenpreis",
" 3 = bohrgestaengepreis",
" 3. tankwagenhersteller werden.",
" 4. bohrgesellschafter werden.",
" 5000 Dollar abbezahlen.",
" 5. sabotage betreiben.",
" 6. und natuerlich alles zusammen.",
" 7. oder gar nichts von allem.",
" agenten anwerben und fremdes oel-",
" alles klar!",
" ausser kraft setzen. = f7",
"bay. pumpe eg ",
" b e s i t z e r ",
"besitzer:",
" betrieb setzen. = f3",
" betr. pumpenfabrikanfrage",
" bisherige bohrtiefe :ab(i)m FIXME",
"bitte druecken sie eine taste",
"black gold ",
" bohrfirma durch oelueberschwemmung",
" bohrgesellschaftskaufangebote ",
" bohrgestaenge noch fuer:",
"bohr & pump & sohn",
"bohrung auf feld",
" bohrung unmoeglich, da kein gestaenge",
" b = pumpengesellschaft",
" CK",
" c = tankwagenfirma",
"dauersprit ",
"deep throat inc. ",
"denvercream",
" der kreditgeber konkurs gehen ",
" des spiels.",
" die chancen einer erfolgreichen",
"die gestaenge verkauft!",
" Die Luft ist raus ",
" d = oelfeld",
"dollars ",
" druecken sie die betreffende zahl. wenn",
" druecken sie im richtigen moment 'f1'",
"dt.pumpenglueck",
" Du bekommst von der Bankgesellschaft",
" durchfuehrung liegen bei 33% .",
" e = bohrgestaenge",
" EEEEEEEEEEEEEEEEEEEEEEEEEE",
"einkauf bei welcher firma",
" en soll sabotiert werden",
"es gibt noch keine firma die",
"ewingoil ",
" fallen folgende unkosten an:",
" feld durch ihn unbrauchbar machen",
" firma :",
"firma preis fuer 500 meter bohrgestaenge",
"folgende bohrgestaenge werden angeboten:",
" folgende daten mit:",
" folgende sabotagemoeglichkeiten",
" f = pumpe",
"frei",
"fuer welches oelfeld",
" fuer welches produkt wollen sie den "
]


gs = goslate.Goslate()
for s in raw:
    t =  gs.translate(s, 'en', 'de')
    print "%s -> %s" % (s, t)
