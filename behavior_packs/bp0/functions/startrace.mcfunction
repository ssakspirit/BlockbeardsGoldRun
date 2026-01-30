## 멀티플레이어 레이스 시작 - 카운트다운 시작
fill -56 87 21 -42 90 21 air

## 모든 플레이어에게 아이템 지급
execute @a ~~~ function give_supplies

## 대화 변경
dialogue change @e[tag=main] during_race @a

## 효과 부여
effect @a instant_health 1 10 true
effect @a saturation 1 50 true

## 완주 카운터 초기화
scoreboard players set @e[tag=main] finishcount 0

## 플레이어 타이밍 초기화
scoreboard players set @a tick_ms_ones 0
scoreboard players set @a tick_ms_tens 0
scoreboard players set @a tick_sec_ones 0
scoreboard players set @a tick_sec_tens 0
scoreboard players set @a tick_min_ones 0
scoreboard players set @a tick_min_tens 0
scoreboard players set @a totaltime 0
scoreboard players set @a finishorder 0
scoreboard players set @a rank 0

## 바로 레이스 시작 (카운트다운 제거)
function countdown_go
