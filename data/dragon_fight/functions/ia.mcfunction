scoreboard players add time df_time 1

execute if score time df_time matches 600.. in minecraft:the_end run summon area_effect_cloud 0 100 0 {Tags:["random_ia"],Age:1}
execute if score time df_time matches 600.. store result score ia_mode df_nb run data get entity @e[type=area_effect_cloud,tag=random_ia,limit=1,sort=nearest] UUIDMost 0.00000000023283064
execute if score time df_time matches 600.. run scoreboard players operation ia_mode df_nb %= 3 df_time
execute if score time df_time matches 600.. run scoreboard players set time df_time 0


# Test ia
# Default : /scoreboard players set ia_mode df_nb -1
execute as @e[type=minecraft:end_crystal,tag=IA] at @s unless entity @a[distance=..10] run tag @s remove IA
execute as @e[type=minecraft:armor_stand,tag=df_crystal_a,tag=IA] at @s unless entity @a[distance=..10] run tag @s remove IA
execute as @e[type=minecraft:armor_stand,tag=IA,tag=df_death] at @s run tag @s remove IA
execute as @e[type=minecraft:end_crystal,tag=!IA] at @s if entity @a[distance=..10] run tag @s add IA
execute as @e[type=minecraft:armor_stand,tag=df_crystal_a,tag=!IA,tag=!df_death] at @s if entity @a[distance=..10] run tag @s add IA

# Lance flame = 0
execute if score ia_mode df_nb matches 0 as @e[tag=IA,type=minecraft:armor_stand] at @s run function dragon_fight:ia_flame
execute unless score ia_mode df_nb matches 0 run kill @e[tag=flame]

# Dragon Area_effect_cloud = 1
execute if score ia_mode df_nb matches 1 as @e[tag=IA,type=end_crystal] at @s run fill ~ ~1 ~ ~ ~10 ~ air
execute if score ia_mode df_nb matches 1 as @e[tag=IA,type=end_crystal] at @s run summon potion ~ ~1 ~ {Potion:{id:"lingering_potion",Count:1},Motion:[0.0,1.0,0.0],Tags:["flame2"],Passengers:[{id:"dragon_fireball",ExplosionPower:0,direction:[0.0,0.0,0.0],Tags:["flame2"]}]}
execute as @e[tag=IA,type=minecraft:end_crystal] at @s if entity @e[type=minecraft:dragon_fireball,distance=..3.4] unless entity @e[type=potion,distance=..3.4] run tp @e[type=minecraft:dragon_fireball,distance=..3.4,limit=1,sort=nearest] @s
execute as @e[tag=IA,type=minecraft:end_crystal] at @s if entity @e[type=minecraft:dragon_fireball,distance=..1] unless entity @e[type=potion,distance=..3] run data merge entity @e[type=minecraft:dragon_fireball,distance=..1,limit=1,sort=nearest] {direction:[0.0,-0.5,0.0]}
execute as @e[type=minecraft:area_effect_cloud] at @s if entity @e[tag=IA,type=minecraft:armor_stand,distance=..0.25] run data merge entity @s {RadiusPerTick:0.0f,Radius:5.5f,WaitTime:0,Duration:560}
execute as @e[type=minecraft:area_effect_cloud] at @s if entity @e[tag=IA,type=minecraft:armor_stand,distance=..0.25] run tp @s ~ ~-1.0 ~
execute if score ia_mode df_nb matches 1 run scoreboard players set ia_mode df_nb -1

# Laser/Endermite = 2
execute as @e[tag=IA,type=minecraft:armor_stand] at @s unless entity @e[type=guardian,tag=laser,distance=..2] if score ia_mode df_nb matches 2 run summon minecraft:guardian ~ ~1.5 ~ {NoGravity:1b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["laser"],CustomName:"{\"text\":\"§9Crystal§r\"}"}
execute unless score ia_mode df_nb matches 2 as @e[tag=IA,type=minecraft:armor_stand] at @s run tp @e[tag=laser,distance=..2] ~ ~-500 ~
execute as @e[tag=laser] at @s unless entity @e[tag=IA,type=minecraft:armor_stand,distance=..2] run tp @s ~ ~-500 ~

execute as @e[tag=IA,type=minecraft:armor_stand] at @s if score ia_mode df_nb matches 2 unless entity @e[type=endermite,distance=..10] run scoreboard players set endermite df_nb 1
execute as @e[tag=IA,type=minecraft:armor_stand] at @s if score ia_mode df_nb matches 2 if score endermite df_nb matches 1 run summon minecraft:endermite ~1 ~ ~
execute as @e[tag=IA,type=minecraft:armor_stand] at @s if score ia_mode df_nb matches 2 if score endermite df_nb matches 1 run summon minecraft:endermite ~-1 ~ ~
execute as @e[tag=IA,type=minecraft:armor_stand] at @s if score ia_mode df_nb matches 2 if score endermite df_nb matches 1 run summon minecraft:endermite ~ ~ ~1
execute as @e[tag=IA,type=minecraft:armor_stand] at @s if score ia_mode df_nb matches 2 if score endermite df_nb matches 1 run summon minecraft:endermite ~ ~ ~-1
scoreboard players set endermite df_nb 0
