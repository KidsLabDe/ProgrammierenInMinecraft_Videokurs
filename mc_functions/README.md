# MC Befehle
hier sind die Befehle, die in TurtleCity und in den Worksop Welten gebraucht werden,  
um z.B. abgebaute RoboKröten wieder in Adventuremodus setzen zu können, oder den Spielmodus abhängig von der Region auf Turtile City umschalten zu können.

## hilfreiche webseiten:
- MC befehle generieren https://mcstacker.bimbimma.com/mcstacker1.10.php

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