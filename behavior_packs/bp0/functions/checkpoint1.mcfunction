scoreboard players operation min_tens cp1 = @e[tag=main] tick_min_tens 
scoreboard players operation min_ones cp1 = @e[tag=main] tick_min_ones
scoreboard players operation sec_tens cp1 = @e[tag=main] tick_sec_tens 
scoreboard players operation sec_ones cp1 = @e[tag=main] tick_sec_ones
scoreboard players operation ms_tens cp1 = @e[tag=main] tick_ms_tens 
scoreboard players operation ms_ones cp1 = @e[tag=main] tick_ms_ones
 tellraw @a { "rawtext": [ { "text": "§eCP 1: §f" }, {"score":{"name":"min_tens","objective":"cp1"}},{"score":{"name":"min_ones","objective":"cp1"}},{ "text": ":"},{"score":{"name":"sec_tens","objective":"cp1"}},{"score":{"name":"sec_ones","objective":"cp1"}},{ "text": "."},{"score":{"name":"ms_tens","objective":"cp1"}},{"score":{"name":"ms_ones","objective":"cp1"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @a ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @e[tag=main] checkpoint 2
spawnpoint @a 22 98 -79
schedule on_area_loaded add 145 120 -25 145 120 -25 schedules/loadcp2
tag @a add reached_cp1