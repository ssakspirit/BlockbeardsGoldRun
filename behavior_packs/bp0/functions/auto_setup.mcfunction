## Check if NPC exists, if not, run setup
execute @e[tag=main,c=1] ~~~ scoreboard players set world_ready setup 1
execute @a ~~~ scoreboard players add world_ready setup 0
scoreboard players test world_ready setup * 0
function setup_all
