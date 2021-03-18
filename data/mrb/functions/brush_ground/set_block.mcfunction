#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 18 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Generate random
scoreboard players set #mrb RandomMaxNumber 6
scoreboard players set #mrb RandomCount 5
function mrb:setting/random_generator/randomizing
scoreboard players operation @s RandomAnswer %= #mrb RandomMaxNumber

## Set block
execute as @s[scores={RandomAnswer=0}] run setblock ~ ~-1 ~ minecraft:grass_block
execute as @s[scores={RandomAnswer=1}] run setblock ~ ~-1 ~ minecraft:coarse_dirt
execute as @s[scores={RandomAnswer=2}] run setblock ~ ~-1 ~ minecraft:podzol
execute as @s[scores={RandomAnswer=3}] run setblock ~ ~-1 ~ minecraft:warped_nylium
execute as @s[scores={RandomAnswer=4}] run setblock ~ ~-1 ~ minecraft:green_concrete_powder
execute as @s[scores={RandomAnswer=5}] run setblock ~ ~-1 ~ minecraft:green_terracotta