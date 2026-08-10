# One-shot speed/HP tuning. Always on. Batch for perf.
# Arrow damage (skeleton +2, amethyst, dispenser) runs every tick in arrow_boost/tick.
execute as @e[type=#linear_progression:zombies_tuned,tag=!mob_tuned,limit=30] run function linear_progression:mob_stats/zombie
execute as @e[type=minecraft:cave_spider,tag=!mob_tuned,limit=30] run function linear_progression:mob_stats/cave_spider
execute as @e[type=#linear_progression:skeleton_archers,tag=!mob_tuned,limit=30] run function linear_progression:mob_stats/skeleton
execute as @e[type=minecraft:enderman,tag=!mob_tuned,limit=30] run function linear_progression:mob_stats/enderman
