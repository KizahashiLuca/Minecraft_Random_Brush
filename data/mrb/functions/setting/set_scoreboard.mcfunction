#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 18 Mar 2021                                 ##
## Version   : α-0.1                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Set scoreboards
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PrevPosX dummy
scoreboard objectives add PrevPosY dummy
scoreboard objectives add PrevPosZ dummy
scoreboard objectives add OR dummy

scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
scoreboard objectives add RandomMaxNumber dummy

scoreboard players set #mrb RandomSeed 0
scoreboard players set #mrb RandomCount 10
scoreboard players set #mrb RandomAnswer 0
scoreboard players set #mrb RandomModder 2147483647
scoreboard players set #mrb RandomMultiplier 48271
scoreboard players set #mrb RandomMaxNumber 5

## Initialize random
function mrb:setting/random_generator/initialize