event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players operation min_tens cp2 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp2 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp2 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp2 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp2 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp2 = @e[tag=main] tick_ms_ones
tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 2: §f" }, {"score":{"name":"min_tens","objective":"cp2"}},{"score":{"name":"min_ones","objective":"cp2"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp2"}},{"score":{"name":"sec_ones","objective":"cp2"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp2"}},{"score":{"name":"ms_ones","objective":"cp2"}}]}
scoreboard players set @e[tag=main] checkpoint 3

spawnpoint @a 145 120 -25
schedule on_area_loaded add 76 172 -49 76 172 -49 schedules/loadcp3
tag @a add reached_cp2