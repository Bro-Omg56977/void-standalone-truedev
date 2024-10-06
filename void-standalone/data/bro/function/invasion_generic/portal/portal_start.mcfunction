#should correctly start the stuffs i guess

#summons a golen. this shold effectivly act as the "health" of the rift. will add the defeat of the rift later

#makes tickfunction depend of a scoreboard
execute as @e[tag=sat.portal.rift] at @s run scoreboard objectives add sat.portaleffecttick.0 dummy
execute as @e[tag=sat.portal.rift] run scoreboard players set @s sat.portaleffecttick.0 1



#runs tick function
execute as @e[tag=sat.portal.rift] run function bro:invasion_generic/portal/portal_particle_tick
execute as @e[tag=sat.portal.rift] run schedule function bro:invasion_generic/portal/portal_start0 5 replace