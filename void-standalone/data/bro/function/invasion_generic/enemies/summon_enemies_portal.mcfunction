#randomizer
execute as @e[tag=sat.willsummon.true] at @s run scoreboard objectives add sat.invasionsummon.chance dummy
execute as @e[tag=sat.willsummon.true] at @s run execute store result score @s sat.invasionsummon.chance run random value 1..2

#summons zambie or skullegton
execute as @e[tag=sat.willsummon.true] at @s run execute if score @s sat.invasionsummon.chance matches 1 run summon skeleton ~ ~ ~ {CustomName:'[{"text":"Void-touched Skeleton"}]',PersistenceRequired:1b,Tags:["satvoidtouched"],Team:satinvasion,HandItems:[{id:bow,count:1},{id:air,count:1}],ArmorItems:[{id:chainmail_boots,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:iron_chestplate,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_helmet,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[tag=sat.willsummon.true] at @s run execute if score @s sat.invasionsummon.chance matches 2 run execute as @e[tag=sat.willsummon.true] at @s run summon zombie ~ ~ ~ {CustomName:'[{"text":"Void-touched Zombie"}]',PersistenceRequired:1b,Tags:["satvoidtouched"],Team:satinvasion,HandItems:[{id:iron_sword,count:1},{id:air,count:1}],ArmorItems:[{id:chainmail_boots,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_leggings,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:iron_chestplate,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1},{id:chainmail_helmet,components:{trim:{pattern:silence,material:netherite},unbreakable:{}},count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

#particle i guess
execute as @e[tag=sat.willsummon.true] at @s run playsound block.respawn_anchor.charge hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[tag=sat.willsummon.true] at @s run playsound ambient.soul_sand_valley.mood hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[tag=sat.willsummon.true] at @s run particle flash ~ ~ ~ .2 .2 .2 .2 5
execute as @e[tag=sat.willsummon.true] at @s run particle end_rod ~ ~ ~ .2 .2 .2 .5 20

#repeats function a but later

execute as @e[tag=sat.portal.rift] at @s run schedule function bro:invasion_generic/enemies/summon_enemies_portal 120s replace



#note: need to add a stop o/ 
