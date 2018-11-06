scoreboard players set @s df_size 0

summon area_effect_cloud ~ ~-4 ~ {Tags:["random"],Age:1}
execute store result score Rand df_size run data get entity @e[type=area_effect_cloud,tag=random,limit=1,sort=nearest] UUIDMost 0.00000000023283064
scoreboard players operation Rand df_size %= 2 df_size

execute if entity @s[scores={df_size=0}] if block ~5 ~-2 ~ minecraft:obsidian if score Rand df_size matches 1 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-8,mode:"LOAD",posY:-1,sizeX:17,posZ:-8,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_5a",sizeY:13,sizeZ:17,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~5 ~-2 ~ minecraft:obsidian if score Rand df_size matches 0 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-6,mode:"LOAD",posY:-1,sizeX:13,posZ:-6,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_5b",sizeY:12,sizeZ:13,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~5 ~-2 ~ minecraft:obsidian run scoreboard players set @s df_size 1

execute if entity @s[scores={df_size=0}] if block ~4 ~-2 ~ minecraft:obsidian if score Rand df_size matches 0 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-6,mode:"LOAD",posY:-1,sizeX:13,posZ:-6,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_4b",sizeY:12,sizeZ:13,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~4 ~-2 ~ minecraft:obsidian if score Rand df_size matches 1 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-4,mode:"LOAD",posY:-2,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_4a",sizeY:12,sizeZ:9,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~4 ~-2 ~ minecraft:obsidian run scoreboard players set @s df_size 1

execute if entity @s[scores={df_size=0}] if block ~3 ~-2 ~ minecraft:obsidian if score Rand df_size matches 0 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-4,mode:"LOAD",posY:-2,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_3b",sizeY:10,sizeZ:9,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~3 ~-2 ~ minecraft:obsidian if score Rand df_size matches 1 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-3,mode:"LOAD",posY:-1,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_3a",sizeY:10,sizeZ:7,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~3 ~-2 ~ minecraft:obsidian run scoreboard players set @s df_size 1

execute if entity @s[scores={df_size=0}] if block ~2 ~-2 ~ minecraft:obsidian if score Rand df_size matches 0 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-2,mode:"LOAD",posY:-1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_2b",sizeY:7,sizeZ:5,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~2 ~-2 ~ minecraft:obsidian if score Rand df_size matches 1 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{posX:-2,mode:"LOAD",posY:-1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"dragon_fight:end_pillar_2a",sizeY:6,sizeZ:5,showboundingbox:0b}
execute if entity @s[scores={df_size=0}] if block ~2 ~-2 ~ minecraft:obsidian run scoreboard players set @s df_size 1

setblock ~ ~-1 ~ redstone_block
setblock ~ ~-1 ~ bedrock
particle minecraft:explosion_emitter ~ ~2.5 ~ 1.5 1 1.5 1 2 force
playsound entity.generic.explode master @a ~ ~ ~ 3 1 0
