tellraw @s ["", {"text": "Vous avez activé l'affichage de l'heure", "color": "gold"}]

scoreboard players enable @s clock.off
scoreboard players reset @s clock.on
tag @s add clock.display.on
tag @s remove clock.display.off
