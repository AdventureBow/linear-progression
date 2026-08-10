# @s = player who just put on a turtle helmet (not yet tagged).
# Save any existing finite water_breathing (potion), then apply infinite.

scoreboard players set @s turtle_wb_dur 0
execute store result score @s turtle_wb_dur run data get entity @s active_effects[{id:"minecraft:water_breathing"}].duration
# Infinite is -1 (or other non-positive); only preserve real potion timers
execute unless score @s turtle_wb_dur matches 1.. run scoreboard players set @s turtle_wb_dur 0

effect give @s minecraft:water_breathing infinite 0 true
tag @s add lp_turtle_wb
