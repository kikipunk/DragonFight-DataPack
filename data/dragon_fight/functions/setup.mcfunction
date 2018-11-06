#Tellraw load#
tellraw @a ["",{"text":"Better Dragon Fight DataPack successfully loaded !! ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"By Daminator4113 and Kikipunk"}},{"text":"Version 1.0!!","color":"gold","hoverEvent":{"action":"show_text","value":"By Daminator4113 and Kikipunk"}}]

#boss bar
bossbar add df_crystal1 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal1 color red
bossbar set minecraft:df_crystal1 style notched_20
bossbar set minecraft:df_crystal1 max 50
bossbar set minecraft:df_crystal1 visible true

bossbar add df_crystal2 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal2 color red
bossbar set minecraft:df_crystal2 style notched_20
bossbar set minecraft:df_crystal2 max 50
bossbar set minecraft:df_crystal2 visible true

bossbar add df_crystal3 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal3 color red
bossbar set minecraft:df_crystal3 style notched_20
bossbar set minecraft:df_crystal3 max 50
bossbar set minecraft:df_crystal3 visible true

bossbar add df_crystal4 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal4 color red
bossbar set minecraft:df_crystal4 style notched_20
bossbar set minecraft:df_crystal4 max 50
bossbar set minecraft:df_crystal4 visible true

bossbar add df_crystal5 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal5 color red
bossbar set minecraft:df_crystal5 style notched_20
bossbar set minecraft:df_crystal5 max 50
bossbar set minecraft:df_crystal5 visible true

bossbar add df_crystal6 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal6 color red
bossbar set minecraft:df_crystal6 style notched_20
bossbar set minecraft:df_crystal6 max 50
bossbar set minecraft:df_crystal6 visible true

bossbar add df_crystal7 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal7 color red
bossbar set minecraft:df_crystal7 style notched_20
bossbar set minecraft:df_crystal7 max 50
bossbar set minecraft:df_crystal7 visible true

bossbar add df_crystal8 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal8 color red
bossbar set minecraft:df_crystal8 style notched_20
bossbar set minecraft:df_crystal8 max 50
bossbar set minecraft:df_crystal8 visible true

bossbar add df_crystal9 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal9 color red
bossbar set minecraft:df_crystal9 style notched_20
bossbar set minecraft:df_crystal9 max 50
bossbar set minecraft:df_crystal9 visible true

bossbar add df_crystal10 {"text":"Crystal","color":"blue"}
bossbar set minecraft:df_crystal10 color red
bossbar set minecraft:df_crystal10 style notched_20
bossbar set minecraft:df_crystal10 max 50
bossbar set minecraft:df_crystal10 visible true


#Scoreboard
scoreboard objectives add df_nb dummy
scoreboard objectives add df_size dummy
scoreboard objectives add df_size2 dummy
scoreboard objectives add df_time dummy
team add df_red
team modify df_red color dark_red

scoreboard players set new df_nb 0
scoreboard players set difb df_nb 1
scoreboard players set 2 df_size 2
scoreboard players set ia_mode df_nb -1
scoreboard players set aff df_nb 2
scoreboard players set endermite df_nb 0
scoreboard players set 3 df_time 3

#boss bar val a del
bossbar set minecraft:df_crystal1 value 0
bossbar set minecraft:df_crystal2 value 5
bossbar set minecraft:df_crystal3 value 10
bossbar set minecraft:df_crystal4 value 15
bossbar set minecraft:df_crystal5 value 20
bossbar set minecraft:df_crystal6 value 25
bossbar set minecraft:df_crystal7 value 30
bossbar set minecraft:df_crystal8 value 35
bossbar set minecraft:df_crystal9 value 40
bossbar set minecraft:df_crystal10 value 45
