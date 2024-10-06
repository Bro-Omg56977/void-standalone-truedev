#sound effects
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 3 .7
playsound minecraft:entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 3 2
playsound minecraft:entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 3 .5
playsound minecraft:entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 3 .5
playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 3 .5

#large amount of partocles
execute as @e[type=marker,tag=sat.building.placer] at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.building.placer] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.building.placer] at @s run particle flame ~ ~ ~ 0 0 0 .25 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.building.placer] at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.building.placer] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]

#randomizes which building is chose. should be a choice of 4 at most hopefully
scoreboard objectives add sat.otherbuilding.ranzomizer dummy
execute store result score @s sat.otherbuilding.ranzomizer run random value 1..4

execute if score @s sat.otherbuilding.ranzomizer matches 1 run place template bro:invasion/decor_other0 ~-4 ~ ~-4
execute if score @s sat.otherbuilding.ranzomizer matches 2 run place template bro:invasion/decor_other0 ~-4 ~ ~-4
execute if score @s sat.otherbuilding.ranzomizer matches 3 run place template bro:invasion/decor_other0 ~-4 ~ ~-4
execute if score @s sat.otherbuilding.ranzomizer matches 4 run place template bro:invasion/decor_other0 ~-4 ~ ~-4

#end
execute as @e[tag=sat.mini.rift] run schedule function bro:invasion_generic/enemies/mini_rift_particle_tick 2s replace
execute as @e[type=marker,tag=sat.building.placer] at @s run kill @s[type=marker,tag=sat.building.placer]