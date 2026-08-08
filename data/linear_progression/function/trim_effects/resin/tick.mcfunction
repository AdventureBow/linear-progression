# Resin — resistance while sneaking (slowness + KB resist tradeoff)
execute unless predicate linear_progression:trim_effects/resin/any if entity @s[tag=!resin_trim] run return fail

execute if predicate linear_progression:trim_effects/resin/any run function linear_progression:trim_effects/resin/particle
execute if predicate linear_progression:trim_effects/resin/any if predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/resin/apply
execute if entity @s[tag=resin_trim] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] if predicate linear_progression:trim_effects/resin/any unless predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/resin/remove
