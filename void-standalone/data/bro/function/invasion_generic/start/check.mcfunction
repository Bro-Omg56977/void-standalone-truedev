execute if entity @s[advancements={minecraft:story/enter_the_nether=true}] run tag @s add sat.check.pass
execute if entity @s[advancements={minecraft:story/enter_the_nether=true}] run schedule function bro:invasion_generic/start/check_pass 4s replace

execute unless entity @s[advancements={minecraft:story/enter_the_nether=true}] run tag @s add sat.check.fail
execute unless entity @s[advancements={minecraft:story/enter_the_nether=true}] run schedule function bro:invasion_generic/start/check_fail 30s replace