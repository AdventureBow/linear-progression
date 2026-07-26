scoreboard objectives add netherite_total dummy
scoreboard objectives add fire_resistance dummy
scoreboard objectives add y_pos dummy

scoreboard objectives add difficulty_level dummy
scoreboard players set #global difficulty_level 0
execute as @a run tag @s remove hard
execute as @a run tag @s remove master

scoreboard objectives add armor_chance dummy
scoreboard objectives add trim_chance dummy

scoreboard objectives add tick_mod dummy
scoreboard players set #global tick_mod 0

scoreboard objectives add spawn_count dummy

# Heart system
scoreboard objectives add base_hp dummy
