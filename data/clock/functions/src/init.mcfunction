tellraw @a ["",{"text":"[ ","color":"dark_gray"}, {"text":"Initialisation","color":"gold"}, {"text":" ] ","color":"dark_gray"}, {"text":"Clock v1.2.1"}]

bossbar add clock ["", {"text": ""}]
bossbar set clock max 23999
bossbar set clock value 0
bossbar set clock visible true

scoreboard objectives add clock.const dummy ["", {"text": "Clock: Constant"}]
scoreboard objectives add clock.toggle trigger ["", {"text": "Clock: Toggle display trigger"}]
scoreboard objectives add clock.time dummy ["", {"text": "Clock: Time"}]

scoreboard players set hours.add clock.const 6000
scoreboard players set hours.div clock.const 1000
scoreboard players set hours.mod clock.const 24

scoreboard players set minutes.mul clock.const 100000
scoreboard players set minutes.div clock.const 1666666
scoreboard players set minutes.mod clock.const 60

scoreboard players set display.mod clock.const 24000

# 0 = clock in Inventory , 1 = displayed with trigger
execute unless data storage clock mode run data modify storage clock mode set value 0b 
execute unless data storage config clock run data modify storage config clock set value 1b