playsound entity.blaze.shoot hostile @a ~ ~ ~
summon blaze ~ ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~1 ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~ ~ ~1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~1 ~ ~1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~-1 ~ ~ {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~ ~ ~-1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~1 ~ ~-1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~-1 ~ ~1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
summon blaze ~-1 ~ ~-1 {data:{"endgame_expanded:entity_data":{requires_wildfire:true}},PersistenceRequired:true}
scoreboard players set @s endgame_expanded.entity.wildfire.ability_cooldown 300