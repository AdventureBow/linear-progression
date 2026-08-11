# @s = player (survival/adventure)
# Sat drip: 1pc/15s, 2pc/10s, 3pc/4.5s, 4pc/1s
# Speed stamp: worn pieces only (carry stamped via GS)

scoreboard players set @s chain_pcs 0
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s chain_pcs 1
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s chain_pcs 1

execute if score @s chain_pcs matches 0 run scoreboard players set @s chain_timer 0
execute if score @s chain_pcs matches 0 run return fail

# Only stamp worn when actually wearing chainmail
function linear_progression:global_systems/stamp/chainmail_worn

scoreboard players add @s chain_timer 1

execute if score @s chain_pcs matches 1 if score @s chain_timer matches 300.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 1 if score @s chain_timer matches 300.. run scoreboard players set @s chain_timer 0

execute if score @s chain_pcs matches 2 if score @s chain_timer matches 200.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 2 if score @s chain_timer matches 200.. run scoreboard players set @s chain_timer 0

execute if score @s chain_pcs matches 3 if score @s chain_timer matches 90.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 3 if score @s chain_timer matches 90.. run scoreboard players set @s chain_timer 0

execute if score @s chain_pcs matches 4 if score @s chain_timer matches 20.. run function linear_progression:armor_effects/chainmail/add_sat
execute if score @s chain_pcs matches 4 if score @s chain_timer matches 20.. run scoreboard players set @s chain_timer 0
