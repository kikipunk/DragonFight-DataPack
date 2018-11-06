execute if entity @e[type=minecraft:ender_dragon] if score new df_nb matches 0 run function dragon_fight:spawn
execute if entity @e[type=minecraft:ender_dragon] if score new df_nb matches 0 run scoreboard players set new df_nb 1
execute unless entity @e[type=minecraft:ender_dragon] if score new df_nb matches 1 run function dragon_fight:death
execute unless entity @e[type=minecraft:ender_dragon] run scoreboard players set new df_nb 0

execute as @e[type=minecraft:armor_stand,scores={df_nb=1..10},tag=df_crystal_a] at @s run function dragon_fight:health

execute in minecraft:the_end run tp @e[type=minecraft:magma_cube,nbt={Size:2}] 0 -500 0
execute in minecraft:the_end run tp @e[type=minecraft:magma_cube,nbt={Size:1}] 0 -500 0
execute in minecraft:the_end run tp @e[type=minecraft:magma_cube,nbt={Size:0}] 0 -500 0


execute as @e[type=minecraft:armor_stand,tag=df_crystal_a] at @s unless entity @e[type=minecraft:end_crystal,distance=..1] run function dragon_fight:crystal_kill
execute as @e[type=minecraft:armor_stand,tag=df_crystal_a_fake] at @s unless entity @e[type=minecraft:end_crystal,distance=..1] run function dragon_fight:crystal_kill

execute as @e[type=minecraft:armor_stand,tag=df_death] at @s run function dragon_fight:destruction

# affichage ender_dragon
execute as @e[type=minecraft:ender_dragon] at @s run effect give @e[type=minecraft:magma_cube,distance=..10] minecraft:regeneration 10 1 true
execute as @e[type=minecraft:ender_dragon] at @s if entity @e[type=minecraft:end_crystal,distance=..200] run data merge entity @s {Team:"df_red",Invulnerable:1b,CustomName:"{\"text\":\"Ender Dragon [Invulnerable]\"}"}
execute as @e[type=minecraft:ender_dragon] at @s unless entity @e[type=minecraft:end_crystal,distance=..200] run data merge entity @s {Invulnerable:0b,CustomName:"{\"text\":\"§rEnder Dragon\"}"}

# gestion ia
function dragon_fight:ia
