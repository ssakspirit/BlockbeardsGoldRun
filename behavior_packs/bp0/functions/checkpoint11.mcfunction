## 체크포인트 11 도달 (플레이어별)
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 11: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 12
spawnpoint @s 96 49 -114
schedule on_area_loaded add 180 73 -84 180 73 -84 schedules/loadcp12
tag @s add reached_cp11
