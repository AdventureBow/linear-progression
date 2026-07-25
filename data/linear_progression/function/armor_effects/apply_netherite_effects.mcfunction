# Netherite fire resistance
scoreboard players set @s fire_resistance 0
execute if predicate linear_progression:armor/netherite_armor/netherite_head run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_chest run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_legs run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_feet run scoreboard players add @s fire_resistance 1

# Give netherite fire resistance
scoreboard players set @s netherite_total 0
scoreboard players operation @s netherite_total += @s fire_resistance
scoreboard players operation @s netherite_total += @s netherite_trim
execute if score @s netherite_total matches 4 run effect give @s minecraft:fire_resistance 1 0 true

# tellraw @s "Netherite Armor Applied"
