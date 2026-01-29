## 플레이어별 액션바 표시

## 레이싱 중인 플레이어 - 개인 시간 표시
execute @a[tag=racing] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§e시간: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}},{"text":" §7| CP: "},{"score":{"name":"@s","objective":"checkpoint"}},{"text":"/13"}]}

## 완주한 플레이어 - 최종 기록과 순위 표시
execute @a[tag=reached_cp13,scores={finishorder=1}] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§6§l1위! §e최종 기록: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

execute @a[tag=reached_cp13,scores={finishorder=2..}] ~~~ titleraw @s actionbar {"rawtext":[{"score":{"name":"@s","objective":"finishorder"}},{"text":"위 §e최종 기록: §f"},{"score":{"name":"@s","objective":"tick_min_tens"}},{"score":{"name":"@s","objective":"tick_min_ones"}},{"text":":"},{"score":{"name":"@s","objective":"tick_sec_tens"}},{"score":{"name":"@s","objective":"tick_sec_ones"}},{"text":"."},{"score":{"name":"@s","objective":"tick_ms_tens"}},{"score":{"name":"@s","objective":"tick_ms_ones"}}]}

## 크리에이티브 모드 체크
execute @a[scores={creative=1..}] ~~~ tag @s add creative
