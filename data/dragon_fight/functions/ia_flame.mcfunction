# Setup
scoreboard objectives add ia_timer dummy

# Align
tp @s ~ ~ ~ ~5 0
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Small:1,NoGravity:1,Invulnerable:1,Tags:["flame","flame_top"],ArmorItems:[{},{},{},{id:"air",Count:1}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Small:1,NoGravity:1,Invulnerable:1,Tags:["flame","flame_back"],ArmorItems:[{},{},{},{id:"air",Count:1}]}
scoreboard players add @e[tag=flame] ia_timer 1
execute anchored eyes run tp @e[scores={ia_timer=1},distance=..10] @s
execute as @e[scores={ia_timer=1}] at @s run tp @s ~ ~-0.5 ~

# detect
execute as @e[tag=flame_top,scores={ia_timer=1..10}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=flame_back,scores={ia_timer=1..10}] at @s run tp @s ^ ^ ^-0.5



execute if score aff df_nb matches 1 as @e[tag=flame] at @s anchored eyes run particle enchanted_hit ~ ~1 ~ 0 0 0 0.05 1 normal
execute if score aff df_nb matches 2 as @e[tag=flame] at @s unless entity @e[type=falling_block,distance=..0.5] run summon falling_block ~ ~ ~ {BlockState:{Name:"fire"},Time:0}

execute as @e[tag=flame] at @s positioned ~ ~ ~ run effect give @a[distance=..1] minecraft:wither 3 3 true

# End
kill @e[scores={ia_timer=11..}]
