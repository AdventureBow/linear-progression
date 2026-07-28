# Replace flying eye with dropped item.
kill @s
summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",count:1},PickupDelay:10s}
playsound entity.ender_eye.death master @a ~ ~ ~ 1.3 1.0
particle minecraft:portal ~ ~ ~ 0 0 0 0.1 5
