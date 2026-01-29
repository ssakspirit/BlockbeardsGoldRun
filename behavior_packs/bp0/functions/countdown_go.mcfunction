## 레이스 시작!
titleraw @a title {"rawtext":[{"text":"§a출발!"}]}
titleraw @a subtitle {"rawtext":[{"text":"§7GO GO GO!"}]}
playsound race_start @a ~~~ 2.0

## 모든 플레이어 레이싱 시작
tag @a add racing
scoreboard players set @a checkpoint 1
scoreboard players set @e[tag=main] checkpoint 1

## 장벽 제거
fill -40 87 43 -40 90 25 air 0 replace barrier
fill -57 87 44 -57 90 25 air 0 replace barrier
fill -56 90 21 -42 87 21 air 0 replace barrier

## 소 소환 (장애물)
summon cow -1 96 -63
summon cow -1 96 -66
summon cow -8 96 -58
summon cow -4 96 -58
summon cow -12 96 -74

## 첫 체크포인트 영역 로드
schedule on_area_loaded add 22 98 -79 22 98 -79 schedules/loadcp1
