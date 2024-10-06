#idek anymore. this file is incomplete, essentially it runs as the central rift to influence void-touched mobs around it. when the rift is destroyed, most random events should stop happening
#this one runs as the mobs, spreading a tag to a nearby undead. once the function repeats, those undead are turned into void-touched mobs, and then spread the tag to other nearby undead mobs. the cycle repeats




#randomizer
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run scoreboard objectives add sat.infectionsummon.chance dummy
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run execute store result score @s sat.infectionsummon.chance run random value 1..2

#summons zambie or skullegton
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run execute if score @s sat.infectionsummon.chance matches 1 run summon skeleton ~ ~ ~ {CustomName:'[{"text":"Void-touched Skeleton"}]',PersistenceRequired:1b,Tags:["satvoidtouched"],Team:satinvasion,HandItems:[{id:bow,count:1},{id:air,count:1}],ArmorItems:[{id:chainmail_boots,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:iron_chestplate,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_helmet,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run execute if score @s sat.infectionsummon.chance matches 2 run summon zombie ~ ~ ~ {CustomName:'[{"text":"Void-touched Zombie"}]',PersistenceRequired:1b,Tags:["satvoidtouched"],Team:satinvasion,HandItems:[{id:iron_sword,count:1},{id:air,count:1}],ArmorItems:[{id:chainmail_boots,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:iron_chestplate,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_helmet,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

#deletes origional mob + effects
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run particle squid_ink ~ ~1 ~ .2 .2 .2 0.02 25
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run playsound entity.husk.converted_to_zombie hostile @a[distance=..80] ~ ~ ~ 4 0.5
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run teleport @s ~ -1000 ~
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidinfected] at @s run damage @s 1000 generic_kill

#spreads infection tag
execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run execute as @e[tag=satvoidtouched] at @s run tag @e[tag=!satvoidtouched,tag=!satvoidinfected,type=#undead,type=!player,team=!satinvasion,distance=..20] add satvoidinfected

#repeats function a but later

execute as @e[tag=sat.portal.rift] run execute if score @s sat.portaleffecttick.0 matches 1 run schedule function bro:invasion_generic/enemies/spread_void 60s replace
