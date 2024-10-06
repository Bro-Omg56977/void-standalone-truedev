
#particles for effects or something
execute as @e[type=marker,tag=sat.portal.purerift] at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.purerift] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.purerift] at @s run particle end_rod ~ ~ ~ 0 0 0 .25 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.purerift] at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.purerift] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.purerift] at @s run playsound entity.wither.death hostile @a[distance=..80] ~ ~ ~ 4 0.5
#stops partocles for it ig
execute as @e[type=marker,tag=sat.portal.purerift] at @s run scoreboard players set @s sat.portalpurifiedeffecttick.0 0

#end
execute as @e[type=marker,tag=sat.portal.purerift] at @s run kill @s[type=marker,tag=sat.portal.purerift]

execute as @e[tag=sat.portal.purerift] at @s run forceload remove ~-5 ~-5 ~5 ~5

execute as @s run advancement revoke @s only bro:invasion/detectpurifiedriftdeath