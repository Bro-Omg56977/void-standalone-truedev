#this file would potentially be run in order to start everything after giving itself some scoreboards to ensure that 

#test for loadfunction ig
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run function bro:invasion_generic/portal/portal_particle_tick
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run function bro:invasion_generic/portal/portal_purified_tick

#summon enemies
execute as @e[tag=sat.willsummon.true] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/enemies/summon_enemies_portal 1s replace

#here would be part 1 of mob effects. ex: simply stacking on eachother

#here would be part 2 of mob effects. ex: infection
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/enemies/spread_void 2s replace
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/enemies/replace_with_powder 2s replace

#here would be the feature starter thing i guess
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/feature_spawn/featurepart1 150s replace

#here would be the building starter
execute as @e[tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/building_spawn/create_the_building 300s replace