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

## 플레이어 스코어 초기화
scoreboard players set @a checkpoint 0
scoreboard players set @a totaltime 0
scoreboard players set @a finishorder 0
scoreboard players set @a rank 0
scoreboard players set @a tick_ms_ones 0
scoreboard players set @a tick_ms_tens 0
scoreboard players set @a tick_sec_ones 0
scoreboard players set @a tick_sec_tens 0
scoreboard players set @a tick_min_ones 0
scoreboard players set @a tick_min_tens 0
scoreboard players set @a cp1 0
scoreboard players set @a cp2 0
scoreboard players set @a cp3 0
scoreboard players set @a cp4 0
scoreboard players set @a cp5 0
scoreboard players set @a cp6 0
scoreboard players set @a cp7 0
scoreboard players set @a cp8 0
scoreboard players set @a cp9 0
scoreboard players set @a cp10 0
scoreboard players set @a cp11 0
scoreboard players set @a cp12 0
scoreboard players set @a cp13 0

## 플레이어 상태 초기화
clear @a
effect @a clear
function remove_tags
tag @a remove racing
gamemode a @a

## 게임 규칙
gamerule showcoordinates false
gamerule sendcommandfeedback false
gamerule commandblockoutput false

## 효과 부여
effect @a instant_health 1 10 true
effect @a saturation 1 50 true

## 대화 리셋
dialogue change @e[tag=main] before_race @a
tag @a remove equipped

## 시작 위치로 이동
tp @a -49 87 30 facing @e[tag=main]

## 장애물 제거
kill @e[type=cow]

## 장벽 복구
fill -40 87 43 -40 90 25 barrier 0 replace air
fill -57 87 44 -57 90 25 barrier 0 replace air
fill -56 90 21 -42 87 21 barrier 0 replace air

## 리셋 메시지
tellraw @a {"rawtext":[{"text":"§a레이스가 리셋되었습니다. NPC와 대화하여 새 게임을 시작하세요!"}]}
