function endgame_expanded:entity_groups/set_entity
execute as @e[predicate=endgame_expanded:is_group_node] if function endgame_expanded:entity_groups/is_part_of_group run kill @s
kill @s