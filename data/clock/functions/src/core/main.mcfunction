execute as @a run function clock:src/core/state
execute store result score players.count clock.config run bossbar get clock players
execute if score players.count clock.config matches 1.. run function clock:src/core/calcul
execute as @a[tag=clock.on] run function clock:src/core/display