playsound entity.breeze.shoot hostile @a ~ ~ ~
summon breeze ~ ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon breeze ~1 ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon breeze ~ ~ ~1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon breeze ~-1 ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon breeze ~ ~ ~-1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
scoreboard players set @s endgame_expanded.entity.wildfire.ability_cooldown 300