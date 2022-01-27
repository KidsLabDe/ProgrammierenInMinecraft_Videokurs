# switches gamemode on click of carrot on a stick
## init 
scoreboard objectives add use_carrotstick stat.useItem.minecraft.carrot_on_a_stick

## clock
# set gamemode 3
gamemode 3 @a[score_isadmin_min=1,score_use_carrotstick_min=1]
# reset carrot use
scoreboard players set @a[score_use_carrotstick_min=1] use_carrotstick 0

# set mode 1 when looking straight up
gamemode 1 @a[score_isadmin_min=1,m=3,rxm=-90,rx=-90]