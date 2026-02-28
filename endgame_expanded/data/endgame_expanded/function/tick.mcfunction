# Initialize Particles

# Setup Data Structure
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion set value {}
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion.yaw set value 0
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion.pitch set value 0
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion.x set value 0
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion.y set value 0
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_data".motion.z set value 0

# Generate Motion Values
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} if data entity @s data."endgame_expanded:particle_data"{random_rotate:true} store result entity @s data."endgame_expanded:particle_data".motion.yaw float 1 run random value -15..15
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} if data entity @s data."endgame_expanded:particle_data"{random_rotate:true} store result entity @s data."endgame_expanded:particle_data".motion.pitch float 1 run random value -15..15
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} if data entity @s data."endgame_expanded:particle_data"{dissipate:true} store result entity @s data."endgame_expanded:particle_data".motion.x float 0.025 run random value -50..50
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} if data entity @s data."endgame_expanded:particle_data"{dissipate:true} store result entity @s data."endgame_expanded:particle_data".motion.y float 0.025 run random value -50..50
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} if data entity @s data."endgame_expanded:particle_data"{dissipate:true} store result entity @s data."endgame_expanded:particle_data".motion.z float 0.025 run random value -50..50
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} store result score @s endgame_expanded.particleage run data get entity @s data."endgame_expanded:particle_data".age
execute as @e[type=item_display] if data entity @s data{"endgame_expanded:particle_initial":true} run data modify entity @s data."endgame_expanded:particle_initial" set value False

# Particle Tick
execute as @e[type=item_display] at @s if data entity @s data."endgame_expanded:particle_initial" run function endgame_expanded:glow_particle_tick with entity @s data."endgame_expanded:particle_data".motion

# Entity Group Tick
execute as @e[predicate=endgame_expanded:is_group_node] at @s run function endgame_expanded:entity_groups/tick_a

# Wildfire Shield Tick
execute as @e[type=item_display,nbt={data:{"endgame_expanded:entity":"wildfire_shield"}}] at @s run rotate @s ~5 ~
execute as @e[type=item_display,nbt={data:{"endgame_expanded:entity":"wildfire_shield"}}] at @s unless entity @e[type=blaze,distance=..5,predicate=endgame_expanded:is_wildfire] unless entity @e[type=breeze,distance=..5,predicate=endgame_expanded:is_storm] run kill @s

# Wildfire-only Tick
execute as @e[type=blaze,predicate=endgame_expanded:is_wildfire_family,scores={endgame_expanded.entity.wildfire.ability_cooldown=0}] at @s unless entity @e[type=blaze,distance=..15,predicate=!endgame_expanded:is_wildfire] run function endgame_expanded:mobs/wildfire/summon_backup
execute as @e[type=blaze,predicate=endgame_expanded:is_wildfire_family,scores={endgame_expanded.entity.wildfire.ability_cooldown=1..}] at @s unless entity @e[type=blaze,distance=..15,predicate=!endgame_expanded:is_wildfire] run scoreboard players remove @s endgame_expanded.entity.wildfire.ability_cooldown 1

# Remove Wildfire-spawned blazes not near a wildfire
execute as @e[type=blaze,nbt={data:{"endgame_expanded:entity_data":{requires_wildfire:true}}}] at @s unless entity @e[distance=..20,type=blaze,predicate=endgame_expanded:is_wildfire] run kill @s

# Storm-only Tick
execute as @e[type=breeze,predicate=endgame_expanded:is_wildfire_family,scores={endgame_expanded.entity.wildfire.ability_cooldown=0}] at @s unless entity @e[type=breeze,distance=..15,predicate=!endgame_expanded:is_storm] run function endgame_expanded:mobs/storm/summon_backup
execute as @e[type=breeze,predicate=endgame_expanded:is_wildfire_family,scores={endgame_expanded.entity.wildfire.ability_cooldown=1..}] at @s unless entity @e[type=breeze,distance=..15,predicate=!endgame_expanded:is_storm] run scoreboard players remove @s endgame_expanded.entity.wildfire.ability_cooldown 1
# Remove Storm-spawned breezes not near a storm
execute as @e[type=breeze,nbt={data:{"endgame_expanded:entity_data":{requires_wildfire:true}}}] at @s unless entity @e[distance=..20,type=breeze,predicate=endgame_expanded:is_storm] run kill @s


# Rocket Boots Flying

# Make sure everyone has the needed scores
scoreboard players add @a[predicate=endgame_expanded:wearing_rocket_boots] endgame_expanded.fly_start_delay 0
scoreboard players add @a[predicate=endgame_expanded:wearing_rocket_boots] endgame_expanded.is_flying 0
execute as @a[predicate=endgame_expanded:wearing_rocket_boots] unless score @s endgame_expanded.hover_enabled matches -2147483648..2147483647 run scoreboard players set @s endgame_expanded.hover_enabled 1
execute as @a[predicate=endgame_expanded:wearing_rocket_boots] unless score @s endgame_expanded.fly_particles_enabled matches -2147483648..2147483647 run scoreboard players set @s endgame_expanded.fly_particles_enabled 1

# Delay for the double-press on the space
scoreboard players set @a[predicate=endgame_expanded:wearing_rocket_boots,predicate=endgame_expanded:key_pressed/jump,scores={endgame_expanded.fly_start_delay=0,endgame_expanded.jump_last_tick=0}] endgame_expanded.fly_start_delay 7
execute as @a[predicate=endgame_expanded:wearing_rocket_boots,predicate=endgame_expanded:key_pressed/jump,scores={endgame_expanded.fly_start_delay=1..6,endgame_expanded.jump_last_tick=0,endgame_expanded.hover_enabled=1}] run function endgame_expanded:fly_check

# Remove Gravity Changes
execute as @a run attribute @s gravity modifier remove endgame_expanded:fly_idle
execute as @a run attribute @s gravity modifier remove endgame_expanded:flying

# More Fly Toggle Checks
scoreboard players set @a endgame_expanded.sneaking 0
scoreboard players remove @a[scores={endgame_expanded.fly_start_delay=1..}] endgame_expanded.fly_start_delay 1
scoreboard players set @a[predicate=endgame_expanded:wearing_rocket_boots,predicate=endgame_expanded:key_pressed/jump] endgame_expanded.jump_last_tick 1
scoreboard players set @a[predicate=endgame_expanded:wearing_rocket_boots,predicate=!endgame_expanded:key_pressed/jump] endgame_expanded.jump_last_tick 0

# Gravity
execute as @a[scores={endgame_expanded.hover_enabled=0},predicate=endgame_expanded:key_pressed/jump,predicate=endgame_expanded:wearing_rocket_boots] run attribute @s gravity modifier add endgame_expanded:flying -2 add_multiplied_total
execute as @a[scores={endgame_expanded.is_flying=1},predicate=!endgame_expanded:key_pressed/jump,predicate=!endgame_expanded:key_pressed/sneak] run attribute @s gravity modifier add endgame_expanded:fly_idle -1 add_multiplied_total
execute as @a[scores={endgame_expanded.is_flying=1},predicate=endgame_expanded:key_pressed/jump] run attribute @s gravity modifier add endgame_expanded:flying -2 add_multiplied_total

# Stop Flying for players that are not supposed to be flying
scoreboard players set @a[predicate=!endgame_expanded:wearing_rocket_boots] endgame_expanded.is_flying 0
scoreboard players set @a[gamemode=creative] endgame_expanded.is_flying 0
scoreboard players set @a[gamemode=spectator] endgame_expanded.is_flying 0
scoreboard players set @a[scores={endgame_expanded.hover_enabled=0}] endgame_expanded.is_flying 0
scoreboard players set @a[scores={endgame_expanded.is_flying=1},nbt={OnGround:true}] endgame_expanded.is_flying 0
execute if entity @e[type=ender_dragon] in the_end positioned 0 128 0 run scoreboard players set @a[distance=..191,predicate=endgame_expanded:wearing_rocket_boots] endgame_expanded.is_flying 0
execute if entity @e[type=ender_dragon] in the_end positioned 0 128 0 as @a[distance=..191,predicate=endgame_expanded:wearing_rocket_boots] run attribute @s gravity modifier remove endgame_expanded:flying

# Particles
execute as @a[scores={endgame_expanded.hover_enabled=0},predicate=endgame_expanded:key_pressed/jump,predicate=endgame_expanded:wearing_rocket_boots] at @s run particle minecraft:white_smoke ~ ~ ~ 0 0 0 0.1 5 normal @a[scores={endgame_expanded.fly_particles_enabled=1}]
execute as @a[predicate=endgame_expanded:is_flying,predicate=!endgame_expanded:key_pressed/sneak] at @s run particle minecraft:white_smoke ~ ~ ~ 0 0 0 0.1 5 normal @a[scores={endgame_expanded.fly_particles_enabled=1}]




# Flame Bow
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{"endgame_expanded:item":"infernal_crossbow"}}}}] at @s summon small_fireball run function endgame_expanded:new_small_fireball
kill @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{"endgame_expanded:item":"infernal_crossbow"}}}}]

# Silkwoven Bow
execute as @e[type=#arrows,nbt={weapon:{components:{"minecraft:custom_data":{"endgame_expanded:item":"silkwoven_bow"}}}}] at @s summon block_display run function endgame_expanded:new_web_proj
kill @e[type=#arrows,nbt={weapon:{components:{"minecraft:custom_data":{"endgame_expanded:item":"silkwoven_bow"}}}}]



# Utilities
  # Armor Stand Arms
  # Armor stands with tag endgame_expanded.hidearms will not have arms
  execute as @e[type=armor_stand,nbt={ShowArms:false},tag=!endgame_expanded.hidearms] run data modify entity @s ShowArms set value true

  # Unbreakable EVERYTHING
  execute as @a if items entity @s inventory.* *[!minecraft:unbreakable,minecraft:max_damage] run function endgame_expanded:item_modifier_apply_on_all_instances {check:"*[!minecraft:unbreakable,minecraft:max_damage]",modifier:{function:"minecraft:set_components",components:{"minecraft:unbreakable":{}},conditions:[]}}
  execute as @a if items entity @s hotbar.* *[!minecraft:unbreakable,minecraft:max_damage] run function endgame_expanded:item_modifier_apply_on_all_instances {check:"*[!minecraft:unbreakable,minecraft:max_damage]",modifier:{function:"minecraft:set_components",components:{"minecraft:unbreakable":{}},conditions:[]}}
  execute as @a if items entity @s player.cursor *[!minecraft:unbreakable,minecraft:max_damage] run function endgame_expanded:item_modifier_apply_on_all_instances {check:"*[!minecraft:unbreakable,minecraft:max_damage]",modifier:{function:"minecraft:set_components",components:{"minecraft:unbreakable":{}},conditions:[]}}
  execute as @a if items entity @s armor.* *[!minecraft:unbreakable,minecraft:max_damage] run function endgame_expanded:item_modifier_apply_on_all_instances {check:"*[!minecraft:unbreakable,minecraft:max_damage]",modifier:{function:"minecraft:set_components",components:{"minecraft:unbreakable":{}},conditions:[]}}

#


# Check For Triggers
scoreboard players enable @a endgame_expanded.trigger_ran.main
execute as @a[scores={endgame_expanded.trigger_ran.main=1..}] run function endgame_expanded:trigger/main

# Goliath Birdeater
scoreboard players remove @e[type=block_display,scores={endgame_expanded.hit_delay=1..}] endgame_expanded.hit_delay 1
#execute as @e[type=block_display,nbt={data:{"endgame_expanded:entity":"goliath_birdeater_projectile","endgame_expanded:entity_data":{mob_spawned:true}}}] at @s run rotate @s facing entity @p
execute as @e[type=block_display,nbt={data:{"endgame_expanded:entity":"goliath_birdeater_projectile"}}] at @s run tp @s ^ ^ ^1

execute as @e[type=block_display,nbt={data:{"endgame_expanded:entity":"goliath_birdeater_projectile"}},scores={endgame_expanded.hit_delay=0}] at @s unless block ~ ~ ~ #endgame_expanded:goliath_birdeater_proj_goes_through run function endgame_expanded:mobs/goliath_birdeater/proj_hit

execute as @e[type=block_display,nbt={data:{"endgame_expanded:entity":"goliath_birdeater_projectile"}},scores={endgame_expanded.hit_delay=0}] at @s if entity @e[distance=..1.5,type=!#minecraft:arthropod,type=!block_display] run function endgame_expanded:mobs/goliath_birdeater/proj_hit

execute as @e[type=cave_spider,nbt={data:{"endgame_expanded:entity":"goliath_birdeater"}},scores={endgame_expanded.goliath_birdeater.ability_cooldown=0}] at @s run function endgame_expanded:mobs/goliath_birdeater/ability
execute as @e[type=cave_spider,nbt={data:{"endgame_expanded:entity":"goliath_birdeater"}}] at @s if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] run scoreboard players remove @s endgame_expanded.goliath_birdeater.ability_cooldown 1

# Death drops
execute if data storage endgame_expanded:data settings{partial_keep_inventory:true} as @a[nbt={Health:0f}] at @s run function endgame_expanded:death



# Template For Marker-based Summoner
#
# Spawn Command
#  summon marker ~ ~ ~ {data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:<entity type>}}}
#
# Function Commands
#  execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:<entity type>}}}] at @s if entity @a[distance=..10] run <actual command>
#  execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:<entity type>}}}] at @s if entity @a[distance=..10] run kill @s

# Spider Summoner (Item Display Based)
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=item_display,nbt={data:{"endgame_expanded:entity":"spider_egg"}}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run summon spider
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=item_display,nbt={data:{"endgame_expanded:entity":"spider_egg"}}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run kill @s

# Goliath Birdeater Summoner
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"goliath_birdeater"}}}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run function endgame_expanded:mobs/goliath_birdeater/new
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"goliath_birdeater"}}}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run kill @s

# Wildfire Summoner
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"wildfire"}}}] at @s if entity @a[distance=..15,gamemode=!creative,gamemode=!spectator] run function endgame_expanded:mobs/wildfire/create
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"wildfire"}}}] at @s if entity @a[distance=..15,gamemode=!creative,gamemode=!spectator] run kill @s

# Storm Summoner
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"storm"}}}] at @s if entity @a[distance=..15,gamemode=!creative,gamemode=!spectator] run function endgame_expanded:mobs/storm/create
execute if data storage endgame_expanded:data settings{summoner_enabled:true} as @e[type=marker,nbt={data:{"endgame_expanded:entity":"summoner","endgame_expanded:entity_data":{type:"storm"}}}] at @s if entity @a[distance=..15,gamemode=!creative,gamemode=!spectator] run kill @s