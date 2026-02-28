scoreboard players set @s endgame_expanded.fly_start_delay 0
execute if score @s endgame_expanded.is_flying matches 1 run return run scoreboard players set @s endgame_expanded.is_flying 0
scoreboard players set @s endgame_expanded.is_flying 1