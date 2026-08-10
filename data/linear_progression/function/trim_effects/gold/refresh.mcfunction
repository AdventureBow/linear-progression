# @s = entity with at least one gold-trim piece.
# Gold-trim mining boost scales with piece count:
#   gold tools  → +0.5 block_break_speed per piece (full set 3.0× with base 1)
#   other tools → +0.35 per piece (full set 2.4×) — keeps Eff V deepslate under instamine
# Gold pick deepslate tool speed stays 9 (stamped via GS).

scoreboard players set #gold_pc trim_mat 0
execute if predicate linear_progression:trim_effects/gold/head run scoreboard players add #gold_pc trim_mat 1
execute if predicate linear_progression:trim_effects/gold/chest run scoreboard players add #gold_pc trim_mat 1
execute if predicate linear_progression:trim_effects/gold/legs run scoreboard players add #gold_pc trim_mat 1
execute if predicate linear_progression:trim_effects/gold/feet run scoreboard players add #gold_pc trim_mat 1

attribute @s minecraft:block_break_speed modifier remove gold_head
attribute @s minecraft:block_break_speed modifier remove gold_chest
attribute @s minecraft:block_break_speed modifier remove gold_legs
attribute @s minecraft:block_break_speed modifier remove gold_feet
attribute @s minecraft:block_break_speed modifier remove gold_trim_bbs

# Holding a gold tool → stronger per-piece boost
execute if items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 1 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 0.5 add_value
execute if items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 2 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.0 add_value
execute if items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 3 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.5 add_value
execute if items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 4 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 2.0 add_value

# Anything else (or empty hand) → weaker per-piece boost
execute unless items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 1 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 0.35 add_value
execute unless items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 2 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 0.7 add_value
execute unless items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 3 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.05 add_value
execute unless items entity @s weapon.mainhand #linear_progression:golden_tools if score #gold_pc trim_mat matches 4 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.4 add_value

tag @s add gold_trim_active
