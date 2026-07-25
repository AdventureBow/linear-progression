# Find untagged thrown eyes, schedule their replacement.
execute as @e[type=eye_of_ender,tag=!unbreakable,limit=1] at @s run function linear_progression:unbreakable_eye/schedule_unbreakable_eye

# Check using predicates if a player is holding/wearing an item with durability, if so, run item modifier make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_mainhand unless predicate linear_progression:durability_check/retains_durability run item modify entity @s weapon.mainhand linear_progression:make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_offhand unless predicate linear_progression:durability_check/retains_durability run item modify entity @s weapon.offhand linear_progression:make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_head unless predicate linear_progression:durability_check/retains_durability run item modify entity @s armor.head linear_progression:make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_chest unless predicate linear_progression:durability_check/retains_durability run item modify entity @s armor.chest linear_progression:make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_legs unless predicate linear_progression:durability_check/retains_durability run item modify entity @s armor.legs linear_progression:make_unbreakable
execute as @a if predicate linear_progression:durability_check/durability_feet unless predicate linear_progression:durability_check/retains_durability run item modify entity @s armor.feet linear_progression:make_unbreakable

# Store each player's xp level and run health function if they have less than max health
execute as @a store result score @s Level run data get entity @s XpLevel
execute as @a[tag=!max_health] run function linear_progression:health_system/check_xp_health

# Run golden armor effects if predicate returns true
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_head] if predicate linear_progression:armor/golden_armor/golden_head run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_chest] if predicate linear_progression:armor/golden_armor/golden_chest run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_legs] if predicate linear_progression:armor/golden_armor/golden_legs run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_feet] if predicate linear_progression:armor/golden_armor/golden_feet run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_head] unless predicate linear_progression:armor/golden_armor/golden_head run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_chest] unless predicate linear_progression:armor/golden_armor/golden_chest run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_legs] unless predicate linear_progression:armor/golden_armor/golden_legs run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_feet] unless predicate linear_progression:armor/golden_armor/golden_feet run function linear_progression:armor_effects/remove_golden_effects

execute as @e[predicate=linear_progression:armored_mobs] at @s if predicate linear_progression:armor/netherite_armor/netherite_armor run function linear_progression:armor_effects/apply_netherite_effects

# Run tool effects if predicate returns true
execute as @a at @s if predicate linear_progression:tool/golden_axe run function linear_progression:tool_effects
execute as @a at @s if predicate linear_progression:tool/golden_hoe run function linear_progression:tool_effects
execute as @a at @s if predicate linear_progression:tool/golden_shovel run function linear_progression:tool_effects
execute as @a at @s if predicate linear_progression:tool/golden_pickaxe run function linear_progression:tool_effects
execute as @a at @s if predicate linear_progression:tool/golden_sword run function linear_progression:tool_effects

# Store the Y position of all non-player entities that don’t have the 'deep_boosted' tag
execute as @e[type=#undead,tag=!deep_boosted] store result score @s y_pos run data get entity @s Pos[1] 100

# Apply boosts to mobs at or below Y=0 that don’t have the boost yet
execute if score #global difficulty_level matches 0 as @e[type=#undead,tag=!deep_boosted,scores={y_pos=..0}] if predicate linear_progression:wear_armor if predicate linear_progression:armored_mobs run function linear_progression:difficulty_boost/deep_mode

# Update difficulty_level based on advancements
execute if entity @a[advancements={minecraft:story/enter_the_nether=true},tag=!hard] run scoreboard players set #global difficulty_level 1
execute as @a[advancements={minecraft:story/enter_the_nether=true},tag=!hard] if score #global difficulty_level matches 1 run tag @s add hard
execute if entity @a[advancements={minecraft:end/kill_dragon=true},tag=!master] run scoreboard players set #global difficulty_level 2
execute as @a[advancements={minecraft:end/kill_dragon=true},tag=!master] if score #global difficulty_level matches 1 run tag @s add master

# Apply boost function to mobs based on current difficulty_level
execute if score #global difficulty_level matches 1 as @e[type=!player,tag=!boosted] if predicate linear_progression:wear_armor if predicate linear_progression:armored_mobs run function linear_progression:difficulty_boost/hard_mode
execute if score #global difficulty_level matches 2 as @e[type=!player,tag=!boosted] if predicate linear_progression:wear_armor if predicate linear_progression:armored_mobs run function linear_progression:difficulty_boost/master_mode

# Every 10 ticks: low-frequency tasks (villager trade strip, shulker conversion)
scoreboard players add #global tick_mod 1
execute if score #global tick_mod matches 10.. run function linear_progression:slow_tick
execute if score #global tick_mod matches 10.. run scoreboard players set #global tick_mod 0
