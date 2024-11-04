# Reset player stats
execute if score #king_of_the_hill_customisation infinite_lives matches 0 run scoreboard players operation @a lives = #king_of_the_hill_customisation lives_count
execute if score #king_of_the_hill_customisation infinite_lives matches 1 run scoreboard players set @a lives 9999
execute as @a run scoreboard players operation @s lives_remaining = @s lives
scoreboard players set @a game_deaths 0

# Turn off other games if they're running
scoreboard players set #game_state var 0

# Reset player attributes
scoreboard players set @a max_health 20
scoreboard players set @a health 20

# Reset player inventory
clear @a

# Reset player tags
tag @a remove lobby.player

# Reset player effects
effect clear @a

# Reset the crate count
scoreboard players set #max_crate_count var 6
scoreboard players set #crate_count var 0

scoreboard players set #king_of_the_hill_game_ending var 0
scoreboard players set @a king_of_the_hill_points 0

# Allow players to drop items
gamerule keepInventory false

# Set the game state to pregame - Possibly needed if game starting is later changed for some unforseen reason.
execute if score #king_of_the_hill_customisation teams_mode matches 0 run scoreboard players set #game_state var 30
execute if score #king_of_the_hill_customisation teams_mode matches 1 run scoreboard players set #game_state var 35

# Teleport players into the game
tp @a 0 101 0

# Reset the chests
function king_of_the_hill:reset_chests

# Reset end game timer.
scoreboard players set #end_game_timer var 10

# Set the worldborder
worldborder set 270

# Remove any leftover items
kill @e[type=item]

# Set the replenish chest timer to 120s - 2 mins
scoreboard players set #replenish_chest_timer var 120

# Set the replenish chest count to 0
scoreboard players set #times_replenished var 0

# Start the game
execute if score #king_of_the_hill_customisation teams_mode matches 0 run scoreboard players set #game_state var 31
execute if score #king_of_the_hill_customisation teams_mode matches 1 run scoreboard players set #game_state var 36
execute if score #king_of_the_hill_customisation teams_mode matches 1 run function king_of_the_hill:choose_teams

execute as @e[type=armor_stand,tag=replenishment.station,limit=1,sort=random] run tag @s add koth_hill

# Set the grace period to 40 seconds
scoreboard players set #grace_period var 40
