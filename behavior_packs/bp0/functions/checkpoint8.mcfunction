## 체크포인트 8 도달 (플레이어별)
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 8: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 9
tag @s add reached_cp8
effect @s night_vision 10 5
spawnpoint @s -140 64 47
schedule on_area_loaded add -74 39 34 -74 39 34 schedules/loadcp9
