tellraw @s ["", {"text": "Vous avez déactivé l'affichage de l'heure", "color": "gold"}]

scoreboard players enable @s clock.on
scoreboard players reset @s clock.off
tag @s remove clock.display.on
tag @s add clock.display.off

bossbar set clock players
