# init (einmalig)
# scoreboard erstellen
scoreboard objectives add roboitem dummy

# clock unten
fill ~ ~1 ~ ~11 ~1 ~ stone
# clock oben
fill ~ ~-1 ~ ~11 ~-1 ~ redstone_block


# jeden tick:
# init all turtles
scoreboard players add @e[type=Item] roboitem 0 {Item:{id:"computercraftedu:CC-TurtleJunior",Damage:0s,Count:1b}}
# anfänger turtle
scoreboard players set @e[type=Item,score_roboitem=9] roboitem 1 {Item:{id:"computercraftedu:CC-TurtleJunior",Damage:0s,Count:1b,tag:{leftUpgrade:5s}}}
execute @e[type=Item,score_roboitem_min=1,score_roboitem=1] ~ ~ ~ summon Item ~ ~ ~ {Item:{id:"computercraftedu:CC-TurtleJunior",Count:1,tag:{CanPlaceOn:["computercraftedu:turtleBuildAllow"],display:{Name:"Robo Kröte"},leftUpgrade:5s}},PickupDelay:20,Damage:1s}
kill @e[type=Item,score_roboitem=1,score_roboitem_min=1]
scoreboard players set @e[type=Item] roboitem 10 {Item:{id:"computercraftedu:CC-TurtleJunior",Damage:0s,Count:1b,tag:{leftUpgrade:5s}}}

# mining turtle
scoreboard players set @e[type=Item,score_roboitem=9] roboitem 1 {Item:{id:"computercraftedu:CC-TurtleJunior",Damage:0s,Count:1b}}
execute @e[type=Item,score_roboitem_min=1,score_roboitem=1] ~ ~ ~ summon Item ~ ~ ~ {Item:{id:"computercraftedu:CC-TurtleJunior",Count:1,tag:{CanPlaceOn:["computercraftedu:turtleBuildAllow"],display:{Name:"Robo Kröte"}}},PickupDelay:20,Damage:1s}
kill @e[type=Item,score_roboitem=1,score_roboitem_min=1]
scoreboard players set @e[type=Item] roboitem 10 {Item:{id:"computercraftedu:CC-TurtleJunior",Damage:0s,Count:1b}}
