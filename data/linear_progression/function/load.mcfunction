# Store each player's xp level and run health function initially
execute as @a store result score @s Level run data get entity @s XpLevel
execute as @a[tag=!max_health] run function linear_progression:health_system/check_xp_health

scoreboard objectives add netherite_total dummy

scoreboard objectives add fire_resistance dummy

scoreboard objectives add y_pos dummy

scoreboard objectives add difficulty_level dummy
scoreboard players set #global difficulty_level 0
execute as @a run tag @s remove hard
execute as @a run tag @s remove master

scoreboard objectives add Level dummy

scoreboard objectives add armor_chance dummy

scoreboard objectives add trim_chance dummy

# Modulo timer for low-frequency tick work (e.g. villager trade strip every 10t)
scoreboard objectives add tick_mod dummy
scoreboard players set #global tick_mod 0

# Temp counts for shulker/enderman ratio checks
scoreboard objectives add spawn_count dummy
