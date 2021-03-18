#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 19 Mar 2021                                 ##
## Version   : α-0.2                                       ##
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