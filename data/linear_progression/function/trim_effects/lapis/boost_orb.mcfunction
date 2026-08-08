# @s = experience_orb.
# Only the nearest player within 5 blocks can boost this orb (avoids other players' lapis).
# 5 is a good floor: orbs spawn near the kill and vanilla magnet is ~1–3; wider than 5
# starts stealing boosts across players fighting close together.

execute unless entity @p[distance=..5] run tag @s add lapis_xp_orb
execute unless entity @p[distance=..5] run return fail

# Count trims on that nearest player only (not "nearest player who has each piece")
scoreboard players set #lapis lapis_trim 0
execute as @p[distance=..5,sort=nearest,limit=1] run function linear_progression:trim_effects/lapis/count_player
scoreboard players operation @s lapis_trim = #lapis lapis_trim

execute if score @s lapis_trim matches 1 store result entity @s Value double 0.01 run data get entity @s Value 125
execute if score @s lapis_trim matches 2 store result entity @s Value double 0.01 run data get entity @s Value 150
execute if score @s lapis_trim matches 3 store result entity @s Value double 0.01 run data get entity @s Value 175
execute if score @s lapis_trim matches 4 store result entity @s Value double 0.01 run data get entity @s Value 200

tag @s add lapis_xp_orb
