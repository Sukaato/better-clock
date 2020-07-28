tellraw @a ["",{"text":"[ ","color":"dark_gray"},{"text":"Disable","color":"dark_red"},{"text":" ] ","color":"dark_gray"},{"text":"Clock"}]

scoreboard objectives remove clock.const
scoreboard objectives remove clock.time
scoreboard objectives remove clock.on
scoreboard objectives remove clock.off

bossbar remove minecraft:clock

tag @a remove clock.display.on
tag @a remove clock.display.off

datapack disable "file/clock"
