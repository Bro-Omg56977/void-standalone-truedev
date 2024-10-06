summon marker ~ ~ ~ {Tags:["sat.building.placer"]}
data modify entity @e[sort=nearest,limit=1,type=marker] data.Owner set from entity @s UUID



playsound ambient.soul_sand_valley.mood hostile @a[distance=..80] ~ ~ ~ 4 .5
playsound block.respawn_anchor.deplete hostile @a[distance=..80] ~ ~ ~ 4 1.5

#spread
spreadplayers ~ ~ 80 80 false @e[limit=1,sort=nearest,type=marker,tag=sat.building.placer]

data modify entity @e[tag=sat.building.placer,sort=nearest,limit=1,type=marker] Pos[1] set from entity @s Pos[1]

execute as @e[tag=sat.building.placer,type=marker,limit=1,sort=nearest] at @s unless entity @e[type=marker,tag=sat.feature,distance=..10] run tp @s ~ ~80 ~

#initial particles
execute as @e[tag=sat.building.placer,type=marker,limit=1,sort=nearest] at @s run particle large_smoke ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[tag=sat.building.placer,type=marker,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[tag=sat.building.placer,type=marker,limit=1,sort=nearest] at @s run particle campfire_signal_smoke ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[tag=sat.building.placer,type=marker,limit=1,sort=nearest] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]

execute as @e[tag=sat.building.placer,limit=1,sort=nearest] at @s unless entity @e[type=marker,tag=sat.feature,distance=..10] run function bro:invasion_generic/building_spawn/building_other_tick
execute as @e[tag=sat.building.placer,limit=1,sort=nearest] at @s if entity @e[type=marker,tag=sat.feature,distance=..10] run kill @s