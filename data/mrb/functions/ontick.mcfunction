#############################################################
## Minecraft Random Brush                                  ##
## MC-Version: JE 1.16.5                                   ##
## Author    : @KizahashiLuca                              ##
## Date      : 19 Mar 2021                                 ##
## Version   : α-0.2                                       ##
## ©2021. This work is licensed under a CC BY 4.0 license. ##
#############################################################

## Setting
execute if entity @p[nbt={SelectedItem:{tag:{Tags:["MRBitem"]}}}] run function mrb:setting/set_scoreboard
execute unless entity @p[nbt={SelectedItem:{tag:{Tags:["MRBitem"]}}}] run function mrb:setting/remove_scoreboard

## Kill falling block
kill @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:barrier"}},tag=MRBbarrier]

## Detect brush
execute as @a[nbt={SelectedItem:{tag:{Tags:["MRBitem","brush_cobblestone"]}}}] at @s run function mrb:brush_cobblestone/main
execute as @a[nbt={SelectedItem:{tag:{Tags:["MRBitem","brush_ground"]}}}] at @s run function mrb:brush_ground/main

execute as @a[nbt={SelectedItem:{tag:{Tags:["MRBitem"]}}}] run title @s actionbar ["",{"text":"現在の座標 : ( "},{"score": {"name":"@s","objective": "PosX"}},{"text":", "},{"score": {"name":"@s","objective": "PosY"}},{"text":", "},{"score": {"name":"@s","objective": "PosZ"}},{"text":")"}]