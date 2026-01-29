## 체크포인트 3 도달 (플레이어별)
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 3: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 4
spawnpoint @s 76 172 -49
schedule on_area_loaded add 133 79 -83 133 79 -83 schedules/loadcp4
tag @s add reached_cp3
