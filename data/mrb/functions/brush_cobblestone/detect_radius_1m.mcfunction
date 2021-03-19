#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Generate sphere
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRBradius"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}