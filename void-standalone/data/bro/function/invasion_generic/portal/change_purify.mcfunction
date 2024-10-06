
#particles for effects or something
execute as @e[type=marker,tag=sat.portal.rift] at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.rift] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.rift] at @s run particle end_rod ~ ~ ~ 0 0 0 .25 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.rift] at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.rift] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]
execute as @e[type=marker,tag=sat.portal.rift] at @s run playsound entity.wither.death hostile @a[distance=..80] ~ ~ ~ 4 0.5
#stops partocles for it ig
execute as @e[type=marker,tag=sat.portal.rift] at @s run scoreboard players set @s sat.portaleffecttick.0 0

#summons the pure rift marker
execute as @e[type=marker,tag=sat.portal.rift] at @s run summon marker ~ ~ ~ {Tags:["sat.portal.purerift"]}
execute as @e[type=marker,tag=sat.portal.purerift] at @s run data modify entity @e[sort=nearest,limit=1,type=marker,tag=sat.portal.purerift] data.Owner set from entity @s UUID

execute as @e[tag=sat.portal.purerift] run schedule function bro:invasion_generic/portal/portal_purified_start 2s replace

#end
execute as @e[type=marker,tag=sat.portal.rift] at @s run kill @s[tag=sat.portal.rift]
execute as @e[tag=sat.feature] at @s run kill @s[tag=sat.feature]
execute as @e[tag=sat.mini.rift] at @s run kill @s[tag=sat.mini.rift]

execute as @s run advancement revoke @s only bro:invasion/detectcorruptriftdeath