summon cave_spider ~ ~ ~ \
{\
  data:{\
    "endgame_expanded:entity":"goliath_birdeater",\
    "endgame_expanded:entity_data":{\
      random_val:0b,\
      initial:true\
    }\
  },\
  attributes:[\
    {id:"minecraft:scale",base:3},\
    {id:"minecraft:max_health",base:400}\
    ],\
  Health:400f,\
  DeathLootTable:"endgame_expanded:entities/goliath_birdeater",\
  PersistenceRequired:1b\
}


scoreboard players set @e[type=cave_spider,nbt={data:{"endgame_expanded:entity":"goliath_birdeater","endgame_expanded:entity_data":{initial:true}}}] endgame_expanded.goliath_birdeater.ability_cooldown 250
execute as @e[type=cave_spider,nbt={data:{"endgame_expanded:entity":"goliath_birdeater","endgame_expanded:entity_data":{initial:true}}}] run data modify entity @s data."endgame_expanded:entity_data".initial set value false