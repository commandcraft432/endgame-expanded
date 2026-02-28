data modify storage endgame_expanded:function_args x set from entity @s data."endgame_expanded:entity_groups".pos.x
data modify storage endgame_expanded:function_args y set from entity @s data."endgame_expanded:entity_groups".pos.y
data modify storage endgame_expanded:function_args z set from entity @s data."endgame_expanded:entity_groups".pos.z
function endgame_expanded:entity_groups/tp_marker_first_pos with storage endgame_expanded:function_args

$execute as @e[type=marker,nbt={data:{"endgame_expanded:temp_entity_group_pos_change":True}}] at @s run tp @s $(x) $(y) $(z) $(yaw) $(pitch)

data modify entity @s data."endgame_expanded:entity_groups".pos.x set from entity @e[type=marker,nbt={data:{"endgame_expanded:temp_entity_group_pos_change":True}},limit=1] Pos[0]
data modify entity @s data."endgame_expanded:entity_groups".pos.y set from entity @e[type=marker,nbt={data:{"endgame_expanded:temp_entity_group_pos_change":True}},limit=1] Pos[1]
data modify entity @s data."endgame_expanded:entity_groups".pos.z set from entity @e[type=marker,nbt={data:{"endgame_expanded:temp_entity_group_pos_change":True}},limit=1] Pos[2]

kill @e[type=marker,nbt={data:{"endgame_expanded:temp_entity_group_pos_change":True}}]