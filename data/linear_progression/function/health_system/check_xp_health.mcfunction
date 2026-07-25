execute as @a[scores={Level=0..2},tag=!health_0] run function linear_progression:health_system/level_0
execute as @a[scores={Level=3..5},tag=!health_3] run function linear_progression:health_system/level_3
execute as @a[scores={Level=6..8},tag=!health_6] run function linear_progression:health_system/level_6
execute as @a[scores={Level=9..11},tag=!health_9] run function linear_progression:health_system/level_9
execute as @a[scores={Level=12..14},tag=!health_12] run function linear_progression:health_system/level_12
execute as @a[scores={Level=15..17},tag=!health_15] run function linear_progression:health_system/level_15
execute as @a[scores={Level=18..20},tag=!health_18] run function linear_progression:health_system/level_18
execute as @a[scores={Level=21..23},tag=!health_21] run function linear_progression:health_system/level_21
execute as @a[scores={Level=24..26},tag=!health_24] run function linear_progression:health_system/level_24
execute as @a[scores={Level=27..29},tag=!health_27] run function linear_progression:health_system/level_27
execute as @a[scores={Level=30..},tag=!health_30] run function linear_progression:health_system/level_30
execute as @a[tag=health_30] run tag @s add max_health
