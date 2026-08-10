# Unbreakable ender eyes — per-entity timers (multiplayer-safe)
function linear_progression:unbreakable_eye/tick

# After death: re-apply curse cleanup once the player is alive again (keepInventory)
execute as @a[tag=lp_strip_binding] store result score @s respawn_calc run data get entity @s Health
execute as @a[tag=lp_strip_binding,scores={respawn_calc=1..}] run function linear_progression:curses/strip_binding
execute as @a[tag=lp_strip_binding,scores={respawn_calc=1..}] run function linear_progression:curses/clear_vanishing
execute as @a[tag=lp_strip_binding,scores={respawn_calc=1..}] run tag @s remove lp_strip_binding

# Inventory systems (durability, etc.) run via detect/inventory_changed → global_systems.
# Per-player rearm countdown (replaces global schedule)
function linear_progression:global_systems/retrigger


# Overworld better-respawn:
# 1) await dead → alive: arm respawn_delay
# 2) try_place: if >300 from bed, pick spot + forceload
# 3) respawn/tick FIRST so wait=1 is one full tick, then place once
# 4) verify real move away from bed; delayed forceload remove (no stuck Loading terrain)
function linear_progression:respawn/tick
execute as @a[tag=respawn_delay] run function linear_progression:respawn/try_place
execute as @a[tag=await_respawn_place] store result score @s respawn_calc run data get entity @s Health
execute as @a[tag=await_respawn_place,scores={respawn_calc=1..}] run tag @s add respawn_delay
execute as @a[tag=await_respawn_place,scores={respawn_calc=1..}] run tag @s remove await_respawn_place

# Run golden armor effects if predicate returns true
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_head] if predicate linear_progression:armor/golden_armor/golden_head run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_chest] if predicate linear_progression:armor/golden_armor/golden_chest run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_legs] if predicate linear_progression:armor/golden_armor/golden_legs run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=!gold_armor_feet] if predicate linear_progression:armor/golden_armor/golden_feet run function linear_progression:armor_effects/apply_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_head] unless predicate linear_progression:armor/golden_armor/golden_head run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_chest] unless predicate linear_progression:armor/golden_armor/golden_chest run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_legs] unless predicate linear_progression:armor/golden_armor/golden_legs run function linear_progression:armor_effects/remove_golden_effects
execute as @e[predicate=linear_progression:armored_mobs] at @s[tag=gold_armor_feet] unless predicate linear_progression:armor/golden_armor/golden_feet run function linear_progression:armor_effects/remove_golden_effects

# Gold tool speed: applied via global_systems on inventory change (not every tick).

# Powerful Trims (armor trim material effects) — modular per-material ticks
function linear_progression:trim_effects/tick

# Arrow boosts: skeleton/stray/bogged +2 dmg, amethyst +0.5/piece, dispenser ×8 straight + 0.6 dmg + sound
function linear_progression:arrow_boost/tick

# Master: no common hostiles in open sky or at/above sea level (overworld)
function linear_progression:surface_cull/tick

# Netherite: infinite fire resistance (potion FR preserved like turtle WB)
function linear_progression:armor_effects/netherite_fire_resistance

# Turtle helmet: infinite water breathing while worn
function linear_progression:armor_effects/turtle_water_breathing

# Chainmail: slow passive nutrition / saturation
function linear_progression:armor_effects/chainmail/tick

# Every 10 ticks: low-frequency GS (villagers, shulkers, difficulty armor equip)
scoreboard players add #global tick_mod 1
execute if score #global tick_mod matches 10.. run function linear_progression:slow_tick
execute if score #global tick_mod matches 10.. run scoreboard players set #global tick_mod 0
