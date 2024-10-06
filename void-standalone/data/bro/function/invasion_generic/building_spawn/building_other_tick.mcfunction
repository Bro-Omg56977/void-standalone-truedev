#particles
execute as @e[type=marker,tag=sat.building.placer] at @s run particle end_rod ~ ~ ~ .2 .2 .2 0.2 20

#if successfully detects a block
execute as @e[type=marker,tag=sat.building.placer] run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable as @e[distance=..3] run damage @s 10 magic by @e[sort=nearest,limit=1]
execute as @e[type=marker,tag=sat.building.placer] run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run particle end_rod ~ ~ ~ 0 0 0 .2 50 force @a[distance=..80]
execute as @e[type=marker,tag=sat.building.placer] run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .15 25 force @a[distance=..80]
execute as @e[type=marker,tag=sat.building.placer] run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[type=marker,tag=sat.building.placer] run execute at @s if block ~ ~-.25 ~ #minecraft:sculk_replaceable run function bro:invasion_generic/building_spawn/building_other


execute as @e[type=marker,tag=sat.building.placer] run execute at @s run tp @s ~ ~-.5 ~
execute as @e[type=marker,tag=sat.building.placer] run execute at @s run playsound entity.glow_squid.ambient hostile @a[distance=..80] ~ ~ ~ 8 0.5

execute as @e[type=marker,tag=sat.building.placer] run schedule function bro:invasion_generic/building_spawn/building_other_tick 1 replace


