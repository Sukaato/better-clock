execute as @s[tag=!clock.on, tag=!clock.off] run function clock:src/mode/trigger/state/turn_on

execute as @s[tag=clock.on, scores={clock.toggle=1}] run function clock:src/mode/trigger/state/turn_off
execute as @s[tag=clock.off, scores={clock.toggle=1}] run function clock:src/mode/trigger/state/turn_on

execute as @s[tag=clock.on] unless entity @s[scores={clock.toggle=0}] run function clock:src/mode/trigger/state/turn_on
execute as @s[tag=clock.off] unless entity @s[scores={clock.toggle=0}] run function clock:src/mode/trigger/state/turn_off
