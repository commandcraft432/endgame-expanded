summon marker ~ ~ ~ {data:{"endgame_expanded:entity_group_core_initial":true}}

execute as @e[nbt={data:{"endgame_expanded:entity_group_core_initial":true}}] run scoreboard players operation @s endgame_expanded.entity_groups.core_id.a = a endgame_expanded.entity_groups.next_group
execute as @e[nbt={data:{"endgame_expanded:entity_group_core_initial":true}}] run scoreboard players operation @s endgame_expanded.entity_groups.core_id.b = b endgame_expanded.entity_groups.next_group
execute as @e[nbt={data:{"endgame_expanded:entity_group_core_initial":true}}] run scoreboard players operation @s endgame_expanded.entity_groups.core_id.c = c endgame_expanded.entity_groups.next_group

execute if score a endgame_expanded.entity_groups.next_group matches -1 if score b endgame_expanded.entity_groups.next_group matches -1 run scoreboard players add c endgame_expanded.entity_groups.next_group 1
execute if score a endgame_expanded.entity_groups.next_group matches -1 run scoreboard players add b endgame_expanded.entity_groups.next_group 1
scoreboard players add a endgame_expanded.entity_groups.next_group 1

execute as @e[type=marker,nbt={data:{"endgame_expanded:entity_group_core_initial":true}}] run data modify entity @s data."endgame_expanded:entity_group_core_initial" set value false