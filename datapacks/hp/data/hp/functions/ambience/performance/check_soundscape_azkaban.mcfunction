# Os comandos são divididos e acionados por uma área proxy maior de teste, o que deve ajudar a limitar o número de comandos. No entanto, os comandos são muito leves em termos de desempenho, então não é tão ruim.

# Testa se está voando
tag @s add playerIsOutside

execute unless entity @s[scores={ambienceLocation=37}] as @s[tag=!isFastTravelling,tag=!azkabanStorm] run function hp:ambience/soundscapes/azkaban
execute unless entity @s[scores={ambienceLocation=38}] as @s[tag=!isFastTravelling,tag=azkabanStorm] run function hp:ambience/soundscapes/azkaban_storm