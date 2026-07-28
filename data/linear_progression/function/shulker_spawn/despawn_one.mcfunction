# Hide then kill (no loot / no visible death).
data modify entity @s DeathLootTable set value "minecraft:empty"
data modify entity @s Silent set value 1b
tp @s ~ -10000 ~
kill @s
