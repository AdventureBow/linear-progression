# Macro: apply one trimmed armor piece.
# Expects storage linear_progression:trim {slot, item, pattern, material}
$item replace entity @s $(slot) with $(item)[minecraft:trim={pattern:"$(pattern)",material:"$(material)"}]
