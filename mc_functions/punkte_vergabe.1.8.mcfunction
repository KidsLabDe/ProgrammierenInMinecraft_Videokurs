# 1. punkte für melone
# bei hauptklock
scoreboard players add @a punkte 0
execute @e[type=Item,name=item.item.speckledMelon] ~ ~ ~ scoreboard players set @a[score_punkte=0,r=1] punkte 1

# 2. punkt nach parkour
# cmdb goldener druckplatte
scoreboard players set @a[r=2,score_punkte=1] 2
tp @p @e[name=haendler]
