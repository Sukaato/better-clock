tellraw @a ["", {"text":"[ ","color":"dark_gray"}, {"text":"Uninstall","color":"red"}, {"text":" ] ","color":"dark_gray"}, {"text":"Clock v1.3.1"}]

scoreboard objectives remove clock.const
scoreboard objectives remove clock.config
scoreboard objectives remove clock.toggle
scoreboard objectives remove clock.time

bossbar remove clock

tag @a remove clock.on
tag @a remove clock.off

data remove storage clock players
data remove storage clock mode
data remove storage config clock

datapack disable "file/clock"