execute as @a run function clock:src/mode/trigger/state

execute store result storage clock players byte 1 run bossbar get clock players
execute if data storage clock {players: 0b} run data remove storage clock players 
function clock:src/core/main
