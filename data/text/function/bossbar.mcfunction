execute if score #game_state var matches 0 run bossbar set lobby players @a[tag=lobby.player,tag=!autorespawn]
execute if score #game_state var matches 0..99 run bossbar set spectator players @a[tag=spectator]
execute if score #game_state var matches 10..19 run bossbar set runner players @a[tag=runner]
execute if score #game_state var matches 10..19 run bossbar set juggernaut players @a[tag=juggernaut,tag=!warlock]
execute if score #game_state var matches 30..39 run bossbar set king_of_the_hill_timer players @a[scores={lives_remaining=1..}]