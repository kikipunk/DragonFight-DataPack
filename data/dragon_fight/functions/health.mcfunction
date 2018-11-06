execute if score @s df_nb matches 1 store result bossbar minecraft:df_crystal1 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 2 store result bossbar minecraft:df_crystal2 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 3 store result bossbar minecraft:df_crystal3 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 4 store result bossbar minecraft:df_crystal4 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 5 store result bossbar minecraft:df_crystal5 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 6 store result bossbar minecraft:df_crystal6 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 7 store result bossbar minecraft:df_crystal7 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 8 store result bossbar minecraft:df_crystal8 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 9 store result bossbar minecraft:df_crystal9 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1
execute if score @s df_nb matches 10 store result bossbar minecraft:df_crystal10 value run data get entity @e[type=minecraft:magma_cube,limit=1,distance=..1] Health 1

execute if score @s df_nb matches 1 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal1 players @a[distance=..10]
execute if score @s df_nb matches 2 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal2 players @a[distance=..10]
execute if score @s df_nb matches 3 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal3 players @a[distance=..10]
execute if score @s df_nb matches 4 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal4 players @a[distance=..10]
execute if score @s df_nb matches 5 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal5 players @a[distance=..10]
execute if score @s df_nb matches 6 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal6 players @a[distance=..10]
execute if score @s df_nb matches 7 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal7 players @a[distance=..10]
execute if score @s df_nb matches 8 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal8 players @a[distance=..10]
execute if score @s df_nb matches 9 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal9 players @a[distance=..10]
execute if score @s df_nb matches 10 if entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal10 players @a[distance=..10]

execute if score @s df_nb matches 1 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal1 players
execute if score @s df_nb matches 2 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal2 players
execute if score @s df_nb matches 3 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal3 players
execute if score @s df_nb matches 4 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal4 players
execute if score @s df_nb matches 5 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal5 players
execute if score @s df_nb matches 6 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal6 players
execute if score @s df_nb matches 7 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal7 players
execute if score @s df_nb matches 8 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal8 players
execute if score @s df_nb matches 9 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal9 players
execute if score @s df_nb matches 10 unless entity @e[type=minecraft:end_crystal,distance=..1] run bossbar set minecraft:df_crystal10 players
