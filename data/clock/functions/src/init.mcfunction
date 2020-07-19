tellraw @a ["",{"text":"[ ","color":"dark_gray"},{"text":"Initialisation","color":"gold"},{"text":" ] ","color":"dark_gray"},{"text":"Clock"}]

scoreboard objectives remove clock.off
scoreboard objectives remove clock.on
scoreboard objectives remove clock.const
scoreboard objectives remove clock.time

scoreboard objectives add clock.off trigger ["", {"text": "Clock: Display off trigger"}]
scoreboard objectives add clock.on trigger ["", {"text": "Clock: Display on trigger"}]
scoreboard objectives add clock.const dummy ["", {"text": "Clock: Constant"}]
scoreboard objectives add clock.time dummy ["", {"text": "Clock: Time"}]

scoreboard players set hours.add clock.const 6000
scoreboard players set hours.div clock.const 1000
scoreboard players set hours.mod clock.const 24

scoreboard players set minutes.mul clock.const 100000
scoreboard players set minutes.div clock.const 1666666
scoreboard players set minutes.mod clock.const 60

scoreboard players set display.bar clock.const 10
scoreboard players set display.mod clock.const 24000

scoreboard players set players.min clock.const 1


bossbar remove clock

bossbar add clock ["", {"text": ""}]
bossbar set clock max 23999
bossbar set clock value 0
bossbar set clock visible true
