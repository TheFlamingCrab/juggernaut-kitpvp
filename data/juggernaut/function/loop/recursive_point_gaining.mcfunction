# All runners gain points for replenishing stations (1/sec)
execute as @e[tag=replenishment.station] at @s if entity @e[type=armor_stand,tag=juggernaut_manager,scores={game_state=1}] unless entity @e[type=armor_stand,tag=banishment_glyph,distance=..32] as @a[tag=runner,distance=0..3] at @s run scoreboard players add @s points 1

execute as @a[tag=runner,scores={damage_absorbed=1..}] run scoreboard players operation @s points += @s damage_absorbed
execute as @a[tag=runner,scores={damage_absorbed=1..}] run scoreboard players set @s damage_absorbed 0

# Juggernaut gains points for being close to the runners (4/sec)
execute as @a[tag=juggernaut] if entity @a[tag=runner,distance=..10] run scoreboard players add @s points 4

# Classic Juggernaut gains points for one-shotting runners. (No other kits can deal over 20 damage this way.)
execute as @a[tag=juggernaut,scores={damage_dealt=20..}] run scoreboard players add @s points 50
execute as @a[tag=juggernaut,scores={damage_dealt=20..}] run scoreboard players set @s damage_dealt 0

# Warlock gains points for having their towers on cooldown (up to 9/sec)
execute as @a[tag=warlock] if score @s malevolent_aura_cooldown > #0 var run scoreboard players add @s points 3
execute as @a[tag=warlock] if score @s banishment_glyph_cooldown > #0 var run scoreboard players add @s points 3
execute as @a[tag=warlock] if score @s withering_surge_cooldown > #0 var run scoreboard players add @s points 3

# Hunter gains points for having a player marked. (4/sec)
execute as @a[tag=hunter] if entity @a[tag=has_hunters_mark] run scoreboard players add @s points 4

# Witchdoctor gains points for being close to replenishment stations. (15/sec)
execute as @a[tag=witchdoctor] at @s if entity @e[tag=replenishment.station,distance=..6] run scoreboard players add @s points 15

# Scout gains points for making the juggernaut glow (via raycast) (2/sec)
execute as @a[tag=scout] if entity @a[tag=juggernaut,tag=is_glowing] run scoreboard players add @s points 2

# Escapist gains points for being close to the juggernaut (10/sec)
execute as @a[tag=escapist] at @s if entity @a[tag=juggernaut,distance=..10] run scoreboard players add @s points 10

# Engineer gains points for having their towers on cooldown (up to 2/sec)
execute as @a[tag=engineer] if score @s replenishment_tower_cooldown > #0 var run scoreboard players add @s points 1
execute as @a[tag=engineer] if score @s revealing_tower_cooldown > #0 var run scoreboard players add @s points 1

# Medic gains points for healing other players.
execute as @a[tag=!medic,scores={health=1..19}] if entity @a[tag=medic] run scoreboard players add @a[tag=medic] points 1

# Survivor gains points for being close to the juggernaut (15/sec)
execute as @a[tag=survivor] if entity @a[tag=juggernaut,distance=..10] run scoreboard players add @s points 15