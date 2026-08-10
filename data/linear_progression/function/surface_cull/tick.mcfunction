# Master only: one-shot scan of common hostiles for surface/sky ban.
execute if score #global difficulty_level matches 2 as @e[type=#linear_progression:common_monsters,tag=!spawn_done,limit=40] run function linear_progression:surface_cull/process
