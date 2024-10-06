execute as @e[type=marker,tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run particle squid_ink ~ ~ ~ 0.2 6 0.2 0.025 30 force
execute as @e[type=marker,tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run particle falling_dust{block_state:{Name:black_concrete_powder}} ~ ~ ~ 0.2 6 0.2 0.2 15 force
execute as @e[type=marker,tag=sat.portal.rift] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0.2 6 0.2 0.2 15 force

execute as @e[type=marker,tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/portal/portal_particle_tick 5 replace