# Netherite fire resistance (turtle-helmet style):
# - Infinite FR while netherite armor pieces + netherite trims ≥ 4
# - Finite potion FR saved on equip, restored on unequip (hidden particles while armor-granted)
# - Mobs with a full netherite set get simple infinite FR (no potion care)

execute as @a run function linear_progression:armor_effects/netherite_fr_player

execute as @e[type=!player,predicate=linear_progression:armored_mobs] if predicate linear_progression:armor/netherite_armor/netherite_armor run effect give @s minecraft:fire_resistance infinite 0 true
