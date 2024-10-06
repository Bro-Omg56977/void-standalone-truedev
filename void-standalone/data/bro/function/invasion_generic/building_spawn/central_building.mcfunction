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

#summons the rift marker
execute as @e[tag=sat.building.placer] run place template bro:invasion/decor_center ~-8 ~-1 ~-8

#end
execute as @e[type=marker,tag= sat.building.placer] at @s run kill @s[type=marker,tag= sat.building.placer]