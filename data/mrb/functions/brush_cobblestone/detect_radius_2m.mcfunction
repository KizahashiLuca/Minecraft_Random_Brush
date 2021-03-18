#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 19 Mar 2021                                 ##
## Version   : α-0.2                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Generate sphere
summon minecraft:area_effect_cloud ~-1 ~ ~-1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~-1 ~ ~0 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~-1 ~ ~1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~0 ~ ~-1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~0 ~ ~0 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~0 ~ ~1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~1 ~ ~-1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~1 ~ ~0 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
summon minecraft:area_effect_cloud ~1 ~ ~1 {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}

execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~ ~ #mrb:unless run tp ~ ~1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~ ~ #mrb:unless run kill @s

## Random generator
function mrb:setting/random_generator/initialize

## Set block
execute as @e[type=minecraft:area_effect_cloud,tag=MRBradius] at @s unless block ~ ~-1 ~ #mrb:unless run function mrb:brush_cobblestone/set_block

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRBradius]