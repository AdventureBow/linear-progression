# @s = arrow / spectral_arrow not fully processed yet.
# Tick 1: wait (spawn tick Motion/Owner often invalid).
# Tick 2+: apply once, tag lp_amethyst_arrow.

execute if entity @s[tag=!lp_arrow_wait] run return run tag @s add lp_arrow_wait

tag @s add lp_amethyst_arrow

# --- Dispenser / ownerless (next to skeleton path below) ---
scoreboard players set #disp arrow_dmg 0
execute store success score #liv arrow_dmg on origin if entity @s
execute unless score #liv arrow_dmg matches 1 run scoreboard players set #disp arrow_dmg 1
execute unless data entity @s Owner run scoreboard players set #disp arrow_dmg 1
execute if score #disp arrow_dmg matches 1 run function linear_progression:arrow_boost/dispenser
execute if score #disp arrow_dmg matches 1 run return fail

# --- Owned arrows: skeleton archers + amethyst ---
function linear_progression:arrow_boost/owned
