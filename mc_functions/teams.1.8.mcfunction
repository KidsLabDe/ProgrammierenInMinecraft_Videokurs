# teams für den streamingkurs

# erstelle rot1
scoreboard teams add rot1 Rot 1
# rot1 soll rot sein
scoreboard teams option rot1 color red
# KingBBQ42 soll in team rot1 sein
scoreboard teams join rot1 KingBBQ42

# teleportier spieler tu marker rüstungsständer mit name
# erstelle rüstungsständer
summon ArmorStand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1,CustomName:"spawnrot1"}
# tp nächsten spieler zu rüstungsständer
tp @p @e[type=ArmorStand,name=spawnrot1]
# spawn rüstungsständer ausrichten mit blickrichtung für teleport
tp @e[name=spawnrot1] @p
