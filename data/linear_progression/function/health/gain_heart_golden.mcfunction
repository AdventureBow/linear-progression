# Enchanted Golden Apple:
# - Below 10 hearts: jump to 11 hearts (22 HP)
# - At 10+ hearts: +1 heart, hard cap at 40 HP (20 hearts)

execute if score @s base_hp matches 40.. run return fail

# Already at/above 10 hearts → +1 heart
execute if score @s base_hp matches 20.. run scoreboard players add @s base_hp 2
execute if score @s base_hp matches 41.. run scoreboard players set @s base_hp 40

# Still below 10 hearts → restore up to 11
execute if score @s base_hp matches ..19 run scoreboard players set @s base_hp 22

function linear_progression:health/gain_heart
