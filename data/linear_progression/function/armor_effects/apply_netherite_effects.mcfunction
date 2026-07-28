# netherite armor pieces + armor with netherite trim material.
# FR when netherite_total (pieces + trims) reaches 4.

scoreboard players set @s fire_resistance 0
execute if predicate linear_progression:armor/netherite_armor/netherite_head run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_chest run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_legs run scoreboard players add @s fire_resistance 1
execute if predicate linear_progression:armor/netherite_armor/netherite_feet run scoreboard players add @s fire_resistance 1

scoreboard players set @s netherite_trim 0
execute if items entity @s armor.head *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_trim 1
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_trim 1
execute if items entity @s armor.legs *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_trim 1
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_trim 1

scoreboard players set @s netherite_total 0
scoreboard players operation @s netherite_total += @s fire_resistance
scoreboard players operation @s netherite_total += @s netherite_trim
execute if score @s netherite_total matches 4.. run effect give @s minecraft:fire_resistance 1 0 true
