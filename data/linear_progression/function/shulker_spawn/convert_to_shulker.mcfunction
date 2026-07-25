# Replace this enderman with a shulker (no enderman loot).
summon minecraft:shulker ~ ~ ~ {Tags:["natural_shulker"]}
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
# Move then kill so the new shulker is never the kill target if context glitches
tp @s ~ -10000 ~
kill @s
