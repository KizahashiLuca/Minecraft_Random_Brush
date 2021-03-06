#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Remove scoreboards
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove PrevPosX
scoreboard objectives remove PrevPosY
scoreboard objectives remove PrevPosZ
scoreboard objectives remove OR

scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
scoreboard objectives remove RandomMaxNumber

scoreboard players reset @a
scoreboard players reset #mrb

## Remove entities
kill @e[type=minecraft:area_effect_cloud]