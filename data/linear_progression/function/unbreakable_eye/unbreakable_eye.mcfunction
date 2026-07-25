# Kill the eye entity
kill @s

# Summon dropping eye item
summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1},PickupDelay:10s}

# Vanilla survive sound + particles
playsound entity.ender_eye.death master @a ~ ~ ~ 1.3 1.0
particle minecraft:portal ~ ~ ~ 0 0 0 0.1 5
