#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 19 Mar 2021                                 ##
## Version   : α-0.2                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Recount
scoreboard players remove #mrb RandomCount 1

## Randomize
scoreboard players operation #mrb RandomSeed *= #mrb RandomMultiplier
scoreboard players operation #mrb RandomSeed %= #mrb RandomModder
scoreboard players operation @s RandomAnswer = #mrb RandomSeed

## Loop
execute unless score #mrb RandomCount matches ..0 run function mrb:setting/random_generator/randomizing