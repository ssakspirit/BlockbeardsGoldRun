## 체크포인트 4 도달 (플레이어별)
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 4: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 5
tag @s add reached_cp4
effect @s night_vision 20 5 true
spawnpoint @s 133 79 -83
schedule on_area_loaded add 53 68 -63 53 68 -63 schedules/loadcp5
