#particles
execute as @e[type=marker,tag=sat.descend.starfall] at @s run execute if score @s sat.starfalltick.0 matches 1 run particle campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.2 5
execute as @e[type=marker,tag=sat.descend.starfall] at @s run execute if score @s sat.starfalltick.0 matches 1 run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.2 5
execute as @e[type=marker,tag=sat.descend.starfall] at @s run execute if score @s sat.starfalltick.0 matches 1 run particle falling_dust{block_state:{Name:white_concrete_powder}} ~ ~ ~ 0.2 0.2 0.2 0.2 10

#if successfully detects a block
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable as @e[distance=..3] run damage @s 10 magic by @e[sort=nearest,limit=1]
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run particle end_rod ~ ~ ~ 0 0 0 .2 50 force @a[distance=..80]
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .15 25 force @a[distance=..80]
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run function bro:invasion_generic/start/starfall_event_end
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run kill @s


execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s run tp @s ~ ~-.5 ~
execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run execute at @s run playsound block.end_portal_frame.fill hostile @a[distance=..80] ~ ~ ~ 8 0.5

execute as @e[type=marker,tag=sat.descend.starfall] run execute if score @s sat.starfalltick.0 matches 1 run schedule function bro:invasion_generic/start/starfall_event_tick 1 replace


