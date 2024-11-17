execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:danger_pottery_sherd",Slot:9b}]}] run tag @s add using_sentinel
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:danger_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:heart_pottery_sherd",Slot:9b}]}] run tag @s add using_self_preservation
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:heart_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:heartbreak_pottery_sherd",Slot:9b}]}] run tag @s add using_fractured_aid
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:heartbreak_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:scrape_pottery_sherd",Slot:9b}]}] run tag @s add using_blood_pact
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:scrape_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:burn_pottery_sherd",Slot:9b}]}] run tag @s add using_flame_ward
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:burn_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:flow_pottery_sherd",Slot:9b}]}] run tag @s add using_quickened_stealth
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:flow_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:brewer_pottery_sherd",Slot:9b}]}] run give @s splash_potion[potion_contents={potion:"strong_healing"},max_stack_size=8] 8
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:brewer_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:skull_pottery_sherd",Slot:9b}]}] run tag @s add using_undying_ties
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:skull_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:prize_pottery_sherd",Slot:9b}]}] run tag @s add using_unwavering_strength
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:prize_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:friend_pottery_sherd",Slot:9b}]}] run tag @s add using_shared_resolve
execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:friend_pottery_sherd",Slot:9b}]}] run clear @s #minecraft:decorated_pot_sherds