scoreboard objectives add checkpoint dummy checkpoint
scoreboard objectives add gameboard dummy "Scoreboard"
scoreboard objectives add tick_clock dummy tick_clock
scoreboard objectives add creative dummy
scoreboard objectives add tick_sec_ones dummy
scoreboard objectives add tick_sec_tens dummy

scoreboard objectives add tick_min_tens dummy
scoreboard objectives add tick_min_ones dummy

scoreboard objectives add tick_ms_tens dummy
scoreboard objectives add tick_ms_ones dummy

## 멀티플레이어용 스코어보드
scoreboard objectives add racing dummy racing
scoreboard objectives add finishorder dummy "완주 순서"
scoreboard objectives add rank dummy "순위"
scoreboard objectives add countdown dummy countdown
scoreboard objectives add finishcount dummy finishcount

## 플레이어별 타이밍 초기화
scoreboard players set @a tick_ms_tens 0
scoreboard players set @a tick_ms_ones 0
scoreboard players set @a tick_sec_tens 0
scoreboard players set @a tick_sec_ones 0
scoreboard players set @a tick_min_tens 0
scoreboard players set @a tick_min_ones 0
scoreboard players set @a racing 0
scoreboard players set @a finishorder 0
scoreboard players set @a rank 0

## NPC 타이밍 (글로벌 타이머용)
scoreboard players set @e[tag=main] tick_ms_tens 0
scoreboard players set @e[tag=main] tick_ms_ones 0
scoreboard players set @e[tag=main] tick_sec_tens 0
scoreboard players set @e[tag=main] tick_sec_ones 0
scoreboard players set @e[tag=main] tick_min_tens 0
scoreboard players set @e[tag=main] tick_min_ones 0
scoreboard players set @e[tag=main] finishcount 0

scoreboard objectives add cp1 dummy cp1
scoreboard objectives add cp2 dummy cp2
scoreboard objectives add cp3 dummy cp3
scoreboard objectives add cp4 dummy cp4
scoreboard objectives add cp5 dummy cp5
scoreboard objectives add cp6 dummy cp6
scoreboard objectives add cp7 dummy cp7
scoreboard objectives add cp8 dummy cp8
scoreboard objectives add cp9 dummy cp9
scoreboard objectives add cp10 dummy cp10
scoreboard objectives add cp11 dummy cp11
scoreboard objectives add cp12 dummy cp12
scoreboard objectives add cp13 dummy cp13
scoreboard objectives add totaltime dummy totaltime
scoreboard players set @e[tag=main] checkpoint 0
scoreboard players set @e[tag=main] tick_clock 0
scoreboard players set @e[tag=main] totaltime 0
scoreboard players set @a checkpoint 0
scoreboard players set @a totaltime 0
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

## 순위 사이드바 표시
scoreboard objectives setdisplay sidebar rank