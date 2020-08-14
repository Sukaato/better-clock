scoreboard players operation clock.bar clock.time = clock.daytime clock.time
scoreboard players operation clock.bar clock.time += hours.add clock.const
execute if score clock.bar clock.time matches 24000.. run scoreboard players operation clock.bar clock.time %= display.mod clock.const
