# Hard (+ deep) trim materials — exact 100% (roll 1..100).
# Base weights: R20 C20 E16 A13 Q20 I5 G5 Res5, plus diamond=R, lapis=I, netherite=I
# → R20 C20 E16 A13 Q20 I5 G5 Res5 D20 L5 N5 (sum 134), scaled to 100%:
# redstone 15, copper 15, diamond 15, emerald 12, quartz 15,
# amethyst 9, iron 4, gold 4, resin 4, lapis 4, netherite 3
execute store result score @s trim_mat run random value 1..100
execute if score @s trim_mat matches 1..15 run data modify storage linear_progression:trim material set value "minecraft:redstone"
execute if score @s trim_mat matches 16..30 run data modify storage linear_progression:trim material set value "minecraft:copper"
execute if score @s trim_mat matches 31..45 run data modify storage linear_progression:trim material set value "minecraft:diamond"
execute if score @s trim_mat matches 46..57 run data modify storage linear_progression:trim material set value "minecraft:emerald"
execute if score @s trim_mat matches 58..72 run data modify storage linear_progression:trim material set value "minecraft:quartz"
execute if score @s trim_mat matches 73..81 run data modify storage linear_progression:trim material set value "minecraft:amethyst"
execute if score @s trim_mat matches 82..85 run data modify storage linear_progression:trim material set value "minecraft:iron"
execute if score @s trim_mat matches 86..89 run data modify storage linear_progression:trim material set value "minecraft:gold"
execute if score @s trim_mat matches 90..93 run data modify storage linear_progression:trim material set value "minecraft:resin"
execute if score @s trim_mat matches 94..97 run data modify storage linear_progression:trim material set value "minecraft:lapis"
execute if score @s trim_mat matches 98..100 run data modify storage linear_progression:trim material set value "minecraft:netherite"
