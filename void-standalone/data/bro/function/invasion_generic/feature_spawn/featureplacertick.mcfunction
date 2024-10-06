#should be seperate from main portal. once run cannot be stopped normally

#particles
execute as @e[type=marker,tag= sat.feature.placer] at @s run particle end_rod ~ ~ ~ 0 0 0 0.022 5

#if successfully detects a block
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air as @e[distance=..3] run damage @s 10 magic by @e[sort=nearest,limit=1]
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run particle end_rod ~ ~ ~ .2 6 .2 .2 200 force @a[distance=..80]
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run particle flash ~ ~ ~ .2 6 .2 0 200 force @a[distance=..80]
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run particle campfire_cosy_smoke ~ ~ ~ .2 6 .2 .15 200 force @a[distance=..80]
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run function bro:invasion_generic/feature_spawn/featureplacerpart2
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s unless block ~ ~-.25 ~ air run kill @s


execute as @e[type=marker,tag= sat.feature.placer] run execute at @s run tp @s ~ ~-.5 ~
execute as @e[type=marker,tag= sat.feature.placer] run execute at @s run playsound entity.glow_squid.ambient hostile @a[distance=..80] ~ ~ ~ 8 0.5

execute as @e[type=marker,tag= sat.feature.placer] run schedule function bro:invasion_generic/feature_spawn/featureplacertick 1 replace


