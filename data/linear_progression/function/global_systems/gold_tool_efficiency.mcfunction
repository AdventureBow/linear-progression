# Stamp gold tool mining components once (custom_data marker).

execute if items entity @s weapon.mainhand minecraft:golden_pickaxe unless items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:4b}] run item modify entity @s weapon.mainhand linear_progression:golden_pickaxe_speed
execute if items entity @s weapon.mainhand minecraft:golden_axe unless items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:4b}] run item modify entity @s weapon.mainhand linear_progression:golden_axe_speed
execute if items entity @s weapon.mainhand minecraft:golden_hoe unless items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:4b}] run item modify entity @s weapon.mainhand linear_progression:golden_hoe_speed
execute if items entity @s weapon.mainhand minecraft:golden_shovel unless items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:4b}] run item modify entity @s weapon.mainhand linear_progression:golden_shovel_speed
execute if items entity @s weapon.mainhand minecraft:golden_sword unless items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:4b}] run item modify entity @s weapon.mainhand linear_progression:golden_weapon_speed
