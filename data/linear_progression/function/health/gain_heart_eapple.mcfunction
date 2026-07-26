# Enchanted Apple: +1 heart, hard cap at 20 HP (10 hearts).

execute if score @s base_hp matches 20.. run return fail
scoreboard players add @s base_hp 2
execute if score @s base_hp matches 21.. run scoreboard players set @s base_hp 20
function linear_progression:health/gain_heart
