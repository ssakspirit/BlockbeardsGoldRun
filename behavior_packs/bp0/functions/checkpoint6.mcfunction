event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players operation min_tens cp6 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp6 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp6 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp6 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp6 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp6 = @e[tag=main] tick_ms_ones
tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 2: §f" }, {"score":{"name":"min_tens","objective":"cp2"}},{"score":{"name":"min_ones","objective":"cp2"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp2"}},{"score":{"name":"sec_ones","objective":"cp2"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp2"}},{"score":{"name":"ms_ones","objective":"cp2"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 3: §f" }, {"score":{"name":"min_tens","objective":"cp3"}},{"score":{"name":"min_ones","objective":"cp3"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp3"}},{"score":{"name":"sec_ones","objective":"cp3"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp3"}},{"score":{"name":"ms_ones","objective":"cp3"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 4: §f" }, {"score":{"name":"min_tens","objective":"cp4"}},{"score":{"name":"min_ones","objective":"cp4"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp4"}},{"score":{"name":"sec_ones","objective":"cp4"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp4"}},{"score":{"name":"ms_ones","objective":"cp4"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 5: §f" }, {"score":{"name":"min_tens","objective":"cp5"}},{"score":{"name":"min_ones","objective":"cp5"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp5"}},{"score":{"name":"sec_ones","objective":"cp5"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp5"}},{"score":{"name":"ms_ones","objective":"cp5"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 6: §f" }, {"score":{"name":"min_tens","objective":"cp6"}},{"score":{"name":"min_ones","objective":"cp6"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp6"}},{"score":{"name":"sec_ones","objective":"cp6"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp6"}},{"score":{"name":"ms_ones","objective":"cp6"}}]}
scoreboard players set @e[tag=main] checkpoint 7
spawnpoint @a 52 61 -18
schedule on_area_loaded add 96 68 49 96 68 49 schedules/loadcp7
tag @a add reached_cp6