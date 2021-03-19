#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Initialize a seed
scoreboard players set #mrb RandomSeed 0
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] store result score @s RandomSeed run data get entity @s UUID[0] 1
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] run scoreboard players operation @s RandomSeed %= #mrb RandomMaxNumber
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] run scoreboard players operation #mrb RandomSeed += @s RandomSeed
