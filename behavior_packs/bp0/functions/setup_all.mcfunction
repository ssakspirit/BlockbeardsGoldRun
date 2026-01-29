kill @e[tag=main]
function npcsetup
function scoreboardsetup
execute @e[type=cleverlike:npc,x=-49,y=87,z=24,r=2] ~~~ dialogue change @s before_race @a
fill -40 87 43 -40 90 25 barrier 0 replace air
fill -57 87 44 -57 90 25 barrier 0 replace air
fill -56 90 21 -42 87 21 barrier 0 replace air
function remove_tags