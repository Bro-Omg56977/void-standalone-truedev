#should correctly start the stuffs i guess

#summons a golen. this shold effectivly act as the "health" of the rift. will add the defeat of the rift later

#makes tickfunction depend of a scoreboard
execute as @e[tag=sat.portal.purerift] at @s run scoreboard objectives add sat.portalpurifiedeffecttick.0 dummy
execute as @e[tag=sat.portal.purerift] run scoreboard players set @s sat.portalpurifiedeffecttick.0 1



#runs tick function
execute as @e[tag=sat.portal.purerift] run function bro:invasion_generic/portal/portal_purified_tick
execute as @e[tag=sat.portal.purerift] run schedule function bro:invasion_generic/portal/portal_purified_start0 5 replace