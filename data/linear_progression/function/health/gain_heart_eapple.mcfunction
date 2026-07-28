# Enchanted Apple: +1 heart, cap 10 hearts (20 HP).

advancement revoke @s only linear_progression:health/eat_enchanted_apple

execute if score @s base_hp matches 20.. run return fail
scoreboard players add @s base_hp 2
execute if score @s base_hp matches 21.. run scoreboard players set @s base_hp 20
function linear_progression:health/gain_heart
