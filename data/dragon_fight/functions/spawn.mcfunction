scoreboard players set ndif df_nb 0
execute as @a run scoreboard players add ndif df_nb 1
execute if score ndif df_nb matches 1..3 run scoreboard players set dif df_nb 1
execute if score ndif df_nb matches 4..6 run scoreboard players set dif df_nb 2
execute if score ndif df_nb matches 7..9 run scoreboard players set dif df_nb 3
execute if score ndif df_nb matches 10.. run scoreboard players set dif df_nb 4

execute if score dif df_nb matches 1 if score difb df_nb matches 3..4 run scoreboard players set dif df_nb 2
execute if score dif df_nb matches 2 if score difb df_nb matches 3..4 run scoreboard players set dif df_nb 3
execute if score dif df_nb matches 3 if score difb df_nb matches 3..4 run scoreboard players set dif df_nb 4
execute if score dif df_nb matches 1 if score difb df_nb matches 5..6 run scoreboard players set dif df_nb 3
execute if score dif df_nb matches 2 if score difb df_nb matches 5..6 run scoreboard players set dif df_nb 4
execute if score dif df_nb matches 1 if score difb df_nb matches 7.. run scoreboard players set dif df_nb 4


execute if score dif df_nb matches 1 as @e[type=minecraft:end_crystal,tag=!df_crystal,limit=3,sort=random] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["df_crystal_a"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute if score dif df_nb matches 1 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run summon minecraft:magma_cube ~ ~ ~ {Health:50,NoAI:1,NoGravity:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["df_crystal_m"],Size:3,Silent:1,DeathTime:10,Attributes:[{Base: 20.0d,Modifiers:[{UUIDMost:-6746280519451426191L,UUIDLeast:-4986665577836093348L,Amount:30.0d,Operation:0}],Name:"generic.maxHealth"}],ArmorItems:[{},{},{tag:{Enchantments:[{id:thorns,lvl:1}]},id:"minecraft:diamond_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score dif df_nb matches 1 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run tag @s add df_crystal

execute if score dif df_nb matches 2 as @e[type=minecraft:end_crystal,tag=!df_crystal,limit=5,sort=random] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["df_crystal_a"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute if score dif df_nb matches 2 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run summon minecraft:magma_cube ~ ~ ~ {Health:50,NoAI:1,NoGravity:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["df_crystal_m"],Size:3,Silent:1,DeathTime:10,Attributes:[{Base: 20.0d,Modifiers:[{UUIDMost:-6746280519451426191L,UUIDLeast:-4986665577836093348L,Amount:30.0d,Operation:0}],Name:"generic.maxHealth"}],ArmorItems:[{},{},{tag:{Enchantments:[{id:thorns,lvl:1}]},id:"minecraft:diamond_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score dif df_nb matches 2 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run tag @s add df_crystal

execute if score dif df_nb matches 3 as @e[type=minecraft:end_crystal,tag=!df_crystal,limit=7,sort=random] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["df_crystal_a"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute if score dif df_nb matches 3 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run summon minecraft:magma_cube ~ ~ ~ {Health:50,NoAI:1,NoGravity:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["df_crystal_m"],Size:3,Silent:1,DeathTime:10,Attributes:[{Base: 20.0d,Modifiers:[{UUIDMost:-6746280519451426191L,UUIDLeast:-4986665577836093348L,Amount:30.0d,Operation:0}],Name:"generic.maxHealth"}],ArmorItems:[{},{},{tag:{Enchantments:[{id:thorns,lvl:1}]},id:"minecraft:diamond_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score dif df_nb matches 3 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run tag @s add df_crystal

execute if score dif df_nb matches 4 as @e[type=minecraft:end_crystal,tag=!df_crystal,limit=10,sort=random] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["df_crystal_a"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute if score dif df_nb matches 4 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run summon minecraft:magma_cube ~ ~ ~ {Health:50,NoAI:1,NoGravity:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["df_crystal_m"],Size:3,Silent:1,DeathTime:10,Attributes:[{Base: 20.0d,Modifiers:[{UUIDMost:-6746280519451426191L,UUIDLeast:-4986665577836093348L,Amount:30.0d,Operation:0}],Name:"generic.maxHealth"}],ArmorItems:[{},{},{tag:{Enchantments:[{id:thorns,lvl:1}]},id:"minecraft:diamond_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score dif df_nb matches 4 as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run tag @s add df_crystal


scoreboard players set @e[type=minecraft:armor_stand,tag=df_crystal_a] df_nb 0
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 1
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 2
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 3
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 4
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 5
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 6
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 7
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 8
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 9
scoreboard players set @e[type=minecraft:armor_stand,limit=1,scores={df_nb=0},sort=random,tag=df_crystal_a] df_nb 10

execute as @e[type=minecraft:armor_stand,tag=df_crystal_a] at @s run function dragon_fight:end_pillar

execute as @e[type=minecraft:end_crystal,tag=!df_crystal] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["df_crystal_a_fake"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
