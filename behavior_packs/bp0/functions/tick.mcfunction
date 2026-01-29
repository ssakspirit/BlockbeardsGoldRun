function actionbars

execute @e[tag=main] ~~~ scoreboard players add @s tick_clock 1
execute @e[tag=main] ~~~ scoreboard players add @s tick_ms 5
execute @e[scores={tick_ms=100}] ~~~ function ticksecond
##execute @e[tag=main,scores={tick_clock=5}] ~~~ function tickquart
##execute @e[tag=main,scores={tick_clock=10}] ~~~ function tickquart
##execute @e[tag=main,scores={tick_clock=10}] ~~~ function tickhalf
##execute @e[tag=main,scores={tick_clock=15}] ~~~ function tickquart
##execute @e[tag=main,scores={tick_clock=20}] ~~~ function tickquart
##execute @e[tag=main,scores={tick_clock=20}] ~~~ function tickhalf


execute @e[tag=main,scores={tick_clock=19}] ~~~ execute @a[tag=!bypass,m=creative] ~~~ scoreboard players add @s creative 1
execute @e[tag=main,scores={tick_clock=19}] ~~~ execute @a[tag=!bypass,m=creative] ~~~ gamemode a @s 

execute @e[tag=main,scores={tick_clock=20}] ~~~ scoreboard players set @s tick_clock 0

execute @a[tag=!reached_cp1] ~~~ detect ~ 0 ~ concrete 0 tp @a[tag=!reached_cp1] ^ ^ ^0.5
execute @a[tag=!reached_cp1] ~~~ detect ~ 0 ~ concrete 0 function checkpoint1


execute @a[tag=reached_cp1,tag=!reached_cp2] ~~~ detect ~ 0 ~ concrete 1 tp @a[tag=!reached_cp2] ^ ^ ^0.5
execute @a[tag=!reached_cp2,tag=reached_cp1] ~~~ detect ~ 0 ~ concrete 1 function checkpoint2

execute @a[tag=reached_cp2,tag=!reached_cp3] ~~~ detect ~ 0 ~ concrete 2 tp @a[tag=!reached_cp3] ^ ^ ^0.5
execute @a[tag=!reached_cp3,tag=reached_cp2] ~~~ detect ~ 0 ~ concrete 2 function checkpoint3

execute @a[tag=reached_cp3,tag=!reached_cp4] ~~~ detect ~ 0 ~ concrete 3 tp @a[tag=!reached_cp4] ^ ^ ^0.5
execute @a[tag=!reached_cp4,tag=reached_cp3] ~~~ detect ~ 0 ~ concrete 3 function checkpoint4

execute @a[tag=reached_cp4,tag=!reached_cp5] ~~~ detect ~ 0 ~ concrete 4 tp @a[tag=!reached_cp5] ^ ^ ^0.5
execute @a[tag=!reached_cp5,tag=reached_cp4] ~~~ detect ~ 0 ~ concrete 4 function checkpoint5

execute @a[tag=reached_cp5,tag=!reached_cp6] ~~~ detect ~ 0 ~ concrete 5 tp @a[tag=!reached_cp6] ^ ^ ^0.5
execute @a[tag=!reached_cp6,tag=reached_cp5] ~~~ detect ~ 0 ~ concrete 5 function checkpoint6

execute @a[tag=reached_cp6,tag=!reached_cp7] ~~~ detect ~ 0 ~ concrete 6 tp @a[tag=!reached_cp7] ^ ^ ^0.5
execute @a[tag=!reached_cp7,tag=reached_cp6] ~~~ detect ~ 0 ~ concrete 6 function checkpoint7

execute @a[tag=reached_cp7,tag=!reached_cp8] ~~~ detect ~ 0 ~ concrete 7 tp @a[tag=!reached_cp8] ^ ^ ^0.5
execute @a[tag=!reached_cp8,tag=reached_cp7] ~~~ detect ~ 0 ~ concrete 7 function checkpoint8

execute @a[tag=reached_cp8,tag=!reached_cp9] ~~~ detect ~ 0 ~ concrete 8 tp @a[tag=!reached_cp9] ^ ^ ^0.5
execute @a[tag=!reached_cp9,tag=reached_cp8] ~~~ detect ~ 0 ~ concrete 8 function checkpoint9

execute @a[tag=reached_cp9,tag=!reached_cp10] ~~~ detect ~ 0 ~ concrete 9 tp @a[tag=!reached_cp10] ^ ^ ^0.5
execute @a[tag=!reached_cp10,tag=reached_cp9] ~~~ detect ~ 0 ~ concrete 9 function checkpoint10

execute @a[tag=reached_cp10,tag=!reached_cp11] ~~~ detect ~ 0 ~ concrete 10 tp @a[tag=!reached_cp11] ^ ^ ^0.5
execute @a[tag=!reached_cp11,tag=reached_cp10] ~~~ detect ~ 0 ~ concrete 10 function checkpoint11

execute @a[tag=reached_cp11,tag=!reached_cp12] ~~~ detect ~ 0 ~ concrete 11 tp @a[tag=!reached_cp11] ^ ^ ^0.5
execute @a[tag=!reached_cp12,tag=reached_cp11] ~~~ detect ~ 0 ~ concrete 11 function checkpoint12

execute @a[tag=reached_cp12,tag=!reached_cp13] ~~~ detect ~ 0 ~ concrete 12 tp @a[tag=!reached_cp12] ^ ^ ^0.5
execute @a[tag=!reached_cp13,tag=reached_cp12] ~~~ detect ~ 0 ~ concrete 12 function checkpoint13


scoreboard players add @e[tag=main,scores={checkpoint=1}] cp1 5
scoreboard players add @e[tag=main,scores={checkpoint=2}] cp2 5
scoreboard players add @e[tag=main,scores={checkpoint=3}] cp3 5
scoreboard players add @e[tag=main,scores={checkpoint=4}] cp4 5
scoreboard players add @e[tag=main,scores={checkpoint=5}] cp5 5
scoreboard players add @e[tag=main,scores={checkpoint=6}] cp6 5
scoreboard players add @e[tag=main,scores={checkpoint=7}] cp7 5
scoreboard players add @e[tag=main,scores={checkpoint=8}] cp8 5
scoreboard players add @e[tag=main,scores={checkpoint=9}] cp9 5
scoreboard players add @e[tag=main,scores={checkpoint=10}] cp10 5
scoreboard players add @e[tag=main,scores={checkpoint=11}] cp11 5
scoreboard players add @e[tag=main,scores={checkpoint=12}] cp12 5

scoreboard players add @e[tag=main,scores={checkpoint=1..,checkpoint=..14}] totaltime 5
scoreboard players add @e[tag=main,scores={checkpoint=1..,checkpoint=..14}] tick_ms_ones 5

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

execute @e[tag=main,scores={tick_sec_ones=3}] ~~~ execute @a[tag=reached_cp4,tag=!reached_cp7] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_sec_ones=8}] ~~~ execute @a[tag=reached_cp4,tag=!reached_cp7] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_sec_ones=3}] ~~~ execute @a[tag=reached_cp8,tag=!reached_cp12] ~~~ effect @s night_vision 20 5 true
execute @e[tag=main,scores={tick_sec_ones=8}] ~~~ execute @a[tag=reached_cp8,tag=!reached_cp12] ~~~ effect @s night_vision 20 5 true

execute @e[tag=main,scores={tick_ms_ones=10}] ~~~ scoreboard players add @s tick_ms_tens 1
execute @e[tag=main,scores={tick_ms_ones=10}] ~~~ scoreboard players set @s tick_ms_ones 0
execute @e[tag=main,scores={tick_ms_tens=10}] ~~~ scoreboard players add @s tick_sec_ones 1
execute @e[tag=main,scores={tick_ms_tens=10}] ~~~ scoreboard players set @s tick_ms_tens 0
execute @e[tag=main,scores={tick_sec_ones=10}] ~~~ scoreboard players add @s tick_sec_tens 1
execute @e[tag=main,scores={tick_sec_ones=10}] ~~~ scoreboard players set @s tick_sec_ones 0
execute @e[tag=main,scores={tick_sec_tens=6}] ~~~ scoreboard players add @s tick_min_ones 1
execute @e[tag=main,scores={tick_sec_tens=6}] ~~~ scoreboard players set @s tick_sec_tens 0
execute @e[tag=main,scores={tick_min_ones=10}] ~~~ scoreboard players add @s tick_min_tens 1
execute @e[tag=main,scores={tick_min_ones=10}] ~~~ scoreboard players set @s tick_min_ones 0

execute @a[tag=p8] ~~~ setblock ~ 0 ~ concrete 7
execute @a[tag=erase] ~~~ fill ~-2 0 ~-2 ~2 0 ~2 bedrock 0 replace concrete 7

execute @a[tag=reached_cp9, tag=!reached_cp10] ~~~ detect ~ ~2 ~ wool 4 execute @s ~~~ detect ~ ~-1 ~ wool 4 effect @s water_breathing 2 4
execute @a[tag=reached_cp9, tag=!reached_cp10] ~~~ detect ~ ~1 ~ wool 4 execute @s ~~~ detect ~ ~-2 ~ wool 4 effect @s water_breathing 2 4

execute @e[tag=cp13] ~~~ execute @a[tag=reached_cp12,tag=!reached_cp13,r=20,rm=19] ~~~ playsound race_crowdcheer @s ~~~ 3.0

execute @a ~~~ execute @e[r=20,rm=19] ~~~ playanimation @s cheer

