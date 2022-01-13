# in lehrerzimmer:
# min 2 punkte für alle (an der clock):
scoreboard players set @a[socre_punkte=2] punkte 2
# knopfwand für punkte anzeigen wer wieviele hat:
tellraw @a[score_isadmin_min=1] ["0 Punkt haben: ",{"selector":"@e[score_punkte=0,score_punkte_min=0]"}]
tellraw @a[score_isadmin_min=1] ["1 Punkt haben: ",{"selector":"@e[score_punkte=1,score_punkte_min=1]"}]
tellraw @a[score_isadmin_min=1] ["2 Punkt haben: ",{"selector":"@e[score_punkte=2,score_punkte_min=2]"}]
tellraw @a[score_isadmin_min=1] ["3 Punkt haben: ",{"selector":"@e[score_punkte=3,score_punkte_min=3]"}]
# ...

# 1. punkte für melone
# bei hauptklock
scoreboard players add @a punkte 0
execute @e[type=Item,name=item.item.speckledMelon] ~ ~ ~ scoreboard players set @a[score_punkte=0,r=1] punkte 1

# 2. punkt nach parkour
# cmdb goldener druckplatte
scoreboard players set @a[r=2,score_punkte=1] 2
tp @p @e[name=haendler]
