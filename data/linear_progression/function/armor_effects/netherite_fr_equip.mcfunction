# @s = entity just reached netherite FR threshold (total ≥ 4).
# Save any existing finite fire_resistance (potion), then apply infinite.

scoreboard players set @s netherite_fr_dur 0
execute store result score @s netherite_fr_dur run data get entity @s active_effects[{id:"minecraft:fire_resistance"}].duration
# Infinite is -1 (or other non-positive); only preserve real potion timers
execute unless score @s netherite_fr_dur matches 1.. run scoreboard players set @s netherite_fr_dur 0

effect give @s minecraft:fire_resistance infinite 0 true
tag @s add lp_netherite_fr
