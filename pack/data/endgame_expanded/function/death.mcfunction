tag @s add endgame_expanded.death_check

execute if items entity @s hotbar.0 * unless items entity @s hotbar.0 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.0 * unless items entity @s hotbar.0 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:0b}]
execute if items entity @s hotbar.0 * unless items entity @s hotbar.0 #endgame_expanded:keep_on_death run item replace entity @s hotbar.0 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.1 * unless items entity @s hotbar.1 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.1 * unless items entity @s hotbar.1 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:1b}]
execute if items entity @s hotbar.1 * unless items entity @s hotbar.1 #endgame_expanded:keep_on_death run item replace entity @s hotbar.1 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.2 * unless items entity @s hotbar.2 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.2 * unless items entity @s hotbar.2 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:2b}]
execute if items entity @s hotbar.2 * unless items entity @s hotbar.2 #endgame_expanded:keep_on_death run item replace entity @s hotbar.2 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.3 * unless items entity @s hotbar.3 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.3 * unless items entity @s hotbar.3 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:3b}]
execute if items entity @s hotbar.3 * unless items entity @s hotbar.3 #endgame_expanded:keep_on_death run item replace entity @s hotbar.3 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.4 * unless items entity @s hotbar.4 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.4 * unless items entity @s hotbar.4 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:4b}]
execute if items entity @s hotbar.4 * unless items entity @s hotbar.4 #endgame_expanded:keep_on_death run item replace entity @s hotbar.4 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.5 * unless items entity @s hotbar.5 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.5 * unless items entity @s hotbar.5 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:5b}]
execute if items entity @s hotbar.5 * unless items entity @s hotbar.5 #endgame_expanded:keep_on_death run item replace entity @s hotbar.5 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.6 * unless items entity @s hotbar.6 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.6 * unless items entity @s hotbar.6 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:6b}]
execute if items entity @s hotbar.6 * unless items entity @s hotbar.6 #endgame_expanded:keep_on_death run item replace entity @s hotbar.6 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:7b}]
execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 #endgame_expanded:keep_on_death run item replace entity @s hotbar.7 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:8b}]
execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 #endgame_expanded:keep_on_death run item replace entity @s hotbar.8 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.0 * unless items entity @s inventory.0 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.0 * unless items entity @s inventory.0 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:9b}]
execute if items entity @s inventory.0 * unless items entity @s inventory.0 #endgame_expanded:keep_on_death run item replace entity @s inventory.0 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.1 * unless items entity @s inventory.1 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.1 * unless items entity @s inventory.1 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:10b}]
execute if items entity @s inventory.1 * unless items entity @s inventory.1 #endgame_expanded:keep_on_death run item replace entity @s inventory.1 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.2 * unless items entity @s inventory.2 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.2 * unless items entity @s inventory.2 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:11b}]
execute if items entity @s inventory.2 * unless items entity @s inventory.2 #endgame_expanded:keep_on_death run item replace entity @s inventory.2 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.3 * unless items entity @s inventory.3 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.3 * unless items entity @s inventory.3 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:12b}]
execute if items entity @s inventory.3 * unless items entity @s inventory.3 #endgame_expanded:keep_on_death run item replace entity @s inventory.3 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.4 * unless items entity @s inventory.4 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.4 * unless items entity @s inventory.4 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:13b}]
execute if items entity @s inventory.4 * unless items entity @s inventory.4 #endgame_expanded:keep_on_death run item replace entity @s inventory.4 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.5 * unless items entity @s inventory.5 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.5 * unless items entity @s inventory.5 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:14b}]
execute if items entity @s inventory.5 * unless items entity @s inventory.5 #endgame_expanded:keep_on_death run item replace entity @s inventory.5 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.6 * unless items entity @s inventory.6 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.6 * unless items entity @s inventory.6 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:15b}]
execute if items entity @s inventory.6 * unless items entity @s inventory.6 #endgame_expanded:keep_on_death run item replace entity @s inventory.6 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.7 * unless items entity @s inventory.7 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.7 * unless items entity @s inventory.7 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:16b}]
execute if items entity @s inventory.7 * unless items entity @s inventory.7 #endgame_expanded:keep_on_death run item replace entity @s inventory.7 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.8 * unless items entity @s inventory.8 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.8 * unless items entity @s inventory.8 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:17b}]
execute if items entity @s inventory.8 * unless items entity @s inventory.8 #endgame_expanded:keep_on_death run item replace entity @s inventory.8 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.9 * unless items entity @s inventory.9 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.9 * unless items entity @s inventory.9 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:18b}]
execute if items entity @s inventory.9 * unless items entity @s inventory.9 #endgame_expanded:keep_on_death run item replace entity @s inventory.9 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.10 * unless items entity @s inventory.10 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.10 * unless items entity @s inventory.10 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:19b}]
execute if items entity @s inventory.10 * unless items entity @s inventory.10 #endgame_expanded:keep_on_death run item replace entity @s inventory.10 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.11 * unless items entity @s inventory.11 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.11 * unless items entity @s inventory.11 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:20b}]
execute if items entity @s inventory.11 * unless items entity @s inventory.11 #endgame_expanded:keep_on_death run item replace entity @s inventory.11 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.12 * unless items entity @s inventory.12 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.12 * unless items entity @s inventory.12 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:21b}]
execute if items entity @s inventory.12 * unless items entity @s inventory.12 #endgame_expanded:keep_on_death run item replace entity @s inventory.12 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.13 * unless items entity @s inventory.13 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.13 * unless items entity @s inventory.13 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:22b}]
execute if items entity @s inventory.13 * unless items entity @s inventory.13 #endgame_expanded:keep_on_death run item replace entity @s inventory.13 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.14 * unless items entity @s inventory.14 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.14 * unless items entity @s inventory.14 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:23b}]
execute if items entity @s inventory.14 * unless items entity @s inventory.14 #endgame_expanded:keep_on_death run item replace entity @s inventory.14 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.15 * unless items entity @s inventory.15 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.15 * unless items entity @s inventory.15 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:24b}]
execute if items entity @s inventory.15 * unless items entity @s inventory.15 #endgame_expanded:keep_on_death run item replace entity @s inventory.15 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.16 * unless items entity @s inventory.16 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.16 * unless items entity @s inventory.16 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:25b}]
execute if items entity @s inventory.16 * unless items entity @s inventory.16 #endgame_expanded:keep_on_death run item replace entity @s inventory.16 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.17 * unless items entity @s inventory.17 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.17 * unless items entity @s inventory.17 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:26b}]
execute if items entity @s inventory.17 * unless items entity @s inventory.17 #endgame_expanded:keep_on_death run item replace entity @s inventory.17 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.18 * unless items entity @s inventory.18 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.18 * unless items entity @s inventory.18 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:27b}]
execute if items entity @s inventory.18 * unless items entity @s inventory.18 #endgame_expanded:keep_on_death run item replace entity @s inventory.18 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.19 * unless items entity @s inventory.19 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.19 * unless items entity @s inventory.19 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:28b}]
execute if items entity @s inventory.19 * unless items entity @s inventory.19 #endgame_expanded:keep_on_death run item replace entity @s inventory.19 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.20 * unless items entity @s inventory.20 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.20 * unless items entity @s inventory.20 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:29b}]
execute if items entity @s inventory.20 * unless items entity @s inventory.20 #endgame_expanded:keep_on_death run item replace entity @s inventory.20 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.21 * unless items entity @s inventory.21 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.21 * unless items entity @s inventory.21 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:30b}]
execute if items entity @s inventory.21 * unless items entity @s inventory.21 #endgame_expanded:keep_on_death run item replace entity @s inventory.21 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.22 * unless items entity @s inventory.22 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.22 * unless items entity @s inventory.22 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:31b}]
execute if items entity @s inventory.22 * unless items entity @s inventory.22 #endgame_expanded:keep_on_death run item replace entity @s inventory.22 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.23 * unless items entity @s inventory.23 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.23 * unless items entity @s inventory.23 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:32b}]
execute if items entity @s inventory.23 * unless items entity @s inventory.23 #endgame_expanded:keep_on_death run item replace entity @s inventory.23 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.24 * unless items entity @s inventory.24 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.24 * unless items entity @s inventory.24 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:33b}]
execute if items entity @s inventory.24 * unless items entity @s inventory.24 #endgame_expanded:keep_on_death run item replace entity @s inventory.24 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.25 * unless items entity @s inventory.25 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.25 * unless items entity @s inventory.25 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:34b}]
execute if items entity @s inventory.25 * unless items entity @s inventory.25 #endgame_expanded:keep_on_death run item replace entity @s inventory.25 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s inventory.26 * unless items entity @s inventory.26 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s inventory.26 * unless items entity @s inventory.26 #endgame_expanded:keep_on_death run data modify entity @n[type=item,tag=endgame_expanded.death_check_item] Item set from entity @s Inventory[{Slot:35b}]
execute if items entity @s inventory.26 * unless items entity @s inventory.26 #endgame_expanded:keep_on_death run item replace entity @s inventory.26 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s weapon.offhand
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand #endgame_expanded:keep_on_death run item replace entity @s weapon.offhand with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s player.cursor * unless items entity @s player.cursor #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s player.cursor * unless items entity @s player.cursor #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s player.cursor
execute if items entity @s player.cursor * unless items entity @s player.cursor #endgame_expanded:keep_on_death run item replace entity @s player.cursor with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s player.crafting.0 * unless items entity @s player.crafting.0 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s player.crafting.0 * unless items entity @s player.crafting.0 #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s player.crafting.0
execute if items entity @s player.crafting.0 * unless items entity @s player.crafting.0 #endgame_expanded:keep_on_death run item replace entity @s player.crafting.0 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s player.crafting.1 * unless items entity @s player.crafting.1 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s player.crafting.1 * unless items entity @s player.crafting.1 #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s player.crafting.1
execute if items entity @s player.crafting.1 * unless items entity @s player.crafting.1 #endgame_expanded:keep_on_death run item replace entity @s player.crafting.1 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s player.crafting.2 * unless items entity @s player.crafting.2 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s player.crafting.2 * unless items entity @s player.crafting.2 #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s player.crafting.2
execute if items entity @s player.crafting.2 * unless items entity @s player.crafting.2 #endgame_expanded:keep_on_death run item replace entity @s player.crafting.2 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item
execute if items entity @s player.crafting.3 * unless items entity @s player.crafting.3 #endgame_expanded:keep_on_death run summon item ~ ~ ~ {Tags:["endgame_expanded.death_check_item"],PickupDelay:10,Item:{id:"stick"},Invulnerable:1b,NoGravity:1b,Age:-32768}
execute if items entity @s player.crafting.3 * unless items entity @s player.crafting.3 #endgame_expanded:keep_on_death run item replace entity @n[type=item,tag=endgame_expanded.death_check_item] contents from entity @s player.crafting.3
execute if items entity @s player.crafting.3 * unless items entity @s player.crafting.3 #endgame_expanded:keep_on_death run item replace entity @s player.crafting.3 with air
tag @e[type=item,tag=endgame_expanded.death_check_item] remove endgame_expanded.death_check_item

tag @s remove endgame_expanded.death_check
