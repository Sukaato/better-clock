bossbar set clock players @a[tag=clock.on, nbt={Dimension: "minecraft:overworld"}]

# Bossbar 
execute store result bossbar clock value run scoreboard players get clock.bar clock.time

# 01 : 01
execute if score clock.hours clock.time matches ..9 if score clock.minutes clock.time matches ..9 run bossbar set clock name ["0", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : 0", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 01 : 10
execute if score clock.hours clock.time matches ..9 if score clock.minutes clock.time matches 10.. run bossbar set clock name ["0", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : ", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 10 : 01
execute if score clock.hours clock.time matches 10.. if score clock.minutes clock.time matches ..9 run bossbar set clock name ["", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : 0", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]
# 10 : 10
execute if score clock.hours clock.time matches 10.. if score clock.minutes clock.time matches 10.. run bossbar set clock name ["", {"score": {"name": "clock.hours", "objective": "clock.time"}}, " : ", {"score": {"name": "clock.minutes", "objective": "clock.time"}}]

execute if score clock.bar clock.time matches 0..4499 run bossbar set clock color purple
execute if score clock.bar clock.time matches 4500..5199 run bossbar set clock color pink
execute if score clock.bar clock.time matches 5200..6499 run bossbar set clock color yellow
execute if score clock.bar clock.time matches 6500..17999 run bossbar set clock color blue
execute if score clock.bar clock.time matches 18000..18699 run bossbar set clock color yellow
execute if score clock.bar clock.time matches 18700..24000 run bossbar set clock color purple
