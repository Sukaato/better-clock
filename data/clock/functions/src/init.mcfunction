tellraw @a ["",{"text":"[ ","color":"dark_gray"},{"text":"Initialisation","color":"gold"},{"text":" ] ","color":"dark_gray"},{"text":"Clock"}]

bossbar remove clock

bossbar add clock ["", {"text": ""}]
bossbar set clock max 23999
bossbar set clock value 0
bossbar set clock visible true

scoreboard objectives remove clock.const
scoreboard objectives remove clock.config
scoreboard objectives remove clock.toggle
scoreboard objectives remove clock.time

scoreboard objectives add clock.const dummy ["", {"text": "Clock: Constant"}]
scoreboard objectives add clock.config dummy ["", {"text": "Clock: config"}]
scoreboard objectives add clock.toggle trigger ["", {"text": "Clock: Toggle display trigger"}]
scoreboard objectives add clock.time dummy ["", {"text": "Clock: Time"}]

scoreboard players set hours.add clock.const 6000
scoreboard players set hours.div clock.const 1000
scoreboard players set hours.mod clock.const 24

scoreboard players set minutes.mul clock.const 100000
scoreboard players set minutes.div clock.const 1666666
scoreboard players set minutes.mod clock.const 60

scoreboard players set display.bar clock.const 10
scoreboard players set display.mod clock.const 24000

tag @a remove clock.on
tag @a remove clock.off

scoreboard players set isUp clock.config 1
