execute store result storage endgame_expanded:function_args a int 1 run scoreboard players get @s endgame_expanded.entity_groups.node_id.a
execute store result storage endgame_expanded:function_args b int 1 run scoreboard players get @s endgame_expanded.entity_groups.node_id.b
execute store result storage endgame_expanded:function_args c int 1 run scoreboard players get @s endgame_expanded.entity_groups.node_id.c

data modify storage endgame_expanded:function_args x set from entity @s data."endgame_expanded:entity_groups".pos.x
data modify storage endgame_expanded:function_args y set from entity @s data."endgame_expanded:entity_groups".pos.y
data modify storage endgame_expanded:function_args z set from entity @s data."endgame_expanded:entity_groups".pos.z

function endgame_expanded:entity_groups/tick_b with storage endgame_expanded:function_args