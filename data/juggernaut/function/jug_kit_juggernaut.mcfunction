execute as @s[tag=!has_jug_kit] run item replace entity @s armor.head with netherite_helmet
execute as @s[tag=!has_jug_kit] run item replace entity @s armor.chest with netherite_chestplate
execute as @s[tag=!has_jug_kit] run item replace entity @s armor.legs with netherite_leggings
execute as @s[tag=!has_jug_kit] run item replace entity @s armor.feet with netherite_boots
execute as @s[tag=!has_jug_kit] run give @s netherite_axe[item_name='{"text": "Dooming Axe","color": "dark_purple"}',lore=['{"text": "Most lovingly called by its owners as the following:","color": "dark_gray"}','{"text": "Non-Vehicular \'Manslaughter\'","color": "dark_gray"}','{"text": "WidowMaker","color": "dark_gray"}','{"text": "Scourge of Utter Doom","color": "dark_gray"}','{"text": "Executioner of the Might of Lord Duke Hotenow XII","color": "dark_gray"}','{"text": "Taker of Names","color": "dark_gray"}','{"text": "Hades\' Employee of the Month #203","color": "dark_gray"}','{"text": "Stealer of Lives","color": "dark_gray"}','{"text": "Murderer of Cows, (Pea-)Fowls, and All Manner of Cowls (not fashionable!)","color": "dark_gray"}'],attribute_modifiers={modifiers:[{type:"generic.attack_damage",id:"generic.attack_damage",amount:14,operation:"add_value"},{type:"generic.attack_speed",id:"generic.attack_speed",amount:-3.5,operation:"add_value"}]}]
execute as @s[tag=!has_jug_kit] run give @s golden_apple 2
execute as @s[tag=!has_jug_kit] run give @s cooked_beef 64
execute as @s[tag=!has_jug_kit] run effect give @s strength infinite 0 true
tag @s add has_jug_kit