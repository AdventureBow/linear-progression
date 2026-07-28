# Enchanted Golden Apple: below 10 hearts → 11; else +1 heart, cap 20 hearts (40 HP).

advancement revoke @s only linear_progression:health/eat_enchanted_golden_apple

execute if score @s base_hp matches 40.. run return fail

execute if score @s base_hp matches 20.. run scoreboard players add @s base_hp 2
execute if score @s base_hp matches 41.. run scoreboard players set @s base_hp 40
execute if score @s base_hp matches ..19 run scoreboard players set @s base_hp 22

function linear_progression:health/gain_heart
