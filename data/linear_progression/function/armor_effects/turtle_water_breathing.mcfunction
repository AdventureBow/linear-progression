# Turtle helmet while worn:
# - Infinite water breathing (restore potion WB on unequip)
# - Item: water_movement_efficiency 0.3
# - In water: movement_speed +50% (add_multiplied_base 0.5), stacks with Depth Strider / efficiency

# --- Water breathing ---
execute as @a if items entity @s armor.head minecraft:turtle_helmet if entity @s[tag=!lp_turtle_wb] run function linear_progression:armor_effects/turtle_wb_equip
execute as @a[tag=lp_turtle_wb] if items entity @s armor.head minecraft:turtle_helmet run effect give @s minecraft:water_breathing infinite 0 true
execute as @a[tag=lp_turtle_wb] unless items entity @s armor.head minecraft:turtle_helmet run function linear_progression:armor_effects/turtle_wb_unequip

# --- Wet movement speed (helmet + water at feet or eyes) ---
execute as @a if items entity @s armor.head minecraft:turtle_helmet at @s if block ~ ~ ~ minecraft:water run function linear_progression:armor_effects/turtle_swim_apply
execute as @a if items entity @s armor.head minecraft:turtle_helmet at @s if block ~ ~ ~ minecraft:bubble_column run function linear_progression:armor_effects/turtle_swim_apply
execute as @a if items entity @s armor.head minecraft:turtle_helmet at @s if block ~ ~1 ~ minecraft:water run function linear_progression:armor_effects/turtle_swim_apply
execute as @a if items entity @s armor.head minecraft:turtle_helmet at @s if block ~ ~1 ~ minecraft:bubble_column run function linear_progression:armor_effects/turtle_swim_apply

execute as @a[tag=lp_turtle_swim] unless items entity @s armor.head minecraft:turtle_helmet run function linear_progression:armor_effects/turtle_swim_clear
execute as @a[tag=lp_turtle_swim] if items entity @s armor.head minecraft:turtle_helmet at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:bubble_column unless block ~ ~1 ~ minecraft:water unless block ~ ~1 ~ minecraft:bubble_column run function linear_progression:armor_effects/turtle_swim_clear
