gamerule keep_inventory true

# Netherite FR: armor pieces + pieces with netherite trim material
scoreboard objectives add netherite_total dummy
scoreboard objectives add fire_resistance dummy
scoreboard objectives add netherite_trim dummy

scoreboard objectives add y_pos dummy

scoreboard objectives add difficulty_level dummy
scoreboard players set #global difficulty_level 0
execute as @a run tag @s remove hard
execute as @a run tag @s remove master

scoreboard objectives add armor_chance dummy
scoreboard objectives add trim_chance dummy

scoreboard objectives add tick_mod dummy
scoreboard players set #global tick_mod 0

# Soft-despawn idle timer for natural shulkers (slow_tick units)
scoreboard objectives add shulker_idle dummy

# Heart system
scoreboard objectives add base_hp dummy

# Spawner breaks (Lost Treasure advancement)
scoreboard objectives add spawner_mined minecraft.mined:minecraft.spawner

# Re-arm inventory systems after reload
execute as @a run tag @s remove gs_retrigger
execute as @a run advancement revoke @s only linear_progression:detect/inventory_changed
