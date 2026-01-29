## 체크포인트 1 도달 (플레이어별)
## 해당 플레이어의 시간 기록
tellraw @a {"rawtext":[{"selector":"@s"},{"text":" §eCP 1: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_checkpoint @s ~~~ 2.0
scoreboard players set @s checkpoint 2
spawnpoint @s 22 98 -79
schedule on_area_loaded add 145 120 -25 145 120 -25 schedules/loadcp2
tag @s add reached_cp1
