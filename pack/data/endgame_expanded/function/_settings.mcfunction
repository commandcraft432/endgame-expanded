
# Will eventually be moved to it's own menu
data modify storage endgame_expanded:data settings.spawn_waypoint set value true
data modify storage endgame_expanded:data settings.partial_keep_inventory set value true
#                        DEVELOPMENT SETTINGS
# Changing these settings can do things that shouldn't be done on a survival world!
#
# Boolean: Should structure spawners (ex: Spider Eggs, Wildfire Marker Entity) summon mobs?
data modify storage endgame_expanded:data settings.summoner_enabled set value true
# Default: true                                                               ^^^^
#
# Boolean: Should the datapack act as if it was newly installed on every /reload?
data modify storage endgame_expanded:data settings.always_newly_installed set value false
# Default: false                                                                    ^^^^^