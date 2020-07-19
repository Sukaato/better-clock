bossbar set clock players @s
scoreboard players enable @s clock.off

# Bossbar 
execute store result bossbar clock value run scoreboard players get clock.bar clock.time

# 01 : 01
execute if score clock.hours clock.time < display.bar clock.const if score clock.minutes clock.time < display.bar clock.const run bossbar set clock name ["0", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : 0", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 01 : 10
execute if score clock.hours clock.time < display.bar clock.const if score clock.minutes clock.time >= display.bar clock.const run bossbar set clock name ["0", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : ", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 10 : 01
execute if score clock.hours clock.time >= display.bar clock.const if score clock.minutes clock.time < display.bar clock.const run bossbar set clock name ["", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : 0", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 10 : 10
execute if score clock.hours clock.time >= display.bar clock.const if score clock.minutes clock.time >= display.bar clock.const run bossbar set clock name ["", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : ", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
