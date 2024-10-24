clear @s
give @s minecraft:golden_sword[item_name='{"text":"Golden Blade","color":"dark_purple","italic":false}',lore=['{"text":"Used to be a stone sword.","color":"dark_gray"}'],enchantments={sharpness:2},unbreakable={},hide_additional_tooltip={}]
item replace entity @s hotbar.1 with minecraft:clock[item_name='{"text":"Amulet of Immortality","color":"dark_purple","italic":false}',lore=['{"text":"Drop to regenerate while stunned.","color":"dark_gray"}']] 2
give @s splash_potion[item_name='{"text":"Vial of Mercury","color":"dark_purple","italic":false}',lore=['{"text":"Inflict harm upon your enemies.","color":"dark_gray"}'],potion_contents={custom_color:10930638,custom_effects:[{Id:7,Amplifier:1,Ambient:false,ShowParticles:true,HiddenEffect:{Id:18,Amplifier:0,ShowIcon:false,ShowParticles:false,Duration:30},ShowIcon:true}]},hide_additional_tooltip={}]
give @s splash_potion[item_name='{"text":"Vial of Mercury","color":"dark_purple","italic":false}',lore=['{"text":"Careful with that stuff; it\'s toxic!","color":"dark_gray"}'],potion_contents={custom_color:10930638,custom_effects:[{Id:7,Amplifier:1,Ambient:false,ShowParticles:true,HiddenEffect:{Id:18,Amplifier:0,ShowIcon:false,ShowParticles:false,Duration:30},ShowIcon:true}]},hide_additional_tooltip={}]
give @s cooked_beef[item_name='{"text":"Steak","color":"dark_purple","italic":false}',lore=['{"text":"Eat to regenerate.","color":"dark_gray"}']] 16
item replace entity @s armor.head with leather_helmet[item_name='{"text":"Alchemist\'s Hat","color":"dark_purple","italic":false}',lore=['{"text":"Almost looks like gold.","color":"dark_gray"}'],dyed_color=16764175,unbreakable={},hide_additional_tooltip={}]
item replace entity @s armor.chest with golden_chestplate[item_name='{"text":"Shiny Chestplate","color":"dark_purple","italic":false}',lore=['{"text":"It\'s heavier than it looks!","color":"dark_gray"}'],unbreakable={},hide_additional_tooltip={}]
item replace entity @s armor.legs with leather_leggings[item_name='{"text":"Yellow Pants","color":"dark_purple","italic":false}',lore=['{"text":"To do: Turn these into gold.","color":"dark_gray"}'],dyed_color=16764175,unbreakable={},hide_additional_tooltip={}]
item replace entity @s armor.feet with leather_boots[item_name='{"text":"Uncomfortable Boots","color":"dark_purple","italic":false}',lore=['{"text":"At least they look cool.","color":"dark_gray"}'],dyed_color=16764175,unbreakable={},hide_additional_tooltip={}]