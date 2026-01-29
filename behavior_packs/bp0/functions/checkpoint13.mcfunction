## 체크포인트 13 - 결승선 (플레이어별 완주)
event entity @e[type=cleverlike:checkpoint] e_remove
execute @s ~~~ playsound race_finish @s ~~~ 2.0

## 완주 순서 기록
scoreboard players add @e[tag=main] finishcount 1
scoreboard players operation @s finishorder = @e[tag=main] finishcount

## 완주 태그 추가 (더 이상 시간 측정 안함)
tag @s add reached_cp13
tag @s remove racing

## 완주 순서에 따른 발표
execute @s[scores={finishorder=1}] ~~~ tellraw @a {"rawtext":[{"text":"§6§l[1위] "},{"selector":"@s"},{"text":" §e완주! §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}
execute @s[scores={finishorder=2}] ~~~ tellraw @a {"rawtext":[{"text":"§7§l[2위] "},{"selector":"@s"},{"text":" §e완주! §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}
execute @s[scores={finishorder=3}] ~~~ tellraw @a {"rawtext":[{"text":"§c§l[3위] "},{"selector":"@s"},{"text":" §e완주! §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}
execute @s[scores={finishorder=4..}] ~~~ tellraw @a {"rawtext":[{"text":"§8["},{"score":{"name":"@s","objective":"finishorder"}},{"text":"위] "},{"selector":"@s"},{"text":" §e완주! §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

## 1위 완주자 특별 효과
execute @s[scores={finishorder=1}] ~~~ titleraw @a title {"rawtext":[{"selector":"@s"},{"text":" §6§l우승!"}]}
execute @s[scores={finishorder=1}] ~~~ titleraw @a subtitle {"rawtext":[{"text":"§e기록: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}
execute @s[scores={finishorder=1}] ~~~ structure load launcher 209 82 214

## 2위 이하 완주자 효과
execute @s[scores={finishorder=2..}] ~~~ titleraw @s title {"rawtext":[{"text":"§a완주!"}]}
execute @s[scores={finishorder=2..}] ~~~ titleraw @s subtitle {"rawtext":[{"score":{"name":"@s","objective":"finishorder"}},{"text":"위 - 기록: "},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

## 완주자 축하 이벤트
event entity @s minecraft:gain_bad_omen
