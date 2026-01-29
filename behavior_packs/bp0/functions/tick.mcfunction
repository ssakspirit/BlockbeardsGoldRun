function actionbars

## === 카운트다운 시스템 ===
## 카운트다운 진행 중이면 감소
scoreboard players remove @e[tag=counting] countdown 1

## 카운트다운 숫자 표시 (20틱 = 1초)
execute @e[tag=counting,scores={countdown=60}] ~~~ function countdown3
execute @e[tag=counting,scores={countdown=40}] ~~~ function countdown2
execute @e[tag=counting,scores={countdown=20}] ~~~ function countdown1
execute @e[tag=counting,scores={countdown=0}] ~~~ function countdown_go
execute @e[tag=counting,scores={countdown=0}] ~~~ tag @s remove counting

## Auto-setup when first player joins (runs once per world)
## Only run setup if main NPC doesn't exist yet
## Sync dialogue for new players joining mid-game
execute @e[tag=main,c=1,scores={checkpoint=0}] ~~~ dialogue change @s before_race @a[tag=!world_setup]
execute @e[tag=main,c=1] ~~~ tag @a[tag=!world_setup] add world_setup
execute @a[tag=!world_setup,c=1] ~~~ function setup_all
tag @a[tag=!world_setup] add world_setup

## 글로벌 틱 카운터 (NPC 기준)
execute @e[tag=main] ~~~ scoreboard players add @s tick_clock 1
execute @e[tag=main,scores={tick_clock=20}] ~~~ scoreboard players set @s tick_clock 0

## 크리에이티브 모드 체크
execute @e[tag=main,scores={tick_clock=19}] ~~~ execute @a[tag=!bypass,m=creative] ~~~ scoreboard players add @s creative 1
execute @e[tag=main,scores={tick_clock=19}] ~~~ execute @a[tag=!bypass,m=creative] ~~~ gamemode a @s

## === 플레이어별 타이밍 시스템 ===
## 레이싱 중인 플레이어만 시간 추가
scoreboard players add @a[tag=racing,tag=!reached_cp13] tick_ms_ones 5
scoreboard players add @a[tag=racing,tag=!reached_cp13] totaltime 5

## 밀리초 -> 초 변환
execute @a[scores={tick_ms_ones=10..}] ~~~ scoreboard players add @s tick_ms_tens 1
execute @a[scores={tick_ms_ones=10..}] ~~~ scoreboard players set @s tick_ms_ones 0
execute @a[scores={tick_ms_tens=10..}] ~~~ scoreboard players add @s tick_sec_ones 1
execute @a[scores={tick_ms_tens=10..}] ~~~ scoreboard players set @s tick_ms_tens 0
execute @a[scores={tick_sec_ones=10..}] ~~~ scoreboard players add @s tick_sec_tens 1
execute @a[scores={tick_sec_ones=10..}] ~~~ scoreboard players set @s tick_sec_ones 0
execute @a[scores={tick_sec_tens=6..}] ~~~ scoreboard players add @s tick_min_ones 1
execute @a[scores={tick_sec_tens=6..}] ~~~ scoreboard players set @s tick_sec_tens 0
execute @a[scores={tick_min_ones=10..}] ~~~ scoreboard players add @s tick_min_tens 1
execute @a[scores={tick_min_ones=10..}] ~~~ scoreboard players set @s tick_min_ones 0

## NPC 글로벌 타이머도 유지 (레이스 진행 중일 때)
execute @e[tag=main,scores={checkpoint=1..14}] ~~~ scoreboard players add @s tick_ms 5
execute @e[scores={tick_ms=100}] ~~~ function ticksecond

## === 체크포인트 감지 (플레이어별) ===
execute @a[tag=racing,tag=!reached_cp1] ~~~ detect ~ 0 ~ concrete 0 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp1] ~~~ detect ~ 0 ~ concrete 0 function checkpoint1

execute @a[tag=racing,tag=reached_cp1,tag=!reached_cp2] ~~~ detect ~ 0 ~ concrete 1 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp2,tag=reached_cp1] ~~~ detect ~ 0 ~ concrete 1 function checkpoint2

execute @a[tag=racing,tag=reached_cp2,tag=!reached_cp3] ~~~ detect ~ 0 ~ concrete 2 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp3,tag=reached_cp2] ~~~ detect ~ 0 ~ concrete 2 function checkpoint3

execute @a[tag=racing,tag=reached_cp3,tag=!reached_cp4] ~~~ detect ~ 0 ~ concrete 3 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp4,tag=reached_cp3] ~~~ detect ~ 0 ~ concrete 3 function checkpoint4

execute @a[tag=racing,tag=reached_cp4,tag=!reached_cp5] ~~~ detect ~ 0 ~ concrete 4 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp5,tag=reached_cp4] ~~~ detect ~ 0 ~ concrete 4 function checkpoint5

execute @a[tag=racing,tag=reached_cp5,tag=!reached_cp6] ~~~ detect ~ 0 ~ concrete 5 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp6,tag=reached_cp5] ~~~ detect ~ 0 ~ concrete 5 function checkpoint6

execute @a[tag=racing,tag=reached_cp6,tag=!reached_cp7] ~~~ detect ~ 0 ~ concrete 6 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp7,tag=reached_cp6] ~~~ detect ~ 0 ~ concrete 6 function checkpoint7

execute @a[tag=racing,tag=reached_cp7,tag=!reached_cp8] ~~~ detect ~ 0 ~ concrete 7 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp8,tag=reached_cp7] ~~~ detect ~ 0 ~ concrete 7 function checkpoint8

execute @a[tag=racing,tag=reached_cp8,tag=!reached_cp9] ~~~ detect ~ 0 ~ concrete 8 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp9,tag=reached_cp8] ~~~ detect ~ 0 ~ concrete 8 function checkpoint9

execute @a[tag=racing,tag=reached_cp9,tag=!reached_cp10] ~~~ detect ~ 0 ~ concrete 9 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp10,tag=reached_cp9] ~~~ detect ~ 0 ~ concrete 9 function checkpoint10

execute @a[tag=racing,tag=reached_cp10,tag=!reached_cp11] ~~~ detect ~ 0 ~ concrete 10 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp11,tag=reached_cp10] ~~~ detect ~ 0 ~ concrete 10 function checkpoint11

execute @a[tag=racing,tag=reached_cp11,tag=!reached_cp12] ~~~ detect ~ 0 ~ concrete 11 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp12,tag=reached_cp11] ~~~ detect ~ 0 ~ concrete 11 function checkpoint12

execute @a[tag=racing,tag=reached_cp12,tag=!reached_cp13] ~~~ detect ~ 0 ~ concrete 12 tp @s ^ ^ ^0.5
execute @a[tag=racing,tag=!reached_cp13,tag=reached_cp12] ~~~ detect ~ 0 ~ concrete 12 function checkpoint13

## === 플레이어별 체크포인트 시간 기록 ===
scoreboard players add @a[tag=racing,scores={checkpoint=1},tag=!reached_cp2] cp1 5
scoreboard players add @a[tag=racing,scores={checkpoint=2},tag=!reached_cp3] cp2 5
scoreboard players add @a[tag=racing,scores={checkpoint=3},tag=!reached_cp4] cp3 5
scoreboard players add @a[tag=racing,scores={checkpoint=4},tag=!reached_cp5] cp4 5
scoreboard players add @a[tag=racing,scores={checkpoint=5},tag=!reached_cp6] cp5 5
scoreboard players add @a[tag=racing,scores={checkpoint=6},tag=!reached_cp7] cp6 5
scoreboard players add @a[tag=racing,scores={checkpoint=7},tag=!reached_cp8] cp7 5
scoreboard players add @a[tag=racing,scores={checkpoint=8},tag=!reached_cp9] cp8 5
scoreboard players add @a[tag=racing,scores={checkpoint=9},tag=!reached_cp10] cp9 5
scoreboard players add @a[tag=racing,scores={checkpoint=10},tag=!reached_cp11] cp10 5
scoreboard players add @a[tag=racing,scores={checkpoint=11},tag=!reached_cp12] cp11 5
scoreboard players add @a[tag=racing,scores={checkpoint=12},tag=!reached_cp13] cp12 5

## NPC 게임보드 (호환성 유지)
scoreboard players operation "Checkpoint 1" gameboard = @e[tag=main] cp1
scoreboard players operation "Checkpoint 2" gameboard = @e[tag=main] cp2
scoreboard players operation "Checkpoint 3" gameboard = @e[tag=main] cp3
scoreboard players operation "Checkpoint 4" gameboard = @e[tag=main] cp4
scoreboard players operation "Checkpoint 5" gameboard = @e[tag=main] cp5
scoreboard players operation "Checkpoint 6" gameboard = @e[tag=main] cp6
scoreboard players operation "Checkpoint 7" gameboard = @e[tag=main] cp7
scoreboard players operation "Checkpoint 8" gameboard = @e[tag=main] cp8
scoreboard players operation "Checkpoint 9" gameboard = @e[tag=main] cp9
scoreboard players operation "Checkpoint 10" gameboard = @e[tag=main] cp10
scoreboard players operation "Checkpoint 11" gameboard = @e[tag=main] cp11
scoreboard players operation "Checkpoint 12" gameboard = @e[tag=main] cp12
scoreboard players operation "Checkpoint 13" gameboard = @e[tag=main] cp13
scoreboard players operation "Total Time" gameboard = @e[tag=main] totaltime
scoreboard players set "Add Total" gameboard 0
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp1
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp2
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp3
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp4
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp5
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp6
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp7
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp8
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp9
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp10
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp11
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp12
scoreboard players operation "Add Total" gameboard += @e[tag=main] cp13

## 야간 투시 (어두운 구역)
execute @e[tag=main,scores={tick_clock=3}] ~~~ execute @a[tag=reached_cp4,tag=!reached_cp7] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_clock=8}] ~~~ execute @a[tag=reached_cp4,tag=!reached_cp7] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_clock=3}] ~~~ execute @a[tag=reached_cp8,tag=!reached_cp12] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_clock=8}] ~~~ execute @a[tag=reached_cp8,tag=!reached_cp12] ~~~ effect @s night_vision 20 5 true

execute @a[tag=p8] ~~~ setblock ~ 0 ~ concrete 7
execute @a[tag=erase] ~~~ fill ~-2 0 ~-2 ~2 0 ~2 bedrock 0 replace concrete 7

## 물속 구간 호흡
execute @a[tag=reached_cp9, tag=!reached_cp10] ~~~ detect ~ ~2 ~ wool 4 execute @s ~~~ detect ~ ~-1 ~ wool 4 effect @s water_breathing 2 4
execute @a[tag=reached_cp9, tag=!reached_cp10] ~~~ detect ~ ~1 ~ wool 4 execute @s ~~~ detect ~ ~-2 ~ wool 4 effect @s water_breathing 2 4

## 결승선 근처 환호
execute @e[tag=cp13] ~~~ execute @a[tag=reached_cp12,tag=!reached_cp13,r=20,rm=19] ~~~ playsound race_crowdcheer @s ~~~ 3.0
execute @a ~~~ execute @e[r=20,rm=19] ~~~ playanimation @s cheer

## === 순위 계산 (체크포인트 * 10000 - 시간) ===
## 높은 체크포인트 + 낮은 시간 = 높은 순위
scoreboard players operation @a[tag=racing] rank = @s checkpoint
scoreboard players operation @a[tag=racing] rank *= #1000 rank
scoreboard players operation @a[tag=racing] rank -= @s totaltime

## 완주한 플레이어는 완주 순서로 순위 표시
scoreboard players operation @a[tag=reached_cp13] rank = @s finishorder
