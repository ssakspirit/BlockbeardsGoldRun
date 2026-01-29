## 체크포인트 12 도달 (플레이어별)
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 12: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 13
spawnpoint @s 180 73 -84
effect @s clear
schedule on_area_loaded add 208 67 167 208 67 167 schedules/loadcp13
tag @s add reached_cp12
