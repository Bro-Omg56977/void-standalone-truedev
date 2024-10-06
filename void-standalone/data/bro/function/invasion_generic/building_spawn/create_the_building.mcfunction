#places decor building if central building is made
execute as @e[tag=sat.portal.rift,tag=sat.centralbuilding.placed] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run function bro:invasion_generic/building_spawn/building_other_start

#should place the centreal building if not done so already, then tag self 
execute as @e[tag=sat.portal.rift,tag=!sat.centralbuilding.placed] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run function bro:invasion_generic/building_spawn/central_building_start
execute as @e[tag=sat.portal.rift,tag=!sat.centralbuilding.placed] at @s run execute if score @s sat.portaleffecttick.0 matches 1 run tag @s add sat.centralbuilding.placed

#repeats function

execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/building_spawn/create_the_building 60s replace

#execute as @e[tag=sat.portal.rift] run function bro:invasion_generic/building_spawn/central_building_start