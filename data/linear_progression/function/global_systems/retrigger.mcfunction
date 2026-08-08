# Per-player rearm tick. Called from main tick for players with gs_rearm set.
# When countdown hits 0, re-enable inventory_changed for that player only.

execute as @a[scores={gs_rearm=1..}] run scoreboard players remove @s gs_rearm 1
execute as @a[scores={gs_rearm=0}] run function linear_progression:global_systems/retrigger_player
