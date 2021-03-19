#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 20 Mar 2021                                 ##
## Version   : α-0.3                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Detect position
scoreboard players operation @s PrevPosX = @s PosX
scoreboard players operation @s PrevPosY = @s PosY
scoreboard players operation @s PrevPosZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 1
execute store result score @s PosY run data get entity @s Pos[1] 1
execute store result score @s PosZ run data get entity @s Pos[2] 1

## Set ground block
execute unless score @s PosX = @s PrevPosX run scoreboard players set @s OR 1
execute unless score @s PosY = @s PrevPosY run scoreboard players set @s OR 1
execute unless score @s PosZ = @s PrevPosZ run scoreboard players set @s OR 1