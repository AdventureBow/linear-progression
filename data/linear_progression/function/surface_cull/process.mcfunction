# @s = unscanned common monster (master mode only).
# Overworld + (can see sky OR Y≥63) → remove; mark once.
execute if dimension minecraft:overworld if predicate linear_progression:open_air_or_high run tp @s ~ -512 ~
tag @s add spawn_done
