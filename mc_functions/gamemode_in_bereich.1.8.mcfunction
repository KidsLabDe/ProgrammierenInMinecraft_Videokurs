### setup, 1 mal manuell ###

# scoreboard erstellen, falls noch nicht vorhanden
scoreboard objectives add isadmin dummy

# überall in der stadt auf höhe 0 muss der customnpcs:npcPlaceholder 9 (9 = hellblau)
# plaziert werden um die stadt zu markieren.

# admins werden hier aus der gamemode regel ausgenommen
# einen Spieler als admin markieren
scoreboard players set MatzE_ isadmin 1


### schleife, jeden tick ###
# clock befehle in misc.1.8.mcfunction

# man kann nur auf n scoreboard value testen, wenn dieses vorhanden ist
# also addieren wir jedem 0 hinzu, dass nicht admins auch 0 im scoreboard stehen haben
scoreboard players add @a isadmin 0

# jeder nicht admin sucht unter sich die markierung
# und setzt sich in den richtigen spielmodus
## hellblauer block = stadt = adventure mode
execute @a[score_isadmin=0] ~ ~ ~ detect ~ 0 ~ customnpcs:npcPlaceholder 9 gamemode adventure @p
## bedrock = außerhalb der stadt = surival mode
execute @a[score_isadmin=0] ~ ~ ~ detect ~ 0 ~ bedrock 0 gamemode survival @p
