# @s = undead with empty armor. Only deep-boost at/below Y=0.
execute store result score @s y_pos run data get entity @s Pos[1]
execute unless score @s y_pos matches ..0 run return fail
function linear_progression:difficulty_boost/deep_mode
