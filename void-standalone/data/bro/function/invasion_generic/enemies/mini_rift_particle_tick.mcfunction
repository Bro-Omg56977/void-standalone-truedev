execute as @e[tag=sat.mini.rift] at @s run particle squid_ink ~ ~ ~ 0.2 2.5 0.2 0.025 30 force
execute as @e[tag=sat.mini.rift] at @s run particle falling_dust{block_state:{Name:black_concrete_powder}} ~ ~ ~ 0.2 2.5 0.2 0.2 15 force
execute as @e[tag=sat.mini.rift] at @s run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0.2 2.5 0.2 0.2 15 force

execute as @e[tag=sat.mini.rift] run schedule function bro:invasion_generic/enemies/mini_rift_particle_tick 5 replace