scoreboard players set @s endgame_expanded.goliath_birdeater.ability_cooldown 250
execute store result entity @s data."endgame_expanded:entity_data".random_val byte 1 run random value 1..2
execute unless data entity @s data."endgame_expanded:entity_data"{random_val:1b} positioned ~ ~2 ~ summon block_display run return run function endgame_expanded:mobs/goliath_birdeater/new_proj
execute if entity @e[type=spider,distance=..20] positioned ~ ~2 ~ summon block_display run return run function endgame_expanded:mobs/goliath_birdeater/new_proj
summon spider
summon spider
summon spider
summon spider
summon spider
summon spider
summon spider
summon spider