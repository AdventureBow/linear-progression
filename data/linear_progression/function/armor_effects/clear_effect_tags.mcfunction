# On death (player_died): drop all LP armor/trim effect tags so post-respawn tick re-applies cleanly.
# keepInventory keeps items; entity attribute modifiers are cleared by death — tags were the desync.

# Golden armor
tag @s remove gold_armor_head
tag @s remove gold_armor_chest
tag @s remove gold_armor_legs
tag @s remove gold_armor_feet

# Amethyst
tag @s remove amethyst_head
tag @s remove amethyst_chest
tag @s remove amethyst_legs
tag @s remove amethyst_feet

# Copper
tag @s remove copper_head
tag @s remove copper_chest
tag @s remove copper_legs
tag @s remove copper_feet

# Diamond
tag @s remove diamond_head
tag @s remove diamond_chest
tag @s remove diamond_legs
tag @s remove diamond_feet

# Emerald
tag @s remove emerald_head
tag @s remove emerald_chest
tag @s remove emerald_legs
tag @s remove emerald_feet

# Gold trim (mining)
tag @s remove gold_head
tag @s remove gold_chest
tag @s remove gold_legs
tag @s remove gold_feet

# Iron
tag @s remove iron_head
tag @s remove iron_chest
tag @s remove iron_legs
tag @s remove iron_feet

# Netherite trim
tag @s remove netherite_head
tag @s remove netherite_chest
tag @s remove netherite_legs
tag @s remove netherite_feet

# Quartz
tag @s remove quartz_head
tag @s remove quartz_chest
tag @s remove quartz_legs
tag @s remove quartz_feet

# Redstone
tag @s remove redstone_head
tag @s remove redstone_chest
tag @s remove redstone_legs
tag @s remove redstone_feet

# Resin
tag @s remove resin_trim
