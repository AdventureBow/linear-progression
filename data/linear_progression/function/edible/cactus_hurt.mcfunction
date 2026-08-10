# Same damage as walking into a cactus (2 HP) + thorns prick sound.
damage @s 2 minecraft:cactus
playsound minecraft:enchant.thorns.hit player @s ~ ~ ~ 1 1
advancement revoke @s only linear_progression:detect/eat_cactus
