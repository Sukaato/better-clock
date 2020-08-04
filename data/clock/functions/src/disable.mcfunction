tellraw @a ["",{"text":"[ ","color":"dark_gray"},{"text":"Disable","color":"red"},{"text":" ] ","color":"dark_gray"},{"text":"Clock"}]

scoreboard objectives remove clock.const
scoreboard objectives remove clock.config
scoreboard objectives remove clock.toggle
scoreboard objectives remove clock.time

bossbar remove clock

tag @a remove clock.on
tag @a remove clock.off

datapack disable "file/clock"