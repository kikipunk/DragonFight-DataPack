tp ~ ~-0.2 ~
scoreboard players add @s df_nb 1
execute if score @s df_nb matches 25.. run fill ~ ~ ~ ~ ~7 ~ minecraft:obsidian replace minecraft:redstone_block
execute if score @s df_nb matches 25.. run fill ~ ~ ~ ~ ~7 ~ minecraft:obsidian replace minecraft:structure_block

scoreboard players set @s df_size2 0
execute if score @s df_size2 matches 0 if block ~5 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-5,mode:"LOAD",posY:-3,sizeX:11,posZ:-5,integrity:0.5f,showair:0b,name:"dragon_fight:end_pillar_5break",sizeY:5,sizeZ:11,showboundingbox:0b}
execute if score @s df_size2 matches 0 if block ~5 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run scoreboard players set @s df_size2 1
execute if score @s df_size2 matches 0 if block ~4 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-4,mode:"LOAD",posY:-3,sizeX:9,posZ:-4,integrity:0.5f,showair:0b,name:"dragon_fight:end_pillar_4break",sizeY:5,sizeZ:9,showboundingbox:0b}
execute if score @s df_size2 matches 0 if block ~4 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run scoreboard players set @s df_size2 1
execute if score @s df_size2 matches 0 if block ~3 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-3,mode:"LOAD",posY:-3,sizeX:7,posZ:-3,integrity:0.5f,showair:0b,name:"dragon_fight:end_pillar_3break",sizeY:5,sizeZ:7,showboundingbox:0b}
execute if score @s df_size2 matches 0 if block ~3 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run scoreboard players set @s df_size2 1
execute if score @s df_size2 matches 0 if block ~2 ~-2 ~ minecraft:obsidian if score @s df_nb matches 25.. run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-2,mode:"LOAD",posY:-3,sizeX:5,posZ:-2,integrity:0.5f,showair:0b,name:"dragon_fight:end_pillar_2break",sizeY:5,sizeZ:5,showboundingbox:0b}

execute if score @s df_nb matches 25.. run setblock ~ ~1 ~ minecraft:redstone_block
execute if score @s df_nb matches 25.. run scoreboard players set @s df_nb 0

particle minecraft:explosion_emitter ~ ~0.5 ~ 1.5 0 1.5 1 2 force
execute if score @s df_nb matches 0 run playsound entity.generic.explode master @a ~ ~ ~ 3 1 0
execute if score @s df_nb matches 8 run playsound entity.generic.explode master @a ~ ~ ~ 3 1 0
execute if score @s df_nb matches 16 run playsound entity.generic.explode master @a ~ ~ ~ 3 1 0

execute if entity @s[y=0,dy=0] run fill ~ ~ ~ ~ ~4 ~ minecraft:obsidian
execute if entity @s[y=0,dy=0] run kill @s
