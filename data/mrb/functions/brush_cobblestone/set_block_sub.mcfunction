#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 19 Mar 2021                                 ##
## Version   : α-0.2                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Generate random
scoreboard players set #mrb RandomMaxNumber 5
scoreboard players set #mrb RandomCount 5
function mrb:setting/random_generator/randomizing
scoreboard players operation @s RandomAnswer %= #mrb RandomMaxNumber

## Set block
execute as @s[scores={RandomAnswer=0}] run setblock ~ ~-1 ~ minecraft:stone
execute as @s[scores={RandomAnswer=1}] run setblock ~ ~-1 ~ minecraft:cobblestone
execute as @s[scores={RandomAnswer=2}] run setblock ~ ~-1 ~ minecraft:granite
execute as @s[scores={RandomAnswer=3}] run setblock ~ ~-1 ~ minecraft:andesite
execute as @s[scores={RandomAnswer=4}] run setblock ~ ~-1 ~ minecraft:diorite