fill -56 87 21 -42 90 21 air
execute @a ~~~ function give_supplies
schedule on_area_loaded add 22 98 -79 22 98 -79 schedules/loadcp1
scoreboard players set @e[tag=main] checkpoint 1
effect @a instant_health 1 10 true
effect @a saturation 1 50 true
dialogue change @e[tag=main] during_race @a
execute @a ~~~ playsound race_start @s ~~~ 2.0
fill -40 87 43 -40 90 25 air 0 replace barrier
fill -57 87 44 -57 90 25 air 0 replace barrier
fill -56 90 21 -42 87 21 air 0 replace barrier
summon cow -1 96 -63
summon cow -1 96 -66
summon cow -8 96 -58
summon cow -4 96 -58
summon cow -12 96 -74