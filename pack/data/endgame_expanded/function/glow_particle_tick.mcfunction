$tp @s ~$(x) ~$(y) ~$(z) ~$(yaw) ~$(pitch)
execute if entity @s[type=item_display,x_rotation=90] if data entity @s data."endgame_expanded:particle_initial" run rotate @s ~ -89
execute if entity @s[type=item_display,x_rotation=-90] if data entity @s data."endgame_expanded:particle_initial" run rotate @s ~ 89
execute unless score @s endgame_expanded.particleage matches ..-1 run scoreboard players remove @s endgame_expanded.particleage 1
execute if score @s endgame_expanded.particleage matches 0 run kill @s