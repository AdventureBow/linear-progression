# @s = nearest player within lapis range. Writes piece count to #lapis lapis_trim.
scoreboard players set #lapis lapis_trim 0
execute if predicate linear_progression:trim_effects/lapis/head run scoreboard players add #lapis lapis_trim 1
execute if predicate linear_progression:trim_effects/lapis/chest run scoreboard players add #lapis lapis_trim 1
execute if predicate linear_progression:trim_effects/lapis/legs run scoreboard players add #lapis lapis_trim 1
execute if predicate linear_progression:trim_effects/lapis/feet run scoreboard players add #lapis lapis_trim 1
