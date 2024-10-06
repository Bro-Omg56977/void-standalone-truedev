#bruhhhhhskthjsfd[gh[jofdsghp
#executes as the central rift and then checks of the checker score is still 1. if true, will randomly spread a marker nearby
#if the marker is near a another feature or building then it fails and restarts


execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run summon marker ~ ~ ~ {Tags:["sat.feature.placer"]}
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run data modify entity @e[tag=sat.feature.placer,sort=nearest,limit=1,type=marker] data.Owner set from entity @s UUID



execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run playsound ambient.soul_sand_valley.mood hostile @a[distance=..80] ~ ~ ~ 4 .5
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run playsound block.respawn_anchor.deplete hostile @a[distance=..80] ~ ~ ~ 4 1.5

#spread
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,sort=nearest,limit=1,type=marker] run spreadplayers ~ ~ 80 80 false @e[limit=1,sort=nearest,type=marker,tag=sat.feature.placer]

execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run data modify entity @e[tag=sat.feature.placer,sort=nearest,limit=1,type=marker] Pos[1] set from entity @s Pos[1]

execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,sort=nearest,limit=1,type=marker] at @s unless entity @e[type=marker,tag=sat.feature,distance=..10] run tp @s ~ ~80 ~

#initial particles
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,type=marker,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ .2 .2 .2 1 50 force @a[distance=..80]
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,type=marker,limit=1,sort=nearest] at @s run particle flash ~ ~ ~ 0 0 0 .1 200 force @a[distance=..128]


execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,limit=1,sort=nearest] unless entity @e[type=marker,tag=sat.feature,distance=..10] run schedule function bro:invasion_generic/feature_spawn/featureplacertick 10 replace


#idek this organization is trash
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=sat.feature.placer,type=marker,limit=1,sort=nearest] at @s if entity @e[type=marker,tag=sat.feature,distance=..10] run kill @e[type=marker,tag=sat.feature.placer]
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute if entity @e[type=marker,tag=sat.feature,distance=..10] run schedule function bro:invasion_generic/feature_spawn/featurepart1 4s replace
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute unless entity @e[type=marker,tag=sat.feature,distance=..10] run schedule function bro:invasion_generic/feature_spawn/featurepart1 300s replace