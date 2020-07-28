# When player activate triggers
execute as @a[scores={clock.on=1..}] run function clock:src/state/turn_on
execute as @a[scores={clock.off=1..}] run function clock:src/state/turn_off

# For new player
execute as @a[tag=!clock.display.off, tag=!clock.display.on] run function clock:src/state/turn_on

# For player has disconected
execute as @a[tag=clock.display.on] unless entity @s[scores={clock.off=0}] run function clock:src/state/turn_on
execute as @a[tag=clock.display.off] unless entity @s[scores={clock.on=0}] run function clock:src/state/turn_off
