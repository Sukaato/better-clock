tellraw @s ["", {"text": "Vous avez déactivé l'affichage d l'horloge", "color": "gold"}]

tag @s add clock.off
tag @s remove clock.on

scoreboard players reset @s clock.toggle
scoreboard players enable @s clock.toggle

bossbar set clock players