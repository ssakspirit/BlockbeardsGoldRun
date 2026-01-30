## 호스트가 시작하는 멀티플레이어 레이스

## 참가자(호스트 제외) 확인
execute @a[tag=!host,c=1] ~~~ tellraw @a {"rawtext":[{"text":"§6[레이스] §e참가자 준비 완료!"}]}

## 참가자들에게 아이템 지급 (호스트 제외)
execute @a[tag=!host] ~~~ function give_supplies

## 효과 부여 (호스트 제외)
effect @a[tag=!host] instant_health 1 10 true
effect @a[tag=!host] saturation 1 50 true

## 완주 카운터 초기화
scoreboard players set @e[tag=main] finishcount 0

## 플레이어 타이밍 초기화 (호스트 제외)
scoreboard players set @a[tag=!host] tick_ms_ones 0
scoreboard players set @a[tag=!host] tick_ms_tens 0
scoreboard players set @a[tag=!host] tick_sec_ones 0
scoreboard players set @a[tag=!host] tick_sec_tens 0
scoreboard players set @a[tag=!host] tick_min_ones 0
scoreboard players set @a[tag=!host] tick_min_tens 0
scoreboard players set @a[tag=!host] totaltime 0
scoreboard players set @a[tag=!host] finishorder 0
scoreboard players set @a[tag=!host] rank 0
scoreboard players set @a[tag=!host] checkpoint 0

## 바로 레이스 시작 (카운트다운 제거)
function countdown_go
