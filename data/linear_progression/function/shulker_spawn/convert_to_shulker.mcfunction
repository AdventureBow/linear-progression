# Replace this enderman with a non-persistent shulker (no enderman loot).
summon minecraft:shulker ~ ~ ~ {PersistenceRequired:0b,Tags:["natural_shulker"]}
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
tp @s ~ -10000 ~
kill @s
