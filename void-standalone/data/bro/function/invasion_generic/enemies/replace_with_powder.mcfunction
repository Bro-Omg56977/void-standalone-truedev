#placeholder. make it literally just replaceblock nearby lol

#make sure to have a stop ready or somethin


#replaces some nearby natural blocks with concrete powder
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidtouched] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 black_concrete_powder replace #sculk_replaceable

#repeats function a but later

execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/enemies/replace_with_powder 60s replace
