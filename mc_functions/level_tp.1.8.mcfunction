summon ArmorStand ~ ~1 ~ {NoGravity:1b,Marker:1b,CustomName:"spawnrot1"}

#############################
#
# teleports players to the current level
#   the logig behing:
#
###############################

## init
### level der teleport/spawn punkte
scoreboard objectives add level dummy
### 'register' in dem gerechnet wird
scoreboard objectives add levelrech dummy


## set level
scoreboard players set current level 1

## trigger after set / on clock
scoreboard players set @e[type=ArmorStand,score_level_min=1] levelrech 0
execute @e[type=ArmorStand,score_level_min=1] ~ ~ ~ scoreboard players operation @e[r=0] levelrech += @e[r=0] level
scoreboard players operation @e[type=ArmorStand,score_level_min=1] levelrech -= current level

## the teleport command (for each team)
tp @p @e[type=ArmorStand,score_levelrech=0,score_levelrech_min=0,team=rot1]

## create teleport point
summon ArmorStand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1,CustomName:"spawnrot1"}
### für blickrichtung
tp @e[r=3,type=ArmorStand] @p
### level zuweisen
scoreboard players set @e[type=ArmorStand,r=1] level 1
### team zuweisen
scoreboard teams join blau2 @e[type=ArmorStand,r=1]
