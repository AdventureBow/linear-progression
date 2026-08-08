# Per-eye countdown; recover when timer hits 0. Handles any number of concurrent eyes.
execute as @e[type=eye_of_ender,tag=!unbreakable] at @s run function linear_progression:unbreakable_eye/schedule_unbreakable_eye
execute as @e[type=eye_of_ender,tag=unbreakable,scores={eye_timer=1..}] run scoreboard players remove @s eye_timer 1
execute as @e[type=eye_of_ender,tag=unbreakable,scores={eye_timer=0}] at @s run function linear_progression:unbreakable_eye/unbreakable_eye
