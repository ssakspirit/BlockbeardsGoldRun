
event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players operation min_tens cp8 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp8 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp8 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp8 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp8 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp8 = @e[tag=main] tick_ms_ones
tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 2: §f" }, {"score":{"name":"min_tens","objective":"cp2"}},{"score":{"name":"min_ones","objective":"cp2"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp2"}},{"score":{"name":"sec_ones","objective":"cp2"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp2"}},{"score":{"name":"ms_ones","objective":"cp2"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 3: §f" }, {"score":{"name":"min_tens","objective":"cp3"}},{"score":{"name":"min_ones","objective":"cp3"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp3"}},{"score":{"name":"sec_ones","objective":"cp3"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp3"}},{"score":{"name":"ms_ones","objective":"cp3"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 4: §f" }, {"score":{"name":"min_tens","objective":"cp4"}},{"score":{"name":"min_ones","objective":"cp4"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp4"}},{"score":{"name":"sec_ones","objective":"cp4"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp4"}},{"score":{"name":"ms_ones","objective":"cp4"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 5: §f" }, {"score":{"name":"min_tens","objective":"cp5"}},{"score":{"name":"min_ones","objective":"cp5"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp5"}},{"score":{"name":"sec_ones","objective":"cp5"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp5"}},{"score":{"name":"ms_ones","objective":"cp5"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 6: §f" }, {"score":{"name":"min_tens","objective":"cp6"}},{"score":{"name":"min_ones","objective":"cp6"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp6"}},{"score":{"name":"sec_ones","objective":"cp6"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp6"}},{"score":{"name":"ms_ones","objective":"cp6"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 7: §f" }, {"score":{"name":"min_tens","objective":"cp7"}},{"score":{"name":"min_ones","objective":"cp7"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp7"}},{"score":{"name":"sec_ones","objective":"cp7"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp7"}},{"score":{"name":"ms_ones","objective":"cp7"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 8: §f" }, {"score":{"name":"min_tens","objective":"cp8"}},{"score":{"name":"min_ones","objective":"cp8"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp8"}},{"score":{"name":"sec_ones","objective":"cp8"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp8"}},{"score":{"name":"ms_ones","objective":"cp8"}}]}

scoreboard players set @e[tag=main] checkpoint 9
tag @a add reached_cp8
effect @a[tag=reached_cp8] night_vision 10 5
spawnpoint @a -140 64 47
schedule on_area_loaded add -74 39 34 -74 39 34 schedules/loadcp9
