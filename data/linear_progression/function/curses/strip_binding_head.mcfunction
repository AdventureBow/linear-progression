execute unless items entity @s armor.head * run return fail

execute at @s positioned ~ 320 ~ run summon minecraft:item ~ ~ ~ {Tags:["lp_bind_strip"],PickupDelay:32767,Age:5900,Item:{id:"minecraft:stone",count:1}}
execute at @s positioned ~ 320 ~ run item replace entity @e[type=item,tag=lp_bind_strip,distance=..1,limit=1] contents from entity @s armor.head

# 1.21.x: try both component shapes (levels map + flat map after 1.21.5)
execute at @s positioned ~ 320 ~ as @e[type=item,tag=lp_bind_strip,distance=..1,limit=1] run data remove entity @s Item.components."minecraft:enchantments".levels."minecraft:binding_curse"
execute at @s positioned ~ 320 ~ as @e[type=item,tag=lp_bind_strip,distance=..1,limit=1] run data remove entity @s Item.components."minecraft:enchantments"."minecraft:binding_curse"

execute at @s positioned ~ 320 ~ run item replace entity @s armor.head from entity @e[type=item,tag=lp_bind_strip,distance=..1,limit=1] contents
execute at @s positioned ~ 320 ~ run kill @e[type=item,tag=lp_bind_strip,distance=..1]
