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