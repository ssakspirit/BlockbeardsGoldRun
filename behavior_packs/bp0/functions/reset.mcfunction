## 멀티플레이어 레이스 리셋
## NPC 스코어 초기화
scoreboard players set @e[tag=main] checkpoint 0
scoreboard players set @e[tag=main] finishcount 0
scoreboard players set @e[tag=main] countdown 0
tag @e[tag=main] remove counting
scoreboard players set @e[tag=main] tick_ms_ones 0
scoreboard players set @e[tag=main] tick_ms_tens 0
scoreboard players set @e[tag=main] tick_sec_ones 0
scoreboard players set @e[tag=main] tick_sec_tens 0
scoreboard players set @e[tag=main] tick_min_ones 0
scoreboard players set @e[tag=main] tick_min_tens 0
scoreboard players set @e[tag=main] totaltime 0

## 참가자 스코어 초기화 (호스트 제외)
scoreboard players set @a[tag=!host] checkpoint 0
scoreboard players set @a[tag=!host] totaltime 0
scoreboard players set @a[tag=!host] finishorder 0
scoreboard players set @a[tag=!host] rank 0
scoreboard players set @a[tag=!host] tick_ms_ones 0
scoreboard players set @a[tag=!host] tick_ms_tens 0
scoreboard players set @a[tag=!host] tick_sec_ones 0
scoreboard players set @a[tag=!host] tick_sec_tens 0
scoreboard players set @a[tag=!host] tick_min_ones 0
scoreboard players set @a[tag=!host] tick_min_tens 0
scoreboard players set @a[tag=!host] cp1 0
scoreboard players set @a[tag=!host] cp2 0
scoreboard players set @a[tag=!host] cp3 0
scoreboard players set @a[tag=!host] cp4 0
scoreboard players set @a[tag=!host] cp5 0
scoreboard players set @a[tag=!host] cp6 0
scoreboard players set @a[tag=!host] cp7 0
scoreboard players set @a[tag=!host] cp8 0
scoreboard players set @a[tag=!host] cp9 0
scoreboard players set @a[tag=!host] cp10 0
scoreboard players set @a[tag=!host] cp11 0
scoreboard players set @a[tag=!host] cp12 0
scoreboard players set @a[tag=!host] cp13 0

## 참가자 상태 초기화 (호스트 제외)
clear @a[tag=!host]
effect @a[tag=!host] clear
function remove_tags
tag @a[tag=!host] remove racing
gamemode a @a[tag=!host]

## 호스트는 크리에이티브 유지
gamemode c @a[tag=host]

## 게임 규칙
gamerule showcoordinates false
gamerule sendcommandfeedback false
gamerule commandblockoutput false

## 효과 부여 (참가자만)
effect @a[tag=!host] instant_health 1 10 true
effect @a[tag=!host] saturation 1 50 true

## 대화 리셋
dialogue change @e[tag=main] before_race @a
tag @a remove equipped

## 참가자만 시작 위치로 이동
tp @a[tag=!host] -49 87 30 facing @e[tag=main]

## 장애물 제거
kill @e[type=cow]

## 장벽 복구
fill -40 87 43 -40 90 25 barrier 0 replace air
fill -57 87 44 -57 90 25 barrier 0 replace air
fill -56 90 21 -42 87 21 barrier 0 replace air

## 리셋 메시지
tellraw @a[tag=!host] {"rawtext":[{"text":"§a레이스가 리셋되었습니다. 호스트가 시작할 때까지 대기하세요!"}]}
tellraw @a[tag=host] {"rawtext":[{"text":"§6[호스트] §a레이스가 리셋되었습니다. /function hoststart 로 새 게임을 시작하세요!"}]}
