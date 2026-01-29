scoreboard players add @e[tag=main] tick_second 1
execute @e[scores={tick_second=60}] ~~~ function tickminute
scoreboard players set @e[tag=main] tick_ms 0

