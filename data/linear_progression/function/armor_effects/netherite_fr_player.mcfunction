# @s = player
# FR when netherite armor pieces + netherite-trim pieces ≥ 4.
# Infinite while active; finite potion FR saved on equip and restored on unequip.

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

execute if score @s netherite_total matches 4.. if entity @s[tag=!lp_netherite_fr] run function linear_progression:armor_effects/netherite_fr_equip
execute if score @s netherite_total matches 4.. if entity @s[tag=lp_netherite_fr] run effect give @s minecraft:fire_resistance infinite 0 true
execute if score @s netherite_total matches ..3 if entity @s[tag=lp_netherite_fr] run function linear_progression:armor_effects/netherite_fr_unequip
