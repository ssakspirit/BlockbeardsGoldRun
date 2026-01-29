event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players operation min_tens cp3 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp3 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp3 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp3 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp3 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp3 = @e[tag=main] tick_ms_ones
tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 2: §f" }, {"score":{"name":"min_tens","objective":"cp2"}},{"score":{"name":"min_ones","objective":"cp2"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp2"}},{"score":{"name":"sec_ones","objective":"cp2"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp2"}},{"score":{"name":"ms_ones","objective":"cp2"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 3: §f" }, {"score":{"name":"min_tens","objective":"cp3"}},{"score":{"name":"min_ones","objective":"cp3"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp3"}},{"score":{"name":"sec_ones","objective":"cp3"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp3"}},{"score":{"name":"ms_ones","objective":"cp3"}}]}
scoreboard players set @e[tag=main] checkpoint 4
spawnpoint @a 76 172 -49
schedule on_area_loaded add 133 79 -83 133 79 -83 schedules/loadcp4
tag @a add reached_cp3
