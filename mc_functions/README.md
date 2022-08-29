# MC Befehle
hier sind die Befehle, die in TurtleCity und in den Worksop Welten gebraucht werden,  
um z.B. abgebaute RoboKröten wieder im Adventuremodus setzen zu können, oder den Spielmodus abhängig von der Region auf Turtile City umschalten zu können.

## hilfreiche webseiten:
- MC befehle generieren: https://mcstacker.bimbimma.com/mcstacker1.10.php
- Tellraw generieren: https://www.minecraftjson.com/

## teleport punkte
Mit dem Befehl kann man sich zum Spawn teleportieren.
```mcfunction
tp @p @e[name=spawnpoint]
```
Die Namen sind:
- spawnpoint
- spawnrot1
- spawnblau2
- spawnschwarz3
- spawngelb4
- spawngruen5
- spawnorange6
- spawnhellblau7
- spawnlila8
- haendler

alle challenges sind 23 blöcke auseinander

## Wer hat wieviel punkt?
```mcfunction
# 0 Punkte
tellraw @p ["0 Punkt haben: ",{"selector":"@e[score_punkte=0,score_punkte_min=0]"}]
# 1 punkt
tellraw @p ["1 Punkt haben: ",{"selector":"@e[score_punkte=1,score_punkte_min=1]"}]
# 2 punkte
tellraw @p ["2 Punkt haben: ",{"selector":"@e[score_punkte=2,score_punkte_min=2]"}]

# 'Alle' Punkte rechts anzeigen:
scoreboard objectives setdisplay sidebar punkte

```

## schwebender Text:
Was hat dir gefallen?
```mcfunction
summon ArmorStand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1,CustomName:"Was hat dir gefallen?"}
entitydata @e[type=ArmorStand,r=3] {CustomNameVisible:1}
```

## redstone und cmdb conventions
roter lehm = wird öfter mit redstone_block getauscht
sandstein = oben drauf gehört redstone (falls was kaputt ging, zum erkennen)
komplexere befehls gruppen hier im repo dokumentieren

## gamerules for server
```mcfunction
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule keepInventory true

# stops commandblocks from spamming logs
gamerule commandBlockOutput false

# hat auch iwo gespamt
gamerule logAdminCommands false

# stops gamemode changed message spaming player chat, aber 'true' ist manchmal hilfreich bei befehlen
gamerule sendCommandFeedback false
```

## Turtle City
gamemode in verschiedenen berechen ändern
dokumentiert in [gamemode_in_bereich](/mc_functions/gamemode_in_bereich.1.8.mcfunction)
commandblöcke dazu sind hier: -258 72 188
