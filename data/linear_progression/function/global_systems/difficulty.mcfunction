# Global system: world difficulty + equip trimmed armor on eligible mobs.
# slow_tick (10t). limit=30 candidates per pass. Narrow type tags (A/E).

# F: if already master, skip advancement re-scan for level; still equip
execute if score #global difficulty_level matches 2 run return run function linear_progression:global_systems/difficulty_equip_master

# Sync world difficulty (only while not yet at max)
execute if entity @a[advancements={minecraft:story/enter_the_nether=true}] run scoreboard players set #global difficulty_level 1
execute if entity @a[advancements={minecraft:end/kill_dragon=true}] run scoreboard players set #global difficulty_level 2
execute as @a[advancements={minecraft:story/enter_the_nether=true},tag=!hard] run tag @s add hard
execute as @a[advancements={minecraft:end/kill_dragon=true},tag=!master] run tag @s add master

# Deep (pre-nether): undead at/below Y=0, empty armor — single pass (B), batch 30 (E)
execute if score #global difficulty_level matches 0 as @e[type=#minecraft:undead,tag=!deep_boosted,limit=30] if predicate linear_progression:empty_armor run function linear_progression:difficulty_boost/deep_try

# Hard: armorable mobs only (A), empty armor (G), batch 30 (E)
execute if score #global difficulty_level matches 1 as @e[type=#linear_progression:armorable_mobs,tag=!boosted,limit=30] if predicate linear_progression:empty_armor run function linear_progression:difficulty_boost/hard_mode

# Master (just unlocked this pass)
execute if score #global difficulty_level matches 2 as @e[type=#linear_progression:armorable_mobs,tag=!boosted,limit=30] if predicate linear_progression:empty_armor run function linear_progression:difficulty_boost/master_mode
