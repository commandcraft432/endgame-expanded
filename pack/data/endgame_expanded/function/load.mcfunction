scoreboard objectives add endgame_expanded.particleage dummy

# Add Scoreboards
scoreboard objectives add endgame_expanded.entity_groups.node_id.a dummy
scoreboard objectives add endgame_expanded.entity_groups.node_id.b dummy
scoreboard objectives add endgame_expanded.entity_groups.node_id.c dummy
scoreboard objectives add endgame_expanded.entity_groups.core_id.a dummy
scoreboard objectives add endgame_expanded.entity_groups.core_id.b dummy
scoreboard objectives add endgame_expanded.entity_groups.core_id.c dummy
scoreboard objectives add endgame_expanded.entity_groups.next_group dummy

scoreboard players add a endgame_expanded.entity_groups.next_group 0
scoreboard players add b endgame_expanded.entity_groups.next_group 0
scoreboard players add c endgame_expanded.entity_groups.next_group 0

scoreboard objectives add endgame_expanded.entity.wildfire.ability_cooldown dummy

scoreboard objectives add endgame_expanded.sneaking minecraft.custom:sneak_time
scoreboard objectives add endgame_expanded.fly_start_delay dummy
scoreboard objectives add endgame_expanded.is_flying dummy
scoreboard objectives add endgame_expanded.jump_last_tick dummy
scoreboard objectives add endgame_expanded.hover_enabled dummy
scoreboard objectives add endgame_expanded.fly_particles_enabled dummy

scoreboard objectives add endgame_expanded.trigger_ran.main trigger Action

scoreboard objectives add endgame_expanded.velocity_amount dummy
scoreboard objectives add endgame_expanded.velocity_hit minecraft.custom:damage_dealt

scoreboard objectives add endgame_expanded.hit_delay dummy

scoreboard objectives add endgame_expanded.goliath_birdeater.ability_cooldown dummy

data modify storage endgame_expanded:function_args {} set value {}

# Cleans up previous spawn waypoint
execute at @n[type=armor_stand,nbt={data:{"endgame_expanded:entity":spawn_marker}}] unless data storage endgame_expanded:data {current_spawn_already_forceloaded:1b} run forceload remove ~ ~
kill @e[type=armor_stand,nbt={data:{"endgame_expanded:entity":spawn_marker}}]

# Adds new spawn waypoint
execute if data storage endgame_expanded:data settings{spawn_waypoint:true} store result storage endgame_expanded:data current_spawn_already_forceloaded byte 1 run forceload query ~ ~
execute if data storage endgame_expanded:data settings{spawn_waypoint:true} run forceload add ~ ~ ~ ~
execute if data storage endgame_expanded:data settings{spawn_waypoint:true} run summon armor_stand ~ ~ ~ {data:{"endgame_expanded:entity":spawn_marker},Marker:1b,NoBasePlate:1b,Invisible:1b,attributes:[{id:"waypoint_transmit_range",base:60000000}]}
execute if data storage endgame_expanded:data settings{spawn_waypoint:true} as @e[type=armor_stand,nbt={data:{"endgame_expanded:entity":spawn_marker}}] run waypoint modify @s color blue
execute if data storage endgame_expanded:data settings{spawn_waypoint:true} as @e[type=armor_stand,nbt={data:{"endgame_expanded:entity":spawn_marker}}] run waypoint modify @s style set endgame_expanded:spawn

# Scoreboards
execute unless data storage endgame_expanded:data {was_installed:true} run scoreboard objectives add endgame_expanded.health health {"text":"❤","color":"red"}
execute unless data storage endgame_expanded:data {was_installed:true} run scoreboard objectives setdisplay below_name endgame_expanded.health
execute unless data storage endgame_expanded:data {was_installed:true} run scoreboard objectives add endgame_expanded.deaths deathCount
execute unless data storage endgame_expanded:data {was_installed:true} run scoreboard objectives modify endgame_expanded.deaths numberformat styled {color:"red"}
execute unless data storage endgame_expanded:data {was_installed:true} run scoreboard objectives setdisplay list endgame_expanded.deaths

# Change Gamerule
execute unless data storage endgame_expanded:data {was_installed:true} run gamerule send_command_feedback false

# Installation
data modify storage endgame_expanded:data was_installed set value true
execute if data storage endgame_expanded:data settings{always_newly_installed:true} run data modify storage endgame_expanded:data was_installed set value false

# Version
data modify storage endgame_expanded:data version set value {major:1,minor:0,patch:0,stage:'release',iteration:0}

function endgame_expanded:version_change with storage endgame_expanded:data version