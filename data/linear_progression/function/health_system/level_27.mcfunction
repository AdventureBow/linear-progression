attribute @s minecraft:max_health base set 19
execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0.3 0 0.05 200 normal
execute at @s run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1
tag @s add health_27
