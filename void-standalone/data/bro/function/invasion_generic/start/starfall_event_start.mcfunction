summon marker ~4 ~4 ~4 {Tags:["sat.descend.starfall"]}
data modify entity @e[sort=nearest,limit=1,type=marker] data.Owner set from entity @s UUID



playsound entity.blaze.shoot hostile @a[distance=..80] ~ ~ ~ 4 .8
playsound block.respawn_anchor.deplete hostile @a[distance=..80] ~ ~ ~ 4 1.5

#spread
spreadplayers ~ ~ 80 80 false @e[limit=1,sort=nearest,type=marker,tag=sat.descend.starfall]

data modify entity @e[sort=nearest,limit=1,type=marker] Pos[1] set from entity @s Pos[1]

execute as @e[type=marker,limit=1,sort=nearest] at @s run tp @s ~ ~80 ~

#initial particles
execute as @e[type=marker,limit=1,sort=nearest] at @s run particle large_smoke ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[type=marker,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[type=marker,limit=1,sort=nearest] at @s run particle campfire_signal_smoke ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[type=marker,limit=1,sort=nearest] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]

execute as @e[tag=sat.descend.starfall,limit=1,sort=nearest] at @s run scoreboard objectives add sat.starfalltick.0 dummy
execute as @e[tag=sat.descend.starfall,limit=1,sort=nearest] run scoreboard players set @s sat.starfalltick.0 1

execute as @e[tag=sat.descend.starfall,limit=1,sort=nearest] run function bro:invasion_generic/start/starfall_event_tick