execute as @e[tag=survival_chest_indicator,limit=1,sort=random,tag=!legendary] at @s run setblock ~ ~ ~ chest{LootTable:"survival:chests/legendary"} replace
execute as @e[tag=survival_chest_indicator,tag=!legendary] at @s if block ~ ~ ~ chest{LootTable:"survival:chests/legendary"} run tag @s add legendary