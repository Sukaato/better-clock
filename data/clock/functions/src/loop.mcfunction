execute as @a[tag=!clock.display.off, tag=!clock.display.on] run function clock:src/state/turn_on
execute as @a[scores={clock.on=1..}] run function clock:src/state/turn_on
execute as @a[scores={clock.off=1..}] run function clock:src/state/turn_off

execute store result score players.count clock.const run bossbar get clock players
execute if score players.count clock.const >= players.min clock.const run function clock:src/core/calcul

execute as @a[tag=clock.display.on] run function clock:src/core/display
