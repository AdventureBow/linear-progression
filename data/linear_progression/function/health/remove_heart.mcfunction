# Called on death. Remove 1 heart from base_hp if above the floor (6 hearts = 12 HP).

execute unless score @s base_hp matches 6..40 run scoreboard players set @s base_hp 20

# Floor of 6 hearts (12 HP): only remove when base_hp is 14+
execute if score @s base_hp matches 14.. run scoreboard players remove @s base_hp 2

function linear_progression:health/set_max_hp

# Allow the death advancement to fire again next death
advancement revoke @s only linear_progression:health/player_died
