#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 18 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Summon falling block
summon minecraft:falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:barrier"},Tags:["MRBbarrier"],DropItem:0b,Time:100,NoGravity:1b}

## Summon cloud
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRBposition"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}

## Set scoreboard
scoreboard players set @s OR 0

## Detect position
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b}] run function mrb:brush_ground/detect_position

execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] if block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:0b}] run function mrb:brush_ground/detect_position

## Set block
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b},scores={OR=1}] run function mrb:brush_ground/set_block

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRBposition]