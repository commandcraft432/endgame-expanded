# DETAILS ABOUT THIS:
# 1: Show rocket boots dialog
# 2: Set Rocket Boots hover mode to true
# 3: set rocket boots hover mode to false
# How this works:
# A two-digit number between 10 and 99
# Followed up with other numbers
# Example:
# 13 < Identifier
# 2332 < 2, 3, 3, 2



# Get Data
execute store result storage endgame_expanded:function_args trigger_check_num int 1 run scoreboard players get @s endgame_expanded.trigger_ran.main
function endgame_expanded:conv_trigger_check_to_str with storage endgame_expanded:function_args {}
data modify storage endgame_expanded:function_args trigger_check_identity set string storage endgame_expanded:function_args trigger_check_str 0 2


# ID 10: Open Version Page
execute if data storage endgame_expanded:function_args {trigger_check_identity:"10"} run data modify storage endgame_expanded:function_args dialog set value {type:"minecraft:notice",body:[{type:"minecraft:plain_message",contents:[{translate:"endgame_expanded.ui.version.datapack",extra:[": "]},"<datapack_version>"],width:300},{type:"minecraft:plain_message",contents:[{translate:"endgame_expanded.ui.version.resource_pack",extra:[": "]},{translate:"endgame_expanded.ui.version.resource_pack.ver"}],width:300}],inputs:[],title:{translate:"endgame_expanded.ui.version"},pause:0b,action:{label:{translate:"endgame_expanded.ui.submit"}}}
execute if data storage endgame_expanded:function_args {trigger_check_identity:"10"} run data modify storage endgame_expanded:function_args dialog.body[0].contents[1] set from storage endgame_expanded:data version.display
execute if data storage endgame_expanded:function_args {trigger_check_identity:"10"} run function endgame_expanded:show_dialog with storage endgame_expanded:function_args
execute if data storage endgame_expanded:function_args {trigger_check_identity:"10"} run scoreboard players set @s endgame_expanded.trigger_ran.main 0
execute if data storage endgame_expanded:function_args {trigger_check_identity:"10"} run return 10


# ID 11: Open Rocket Boots Settings
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} run data modify storage endgame_expanded:function_args dialog set value {type:"minecraft:notice",inputs:[{type:"minecraft:single_option",key:"hover",label:{translate:"endgame_expanded.ui.settings.rocket_boots.hover_option"},options:[{id:"2",display:{translate:"endgame_expanded.ui.settings.rocket_boots.hover_option.true"}},{id:"1",display:{translate:"endgame_expanded.ui.settings.rocket_boots.hover_option.false"}}]},{type:"minecraft:single_option",key:"particle",label:{translate:"endgame_expanded.ui.settings.rocket_boots.particle_option"},options:[{id:"2",display:{translate:"endgame_expanded.ui.settings.rocket_boots.particle_option.true"}},{id:"1",display:{translate:"endgame_expanded.ui.settings.rocket_boots.particle_option.false"}}]}],title:{translate:"endgame_expanded.ui.settings.rocket_boots"},action:{label:{translate:"endgame_expanded.ui.submit"},action:{type:"minecraft:dynamic/run_command",template:"trigger endgame_expanded.trigger_ran.main set 12$(hover)$(particle)"}},pause:0}
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} if score @s endgame_expanded.hover_enabled matches 0 run data modify storage endgame_expanded:function_args dialog.inputs[{label:{translate:"endgame_expanded.ui.settings.rocket_boots.hover_option"}}].options[{id:"1"}].initial set value true
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} if score @s endgame_expanded.hover_enabled matches 1 run data modify storage endgame_expanded:function_args dialog.inputs[{label:{translate:"endgame_expanded.ui.settings.rocket_boots.hover_option"}}].options[{id:"2"}].initial set value true
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} if score @s endgame_expanded.fly_particles_enabled matches 0 run data modify storage endgame_expanded:function_args dialog.inputs[{label:{translate:"endgame_expanded.ui.settings.rocket_boots.particle_option"}}].options[{id:"1"}].initial set value true
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} if score @s endgame_expanded.fly_particles_enabled matches 1 run data modify storage endgame_expanded:function_args dialog.inputs[{label:{translate:"endgame_expanded.ui.settings.rocket_boots.particle_option"}}].options[{id:"2"}].initial set value true
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} run function endgame_expanded:show_dialog with storage endgame_expanded:function_args
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} run scoreboard players set @s endgame_expanded.trigger_ran.main 0
execute if data storage endgame_expanded:function_args {trigger_check_identity:"11"} run return 11


# ID 12: Save Rocket Boots Settings
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} run data modify storage endgame_expanded:function_args trigger_check_single set string storage endgame_expanded:function_args trigger_check_str 2 3
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} if data storage endgame_expanded:function_args {trigger_check_single:"2"} run scoreboard players set @s endgame_expanded.hover_enabled 1
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} if data storage endgame_expanded:function_args {trigger_check_single:"1"} run scoreboard players set @s endgame_expanded.hover_enabled 0
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} run data modify storage endgame_expanded:function_args trigger_check_single set string storage endgame_expanded:function_args trigger_check_str 3 4
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} if data storage endgame_expanded:function_args {trigger_check_single:"2"} run scoreboard players set @s endgame_expanded.fly_particles_enabled 1
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} if data storage endgame_expanded:function_args {trigger_check_single:"1"} run scoreboard players set @s endgame_expanded.fly_particles_enabled 0
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} run scoreboard players set @s endgame_expanded.trigger_ran.main 0
execute if data storage endgame_expanded:function_args {trigger_check_identity:"12"} run return 12





scoreboard players set @s endgame_expanded.trigger_ran.main 0