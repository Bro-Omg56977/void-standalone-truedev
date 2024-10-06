execute as @e[type=marker,tag=sat.portal.purerift] at @s if entity @a[distance=..2] run function bro:invasion_generic/portal/teleport0
execute as @e[type=marker,tag=sat.portal.purerift] at @s run execute if score @s sat.portalpurifiedeffecttick.0 matches 1 run particle end_rod ~ ~ ~ 0.2 6 0.2 0.025 30 force
execute as @e[type=marker,tag=sat.portal.purerift] at @s run execute if score @s sat.portalpurifiedeffecttick.0 matches 1 run particle falling_dust{block_state:{Name:white_concrete_powder}} ~ ~ ~ 0.2 6 0.2 0.2 15 force
execute as @e[type=marker,tag=sat.portal.purerift] at @s run execute if score @s sat.portalpurifiedeffecttick.0 matches 1 run particle dust{color:[1.0,1.0,1.0],scale:4} ~ ~ ~ 0.2 6 0.2 0.2 15 force

execute as @e[type=marker,tag=sat.portal.purerift] run execute if score @s sat.portalpurifiedeffecttick.0 matches 1 run schedule function bro:invasion_generic/portal/portal_purified_tick 5 replace