# MC Befehle
hier sind die Befehle, die in TurtleCity und in den Worksop Welten gebraucht werden,  
um z.B. abgebaute RoboKröten wieder in Adventuremodus setzen zu können, oder den Spielmodus abhängig von der Region auf Turtile City umschalten zu können.

## hilfreiche webseiten:
- MC befehle generieren https://mcstacker.bimbimma.com/mcstacker1.10.php

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