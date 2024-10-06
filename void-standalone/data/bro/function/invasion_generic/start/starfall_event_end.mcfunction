#damage if ur too close
execute as @e[type=marker,tag=sat.descend.starfall] at @s run execute as @e[distance=2.5..5] run damage @s 50 indirect_magic by @e[sort=nearest,limit=1]
execute as @e[type=marker,tag=sat.descend.starfall] at @s run execute as @e[distance=..2.5] run damage @s 100 magic by @e[sort=nearest,limit=1]

#sound effects
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 3 .7
playsound minecraft:entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 3 2
playsound minecraft:entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 3 .5
playsound minecraft:entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 3 .5
playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 8 .5

#large amount of partocles
execute as @e[type=marker,tag=sat.descend.starfall] at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.descend.starfall] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.descend.starfall] at @s run particle flame ~ ~ ~ 0 0 0 .25 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.descend.starfall] at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.descend.starfall] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]
scoreboard players set @s sat.starfalltick.0 0

#summons the rift marker
summon marker ~ ~.5 ~ {Tags:["sat.portal.rift","sat.willsummon.true","sat.feature"]}
data modify entity @e[sort=nearest,limit=1,type=marker,tag=sat.portal.rift] data.Owner set from entity @s UUID

execute as @e[tag=sat.portal.rift] run schedule function bro:invasion_generic/portal/portal_start 2s replace

execute as @e[tag=sat.portal.rift] run schedule function bro:invasion_generic/root/start_i_guess 8s replace

#end
kill @s[type=marker,tag=sat.descend.starfall]