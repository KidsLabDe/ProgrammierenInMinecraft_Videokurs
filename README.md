# Programmieren lernen in Minecraft - OnlineKurs

In diesem Repositorium findest Du alles, was zum Videokurs "Programmieren in Minecraft" gehört.

Mehr Infos zum Kurs findest Du auf meiner Webseite: https://kidslab.de/minecraft/

Fragen gerne per Mail: gregor@kidslab.de oder matze@kidslab.de

# Willkommen zum "Programmieren in Minecraft" Videokurs!
Bei dem kurs lernen kinder in minecraft die grundprinzipien vom programmieren, ablauf, schleifen, bedingungen, funktionen ...
zielgruppen alter: ab 10 Jahren
umfang: 8 stunden á 60min
benötigt: minecraft java lizenzen, rechner, serverinfrastruktur, maus + tastatur, Server (hier mit docker vorbereitet)

## In diesem Reop:

**Lernkarten:**

Für die Stunden gibt es jeweils Lernkarten, die als Hilfe in der Stunde dienen. Dort sind die wichtigen Befehle und Aufgaben noch mal vermerkt.
Werden aktuell nicht aktiv eingesetzt. Möglicherweise veraltet

**Folien zu den einzelnen Stunden:**

Sind jeweils in "Folien"

**Lösungen:**

Die Lösungen für die einzelnen Stunden findest Du unter [Lösungen](/Lösungen/readme.md)

## Kurs Ablauf
### vor der ersten kursstunde
1 termin technik check
eine möglichkeit bigbluebutton, mikrofon, minecraft mod installation etc zu testen, und noch hilfe hierfür anzubieten, damit im kurs alles glatt läuft, und nicht einzelne die die mod noch nicht haben nicht mitmachen können / denen zu helfen alle anderen ausbremst.
### Jede Kursstunde
Wir beginnen immer mit dem theorie teil, folien mit der mechanik die gelernt wird. und dann die aufgabenstellung
dann evtl fragen in großer runde, dass nichts falsch verstanden wurde
dann breakout rooms in gruppen von 2-8 teilnehmern die dann untereinander reden und sich helfen könenn beim aufgaben lösen.
die Mentoren wandern dann von raum zu raum und helfen bei fragen
fertige teilnehmer können sich am spawn mit der erspielten belohung cosmetics kaufen ...shop.png...
nach ablauf der breakout räume, gemeinsame frage / showcase runde, und evtl eine musterlösung zeigen.
feedback an die mentoren fragen, teilnehmer können in der welt hinter dem spawn feedback los werden

### Einzelne Stunden:
Schildkröte kennenlernen

Schildkröte kennenlernen um mit der Fernbedienung den mysteriösen Gegenstand zu finden.
Präsentation 1

Video Erklärung: (alte Welt)
YouTube Video
Labyrinth

Der Schildkröte den Weg durchs Labyrinth beibringen.
Präsentation 2

Video Erklärung: (alte Welt)
YouTube Video


Treppenbau challenge

Hier lernen wir Schleifen
Präsentation 3


Turtle City

Heute schauen wir uns Turtle City an.
Statt folien zeigen wir hier https://handbuch.kidslab.de/minecraft/turtlecity
Turtle City


Smaragdmäher

Hier lernen wir Schleifen in Schleifen, sehr mächtig.
Präsentation 4


Smargdmäher ohne Zählen

Die Schildkröte kann selber erkennen wann sie umdrehen muss.
Falls ... Dann ...
Präsentation 5


Zufalls Labyrinth

Noch mehr:
Was ist wenn...
Falls ... Dann eMail mit allen Infos zum Kurs... Abfragen.
Die Schildkröte lernt selber zu entscheiden.
Präsentation 6


Holz fällen

Jetzt darf die Schildkröte arbeiten gehen.
Wir lernen Zufall zu nutzen und Unterprogramme zu starten.
Präsentation 7


Code'n'Run

Finale Challenge
alles zusammen
Präsentation 8


## Server infrastruktur
docker compose
(1x workshop welt, 1x für template welt?)

docker starten
- wenn keine welt im volume mapping: lädt welt von unserem git (https://github.com/KidsLabDe/MinecraftWorld-TurtleWorkshop)
- wenn in volume mapping: die wird genutzt

Mentor Account ingame freischalten:
minecraft befehle: 
scoreboard ....
erlaubt nutzen von karottenrute, und teleport in den technikraum
op ...
erlaubt das nutzen von befehlen wie /op weitererMentor, /tp, /give oder /gamemode

## Ingame für Kurs-Mentoren
### Immer wieder wichtig:
- Beim betreten wird man immer zum start teleportiert, dies ermöglicht jedem teilnehmer zurück zu kehren. z.B. falls er/sie sich eingesperrt hat.
- Jeder Spieler (auch mentoren) werden beim betreten in Abenteuer modus gesetzt (nichts abbauen, nicht fliegen etc.) mit `/gamemode creative` können sich mentoren in den kreativ modus wechseln.
#### Karottenrute
...carrot_on_a_stick_inv.png...
damit rechtslkick -> zuschauer modus: durch blöcke fliegen
im zuschauermodus mausrad scrollen: schneller / langsamer fliegen
im zuschauermodus gerade nach oben schauen: zurück in kreativ modus
im zuschauermodus bist du für teilnehmer unsichtbar

#### Befehl /tp
befehle gibt man mit "/" im chat ein. also chat mit "t" öffnen, dann "/" und dann den befehl "tp"

tp = teleport und teleportiert dich oder teilnehmer

**Beispiel**
...tp_beispiel.png...
```/tp SpielerName```
teleportiert dich zu dem Spieler der SpielerName heißt

```/tp 0 20 0```
teleportiert dich zum start.

```/tp SpielerName 0 20 0```
Teleportiert spielername zum anfang

```/tp @a 0 20 0```
teleportiert alle zum anfang

```/tp @a @p```
Teleportiert alle zu dir.

#### Technik raum / Lehrerzimmer:
##### Mauern:
...mauern.png...
diese mauern trennen die level, und können zu beginn der kurs stunde weg gemacht werden wenn das level dahinter erreichbar sein soll
...mauer_hebel_technik_raum.png...
jeder hebel hier kontrolliert eine mauer
- hebel oben: mauer weg
- hebel unten: maer da

__Hinweise__:
- Mithilfe der Schildkröten können kreative teilnehmer immer einen weg über die Mauer finden
- Die Hebel machen die mauern nicht direkt weg. sie verschwinden sobald sich jemand nähert.


### Sonstiges
#### CustomNPC tools
npc wand
...

### Support und Kontakt

Gerne können die Inhalte von Lehrern oder Erziehern für eigene Stunden genutzt werden. Die Inhalte stehen untec Creative Commons Lizenz: Namensnennung-Nicht (CC BY-NC).

Bei Fragen gerne melden: gregor@kidslab.de

