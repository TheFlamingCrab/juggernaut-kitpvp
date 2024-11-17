$execute if entity @a[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run scoreboard players add @p[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] healing_progress $(heal_amount)
$execute if entity @a[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run scoreboard players add @p[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] healing_progress $(heal_amount)
$execute if entity @a[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run particle cherry_leaves ~ ~0.5 ~ 0.15 1 0.15 0 10 force @a[tag=runner]
$execute if entity @a[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run particle cherry_leaves ~ ~0.5 ~ 0.15 1 0.15 0 10 force @a[tag=runner]
$execute if entity @a[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run tag @s add is_healing
$execute if entity @a[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run tag @s add is_healing
$execute as @p[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run tag @s add is_being_healed
$execute as @p[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run tag @s add is_being_healed

$execute if entity @a[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] as @p[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run title @s actionbar [{"text": "Healed: ","color": "#439697"},{"score": {"name": "@s","objective": "healing_percent"},"color": "#56dbde"},{"text": "%"}]
$execute if entity @a[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)] run title @s actionbar [{"text": "Healing: ","color": "#439697"},{"score": {"name": "@p[tag=runner,tag=!survivor,scores={sneak_time=1,health=..19},distance=..$(distance)]","objective": "healing_percent"},"color": "#56dbde"},{"text": "%"}]
$execute if entity @a[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] as @p[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run title @s actionbar [{"text": "Healed: ","color": "#439697"},{"score": {"name": "@s","objective": "healing_percent"},"color": "#56dbde"},{"text": "%"}]
$execute if entity @a[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)] run title @s actionbar [{"text": "Healing: ","color": "#439697"},{"score": {"name": "@p[tag=runner,tag=survivor,scores={sneak_time=1,health=..39},distance=..$(distance)]","objective": "healing_percent"},"color": "#56dbde"},{"text": "%"}]

$execute as @a[tag=runner,distance=..$(distance)] if score @s healing_progress >= @s healing_needed run effect give @s instant_health 1 252 true
$execute as @a[tag=runner,distance=..$(distance)] if score @s healing_progress >= @s healing_needed run scoreboard players set @s healing_progress 0