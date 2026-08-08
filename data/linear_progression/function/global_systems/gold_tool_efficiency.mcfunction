# Gold tool speed on mainhand only. Apply once (custom_data marker) so item modify
# does not re-dirty inventory on every inventory_changed.

# Already stamped → no work (avoids GS modify loop / log spam)
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{lp_gold_speed:2b}] run return fail

execute if items entity @s weapon.mainhand minecraft:golden_axe run item modify entity @s weapon.mainhand linear_progression:golden_axe_speed
execute if items entity @s weapon.mainhand minecraft:golden_hoe run item modify entity @s weapon.mainhand linear_progression:golden_hoe_speed
execute if items entity @s weapon.mainhand minecraft:golden_shovel run item modify entity @s weapon.mainhand linear_progression:golden_shovel_speed
execute if items entity @s weapon.mainhand minecraft:golden_pickaxe run item modify entity @s weapon.mainhand linear_progression:golden_pickaxe_speed
execute if items entity @s weapon.mainhand minecraft:golden_sword run item modify entity @s weapon.mainhand linear_progression:golden_weapon_speed
