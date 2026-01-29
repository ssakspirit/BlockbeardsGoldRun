scoreboard players set @e[tag=main] checkpoint 0
scoreboard players set @e[tag=main] cp1 0
scoreboard players set @e[tag=main] cp2 0
scoreboard players set @e[tag=main] cp3 0
scoreboard players set @e[tag=main] cp4 0
scoreboard players set @e[tag=main] cp5 0
scoreboard players set @e[tag=main] cp6 0
scoreboard players set @e[tag=main] cp7 0
scoreboard players set @e[tag=main] cp8 0
scoreboard players set @e[tag=main] cp9 0
scoreboard players set @e[tag=main] cp10 0
scoreboard players set @e[tag=main] cp11 0
scoreboard players set @e[tag=main] cp12 0
scoreboard players set @e[tag=main] cp13 0
scoreboard players set @e[tag=main] tick_ms_ones 0
scoreboard players set @e[tag=main] tick_ms_tens 0
scoreboard players set @e[tag=main] tick_sec_ones 0
scoreboard players set @e[tag=main] tick_sec_tens 0
scoreboard players set @e[tag=main] tick_min_ones 0
scoreboard players set @e[tag=main] tick_min_tens 0
scoreboard players set @e[tag=main] totaltime 0
clear @a
effect @a clear
function remove_tags
gamemode a @a
gamerule showcoordinates false
gamerule sendcommandfeedback false
gamerule commandblockoutput false
effect @a instant_health 1 10 true
effect @a saturation 1 50 true
dialogue change @e[tag=main] before_race @a
tag @a remove equipped
tp @a -49 87 30 facing @e[tag=main]
kill @e[type=cow]
fill -40 87 43 -40 90 25 barrier 0 replace air
fill -57 87 44 -57 90 25 barrier 0 replace air
fill -56 90 21 -42 87 21 barrier 0 replace air