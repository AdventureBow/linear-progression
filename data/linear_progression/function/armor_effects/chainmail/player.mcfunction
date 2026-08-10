# @s = player (survival/adventure)
# Sat drip only (saturation effect: 1 gametick amp 0 ≈ +2 sat, +1 food if not full)
# 1 piece: every 15s (300t)
# 2 pieces: every 10s (200t)
# 3 pieces: every 4.5s (90t)
# 4 pieces: every 1s (20t)

# Stamp worn pieces for +5% speed each (once via lp_chain_speed)
execute if items entity @s armor.head minecraft:chainmail_helmet unless items entity @s armor.head *[minecraft:custom_data~{lp_chain_speed:1b}] run item modify entity @s armor.head linear_progression:chainmail_speed_head
execute if items entity @s armor.chest minecraft:chainmail_chestplate unless items entity @s armor.chest *[minecraft:custom_data~{lp_chain_speed:1b}] run item modify entity @s armor.chest linear_progression:chainmail_speed_chest
execute if items entity @s armor.legs minecraft:chainmail_leggings unless items entity @s armor.legs *[minecraft:custom_data~{lp_chain_speed:1b}] run item modify entity @s armor.legs linear_progression:chainmail_speed_legs
execute if items entity @s armor.feet minecraft:chainmail_boots unless items entity @s armor.feet *[minecraft:custom_data~{lp_chain_speed:1b}] run item modify entity @s armor.feet linear_progression:chainmail_speed_feet

scoreboard players set @s chain_pcs 0
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s chain_pcs 1

execute if score @s chain_pcs matches 0 run scoreboard players set @s chain_timer 0
execute if score @s chain_pcs matches 0 run return fail

scoreboard players add @s chain_timer 1

# 1 piece: drip / 15s
execute if score @s chain_pcs matches 1 if score @s chain_timer matches 300.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 1 if score @s chain_timer matches 300.. run scoreboard players set @s chain_timer 0

# 2 pieces: drip / 10s
execute if score @s chain_pcs matches 2 if score @s chain_timer matches 200.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 2 if score @s chain_timer matches 200.. run scoreboard players set @s chain_timer 0

# 3 pieces: drip / 4.5s
execute if score @s chain_pcs matches 3 if score @s chain_timer matches 90.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 3 if score @s chain_timer matches 90.. run scoreboard players set @s chain_timer 0

# 4 pieces: drip / 1s
execute if score @s chain_pcs matches 4 if score @s chain_timer matches 20.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 4 if score @s chain_timer matches 20.. run scoreboard players set @s chain_timer 0

