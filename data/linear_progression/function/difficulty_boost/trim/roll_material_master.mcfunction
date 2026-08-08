# Master = hard base weights +5 each, then scaled to exact 100% (roll 1..100).
# Raw: R25 C25 E21 A18 Q25 I10 G10 Res10 D25 L10 N10 (sum 189) →
# redstone 13, copper 13, diamond 13, quartz 13, emerald 11, amethyst 10,
# iron 6, gold 6, resin 5, lapis 5, netherite 5
execute store result score @s trim_mat run random value 1..100
execute if score @s trim_mat matches 1..13 run data modify storage linear_progression:trim material set value "minecraft:redstone"
execute if score @s trim_mat matches 14..26 run data modify storage linear_progression:trim material set value "minecraft:copper"
execute if score @s trim_mat matches 27..39 run data modify storage linear_progression:trim material set value "minecraft:diamond"
execute if score @s trim_mat matches 40..52 run data modify storage linear_progression:trim material set value "minecraft:quartz"
execute if score @s trim_mat matches 53..63 run data modify storage linear_progression:trim material set value "minecraft:emerald"
execute if score @s trim_mat matches 64..73 run data modify storage linear_progression:trim material set value "minecraft:amethyst"
execute if score @s trim_mat matches 74..79 run data modify storage linear_progression:trim material set value "minecraft:iron"
execute if score @s trim_mat matches 80..85 run data modify storage linear_progression:trim material set value "minecraft:gold"
execute if score @s trim_mat matches 86..90 run data modify storage linear_progression:trim material set value "minecraft:resin"
execute if score @s trim_mat matches 91..95 run data modify storage linear_progression:trim material set value "minecraft:lapis"
execute if score @s trim_mat matches 96..100 run data modify storage linear_progression:trim material set value "minecraft:netherite"
