# @s = arrow / spectral_arrow (unchecked). +0.5 damage per amethyst trim piece on shooter.
tag @s add lp_amethyst_arrow

# Count amethyst pieces on the entity that shot this projectile
scoreboard players set #am trim_mat 0
execute on origin if entity @s[tag=amethyst_head] run scoreboard players add #am trim_mat 1
execute on origin if entity @s[tag=amethyst_chest] run scoreboard players add #am trim_mat 1
execute on origin if entity @s[tag=amethyst_legs] run scoreboard players add #am trim_mat 1
execute on origin if entity @s[tag=amethyst_feet] run scoreboard players add #am trim_mat 1
execute if score #am trim_mat matches 0 run return fail

# damage NBT += 0.5 * piece count (matches melee)
execute store result score #dmg trim_mat run data get entity @s damage 10
scoreboard players set #bonus trim_mat 5
scoreboard players operation #bonus trim_mat *= #am trim_mat
scoreboard players operation #dmg trim_mat += #bonus trim_mat
execute store result entity @s damage double 0.1 run scoreboard players get #dmg trim_mat
