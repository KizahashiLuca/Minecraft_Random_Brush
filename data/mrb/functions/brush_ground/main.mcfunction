#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
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

## Set cloud
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b,SelectedItem:{Count:1b}},scores={OR=1}] run function mrb:brush_ground/detect_radius_1m
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b,SelectedItem:{Count:2b}},scores={OR=1}] run function mrb:brush_ground/detect_radius_2m
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b,SelectedItem:{Count:3b}},scores={OR=1}] run function mrb:brush_ground/detect_radius_3m
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b},nbt=!{SelectedItem:{Count:2b}},nbt=!{SelectedItem:{Count:3b}},scores={OR=1}] run function mrb:brush_ground/detect_radius_1m

## Set block
execute at @e[type=minecraft:area_effect_cloud,tag=MRBposition] unless block ~ ~-1 ~ #mrb:unless as @s[nbt={OnGround:1b},scores={OR=1}] run function mrb:brush_ground/set_block_main

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRBposition]