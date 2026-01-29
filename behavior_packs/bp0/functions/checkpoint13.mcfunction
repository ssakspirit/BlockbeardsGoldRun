event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_finish @s ~~~ 2.0
scoreboard players operation min_tens cp13 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp13 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp13 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp13 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp13 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp13 = @e[tag=main] tick_ms_ones
tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 2: §f" }, {"score":{"name":"min_tens","objective":"cp2"}},{"score":{"name":"min_ones","objective":"cp2"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp2"}},{"score":{"name":"sec_ones","objective":"cp2"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp2"}},{"score":{"name":"ms_ones","objective":"cp2"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 3: §f" }, {"score":{"name":"min_tens","objective":"cp3"}},{"score":{"name":"min_ones","objective":"cp3"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp3"}},{"score":{"name":"sec_ones","objective":"cp3"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp3"}},{"score":{"name":"ms_ones","objective":"cp3"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 4: §f" }, {"score":{"name":"min_tens","objective":"cp4"}},{"score":{"name":"min_ones","objective":"cp4"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp4"}},{"score":{"name":"sec_ones","objective":"cp4"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp4"}},{"score":{"name":"ms_ones","objective":"cp4"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 5: §f" }, {"score":{"name":"min_tens","objective":"cp5"}},{"score":{"name":"min_ones","objective":"cp5"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp5"}},{"score":{"name":"sec_ones","objective":"cp5"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp5"}},{"score":{"name":"ms_ones","objective":"cp5"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 6: §f" }, {"score":{"name":"min_tens","objective":"cp6"}},{"score":{"name":"min_ones","objective":"cp6"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp6"}},{"score":{"name":"sec_ones","objective":"cp6"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp6"}},{"score":{"name":"ms_ones","objective":"cp6"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 7: §f" }, {"score":{"name":"min_tens","objective":"cp7"}},{"score":{"name":"min_ones","objective":"cp7"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp7"}},{"score":{"name":"sec_ones","objective":"cp7"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp7"}},{"score":{"name":"ms_ones","objective":"cp7"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 8: §f" }, {"score":{"name":"min_tens","objective":"cp8"}},{"score":{"name":"min_ones","objective":"cp8"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp8"}},{"score":{"name":"sec_ones","objective":"cp8"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp8"}},{"score":{"name":"ms_ones","objective":"cp8"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 9: §f" }, {"score":{"name":"min_tens","objective":"cp9"}},{"score":{"name":"min_ones","objective":"cp9"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp9"}},{"score":{"name":"sec_ones","objective":"cp9"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp9"}},{"score":{"name":"ms_ones","objective":"cp9"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 10: §f" }, {"score":{"name":"min_tens","objective":"cp10"}},{"score":{"name":"min_ones","objective":"cp10"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp10"}},{"score":{"name":"sec_ones","objective":"cp10"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp10"}},{"score":{"name":"ms_ones","objective":"cp10"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 11: §f" }, {"score":{"name":"min_tens","objective":"cp11"}},{"score":{"name":"min_ones","objective":"cp11"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp11"}},{"score":{"name":"sec_ones","objective":"cp11"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp11"}},{"score":{"name":"ms_ones","objective":"cp11"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 12: §f" }, {"score":{"name":"min_tens","objective":"cp12"}},{"score":{"name":"min_ones","objective":"cp12"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp12"}},{"score":{"name":"sec_ones","objective":"cp12"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp12"}},{"score":{"name":"ms_ones","objective":"cp12"}}]}
tellraw @a { "rawtext": [ { "text": "§eCP 13: §f" }, {"score":{"name":"min_tens","objective":"cp13"}},{"score":{"name":"min_ones","objective":"cp13"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp13"}},{"score":{"name":"sec_ones","objective":"cp13"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp13"}},{"score":{"name":"ms_ones","objective":"cp13"}}]}

scoreboard players set @e[tag=main] checkpoint 0
tag @a add reached_cp13
tp @a @a[tag=finished]
tag @a[tag=finished] remove finished
titleraw @a title { "rawtext": [ { "text": "FINISHED!!!"} ] }

titleraw @a subtitle { "rawtext": [ { "text": "§eTime: §f" }, {"score":{"name":"min_tens","objective":"cp13"}},{"score":{"name":"min_ones","objective":"cp13"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp13"}},{"score":{"name":"sec_ones","objective":"cp13"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp13"}},{"score":{"name":"ms_ones","objective":"cp13"}}]}
event entity @a minecraft:gain_bad_omen

structure load launcher 209 82 214
