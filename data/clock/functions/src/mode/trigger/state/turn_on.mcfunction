tellraw @s ["", {"text": "Vous avez activé l'affichage de l'horloge", "color": "gold"}]

tag @s add clock.on
tag @s remove clock.off

scoreboard players reset @s clock.toggle
scoreboard players enable @s clock.toggle
