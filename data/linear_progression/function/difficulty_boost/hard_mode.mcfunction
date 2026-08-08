# Reset rolls
scoreboard players set @s armor_chance 0
scoreboard players set @s trim_chance 0
# Hard trim material table (redstone/copper/emerald/amethyst boosted + iron/gold tiers)
scoreboard players set #trim_mode trim_mat 0

# Check if mob gets armor
execute if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 1

# Hard-only: gold & iron more common (easier upgrades up the ladder)
# T1 copper → T2 chain (half was rare) → T3 gold (common was half) → T4 iron (common)
execute if score @s armor_chance matches 1 if predicate linear_progression:rarity/half run scoreboard players set @s armor_chance 2
execute if score @s armor_chance matches 2 if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 3
execute if score @s armor_chance matches 3 if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 4

execute if score @s armor_chance matches 1 run function linear_progression:difficulty_boost/armor/equip_copper
execute if score @s armor_chance matches 2 run function linear_progression:difficulty_boost/armor/equip_chainmail
execute if score @s armor_chance matches 3 run function linear_progression:difficulty_boost/armor/equip_gold
execute if score @s armor_chance matches 4 run function linear_progression:difficulty_boost/armor/equip_iron

tag @s add boosted
