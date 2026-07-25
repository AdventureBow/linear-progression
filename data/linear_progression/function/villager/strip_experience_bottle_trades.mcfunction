# Remove bottle o' enchanting from cleric trade offers (vanilla master trade).
# Runtime strip — villager trades are not data-driven on 1.21.11.
execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:cleric"}}] run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:experience_bottle"}}]
