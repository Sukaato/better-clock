tag @s add clock.on
tag @s remove clock.off

execute if data storage clock {players: 0b} run data remove storage clock players 
execute store result storage clock players byte 1 run bossbar get clock players
function clock:src/core/main