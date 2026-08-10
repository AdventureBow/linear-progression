gamerule keep_inventory true

# Netherite FR: armor pieces + pieces with netherite trim material
scoreboard objectives add netherite_total dummy
scoreboard objectives add fire_resistance dummy
scoreboard objectives add netherite_trim dummy

# Powerful Trims piece-count scores
scoreboard objectives add lapis_trim dummy
scoreboard objectives add redstone_trim dummy
scoreboard objectives add copper_trim dummy
scoreboard objectives add emerald_trim dummy
scoreboard objectives add resin_trim dummy

scoreboard objectives add y_pos dummy

scoreboard objectives add difficulty_level dummy
# Keep prior world difficulty across reloads when possible; re-sync from advancements below
execute unless score #global difficulty_level matches 0..2 run scoreboard players set #global difficulty_level 0
execute if entity @a[advancements={minecraft:story/enter_the_nether=true}] run scoreboard players set #global difficulty_level 1
execute if entity @a[advancements={minecraft:end/kill_dragon=true}] run scoreboard players set #global difficulty_level 2
execute as @a[advancements={minecraft:story/enter_the_nether=true}] run tag @s add hard
execute as @a[advancements={minecraft:end/kill_dragon=true}] run tag @s add master

scoreboard objectives add armor_chance dummy
scoreboard objectives add trim_chance dummy
scoreboard objectives add equip_piece dummy
scoreboard objectives add trim_mat dummy
scoreboard objectives add trim_pat dummy

scoreboard objectives add tick_mod dummy
scoreboard players set #global tick_mod 0

# Mob stats: arrow damage math for skeleton archers
scoreboard objectives add arrow_dmg dummy

# Soft-despawn idle timer for natural shulkers (slow_tick units)
scoreboard objectives add shulker_idle dummy

# Heart system
scoreboard objectives add base_hp dummy

# Overworld respawn near death (all player-local for multiplayer)
scoreboard objectives add death_x dummy
scoreboard objectives add death_y dummy
scoreboard objectives add death_z dummy
scoreboard objectives add respawn_calc dummy
scoreboard objectives add respawn_sx dummy
scoreboard objectives add respawn_sy dummy
scoreboard objectives add respawn_sz dummy
scoreboard objectives add respawn_attempts dummy
scoreboard objectives add respawn_dx dummy
scoreboard objectives add respawn_dz dummy
scoreboard objectives add respawn_d2 dummy
scoreboard objectives add respawn_t dummy
scoreboard objectives add respawn_tx dummy
scoreboard objectives add respawn_tz dummy
scoreboard objectives add respawn_wait dummy
scoreboard objectives add respawn_unload dummy

# Unbreakable eye of ender — per-entity flight timer
scoreboard objectives add eye_timer dummy

# GS inventory rearm — per-player countdown (ticks until revoke)
scoreboard objectives add gs_rearm dummy

# Spawner breaks (Lost Treasure advancement)
scoreboard objectives add spawner_mined minecraft.mined:minecraft.spawner

# Re-arm inventory systems after reload
execute as @a run scoreboard players reset @s gs_rearm
execute as @a run tag @s remove gs_retrigger
execute as @a run tag @s remove await_respawn_place
execute as @a run tag @s remove respawn_delay
execute as @a run tag @s remove respawn_chunk_wait
execute as @a run tag @s remove respawn_unload_wait
execute as @a run scoreboard players reset @s respawn_wait
execute as @a run scoreboard players reset @s respawn_unload
execute as @a run advancement revoke @s only linear_progression:detect/inventory_changed

