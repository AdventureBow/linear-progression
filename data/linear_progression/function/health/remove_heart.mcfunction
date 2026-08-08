# Called on death. Remove 1 heart from base_hp if above the floor (6 hearts = 12 HP).

execute unless score @s base_hp matches 6..40 run scoreboard players set @s base_hp 20

# Floor of 6 hearts (12 HP): only remove when base_hp is 14+
execute if score @s base_hp matches 14.. run scoreboard players remove @s base_hp 2

function linear_progression:health/set_max_hp

# Drop armor/trim effect tags so tick re-applies after respawn (keepInventory keeps items)
function linear_progression:armor_effects/clear_effect_tags

# Overworld random respawn system (Nether/End ignored inside on_death)
function linear_progression:respawn/on_death

# Allow the death advancement to fire again next death
advancement revoke @s only linear_progression:health/player_died
