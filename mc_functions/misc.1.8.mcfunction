# displays 'isadmin' scores at the side
scoreboard objectives setdisplay sidebar isadmin

# sets score
scoreboard players set MatzE_ isadmin 1

# dass nicht immer "Dein Spielmodus wurde geändert" im chat kommt
gamerule sendCommandFeedback false

# alles (auch custom npc) auser sich töten
kill @e[rm=1]

# setzt server spawnpunkt
setworldspawn


# clock
## unten
fill ~ ~1 ~ ~10 ~1 ~ stained_hardened_clay 14
## oben
fill ~ ~-1 ~ ~10 ~-1 ~ redstone_block


# speed auf blauem lehm
execute @a ~ ~ ~ detect ~ ~-1 ~ stained_hardened_clay 3 effect @p speed 1 2 true
execute @a ~ ~ ~ detect ~ ~-1 ~ quartz_block 0 effect @p clear


# wetter schön (gamerule dafür kommt erst in neueren versionen)
weather clear 1000000

# nachtsicht, um selber mehr zu sehen
effect @p minecraft:night_vision 100000 1 true


# toggle visibility of armorstand names
## init
scoreboard objectives add nametoggle dummy

# off
entitydata @e[type=ArmorStand,score_nametoggle_min=1] {CustomNameVisible:0}
# on
entitydata @e[type=ArmorStand,score_nametoggle_min=1] {CustomNameVisible:1}


# tp players to spawn after reconnect
## init
scoreboard objectives add joined stat.leaveGame
## clock
tp @a[score_joined_min=1] @e[name=spawnpoint]
scoreboard players set @a joined 0


# reset alle smaragd mäher:
fill -916 16 -163 717 16 -163 minecraft:redstone_block 0 replace minecraft:stained_hardened_clay 14
# reset all labyrinth 1:
fill 717 16 -111 -916 16 -111 minecraft:redstone_block 0 replace minecraft:stained_hardened_clay 14
# reset all auto labyrinth 2:
fill 716 16 -190 -917 16 -190 minecraft:redstone_block 0 replace minecraft:stained_hardened_clay 14


# worldedit befehl zufällige prozent anteile set:
`//set 2%sapling:2,2%sapling:0,2%sapling:1,94%air`
