$summon $(entity) ~ ~ ~ $(nbt)
$execute as @n[nbt=$(nbt),type=$(entity),predicate=!endgame_expanded:is_group_node] run tag @s add endgame_expanded.entity_groups.init
execute store result score @n[tag=endgame_expanded.entity_groups.init] endgame_expanded.entity_groups.node_id.a run scoreboard players get @s endgame_expanded.entity_groups.core_id.a
execute store result score @n[tag=endgame_expanded.entity_groups.init] endgame_expanded.entity_groups.node_id.b run scoreboard players get @s endgame_expanded.entity_groups.core_id.b
execute store result score @n[tag=endgame_expanded.entity_groups.init] endgame_expanded.entity_groups.node_id.c run scoreboard players get @s endgame_expanded.entity_groups.core_id.c
$execute as @n[tag=endgame_expanded.entity_groups.init] run data modify entity @s data."endgame_expanded:entity_groups".pos set value {x:$(x),y:$(y),z:$(z)}
tag @n[tag=endgame_expanded.entity_groups.init] remove endgame_expanded.entity_groups.init