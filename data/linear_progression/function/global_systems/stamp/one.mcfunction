# Macro: $(slot) $(item) $(modifier) $(marker)
# marker is custom_data partial, e.g. {lp_gold_armor:1b}
$execute if items entity @s $(slot) $(item) unless items entity @s $(slot) *[minecraft:custom_data~$(marker)] run item modify entity @s $(slot) $(modifier)
