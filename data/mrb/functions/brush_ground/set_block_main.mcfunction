#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set height
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~ ~ #mrb:unless run tp ~ ~1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s if block ~ ~ ~ #mrb:unless if block ~ ~-1 ~ #mrb:unless run tp ~ ~-1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~ ~ #mrb:unless run kill @s

## Random generator
function mrb:setting/random_generator/initialize

## Set block
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~-1 ~ #mrb:unless unless block ~ ~-1 ~ #mrb:ground run function mrb:brush_ground/set_block_sub

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRBradius]