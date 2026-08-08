# Reset rolls
scoreboard players set @s armor_chance 0
scoreboard players set @s trim_chance 0
# Master material table (redstone/copper/amethyst boosted)
scoreboard players set #trim_mode trim_mat 1

# Check if mob gets armor
execute if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 1

# Master tier ladder unchanged (chain → gold → iron → diamond)
execute if score @s armor_chance matches 1 if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 2
execute if score @s armor_chance matches 2 if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 3
execute if score @s armor_chance matches 3 if predicate linear_progression:rarity/half run scoreboard players set @s armor_chance 4

execute if score @s armor_chance matches 1 run function linear_progression:difficulty_boost/armor/equip_chainmail
execute if score @s armor_chance matches 2 run function linear_progression:difficulty_boost/armor/equip_gold
execute if score @s armor_chance matches 3 run function linear_progression:difficulty_boost/armor/equip_iron
execute if score @s armor_chance matches 4 run function linear_progression:difficulty_boost/armor/equip_diamond

tag @s add boosted
