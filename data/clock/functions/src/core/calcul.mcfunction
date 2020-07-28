execute store result score clock.daytime clock.time run time query daytime

function clock:src/calcul/hours
function clock:src/calcul/minutes
function clock:src/calcul/bossbar

execute as @a[tag=clock.display.on] run function clock:src/core/display
