# Stamp gold armor item components: KB 0.1 + speed 10% per piece (once). Tooltip like netherite.
execute if items entity @s armor.head minecraft:golden_helmet unless items entity @s armor.head *[minecraft:custom_data~{lp_gold_armor:1b}] run item modify entity @s armor.head linear_progression:gold_armor_kb_head
execute if items entity @s armor.chest minecraft:golden_chestplate unless items entity @s armor.chest *[minecraft:custom_data~{lp_gold_armor:1b}] run item modify entity @s armor.chest linear_progression:gold_armor_kb_chest
execute if items entity @s armor.legs minecraft:golden_leggings unless items entity @s armor.legs *[minecraft:custom_data~{lp_gold_armor:1b}] run item modify entity @s armor.legs linear_progression:gold_armor_kb_legs
execute if items entity @s armor.feet minecraft:golden_boots unless items entity @s armor.feet *[minecraft:custom_data~{lp_gold_armor:1b}] run item modify entity @s armor.feet linear_progression:gold_armor_kb_feet
