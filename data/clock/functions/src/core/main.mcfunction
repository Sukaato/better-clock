execute as @a run function clock:src/core/state
execute store result storage clock players byte 1 run bossbar get clock players
execute if data storage clock {players: 0b} run data remove storage clock players 
execute if data storage clock players run function clock:src/core/calcul
execute as @a[tag=clock.on] run function clock:src/core/display
