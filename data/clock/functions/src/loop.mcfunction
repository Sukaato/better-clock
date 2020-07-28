execute if score isUp clock.const matches 1 run function clock:src/core/state

# Count how many players want to display bossbar
execute store result score players.count clock.const run bossbar get clock players
execute if score players.count clock.const matches 1.. run function clock:src/core/calcul
 
# bossbar set clock players
execute as @a[tag=clock.display.on] run function clock:src/core/display
