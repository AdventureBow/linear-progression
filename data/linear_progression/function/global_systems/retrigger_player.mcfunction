# @s = player whose gs_rearm just hit 0
advancement revoke @s only linear_progression:detect/inventory_changed
scoreboard players reset @s gs_rearm
