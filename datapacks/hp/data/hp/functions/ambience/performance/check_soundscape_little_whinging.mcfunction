# Os comandos são divididos e acionados por uma área de teste de proxy maior, o que deve ajudar a limitar o número de comandos. No entanto, os comandos são muito baratos para executar em termos de desempenho, portanto, não é tão ruim

### Little Whinging
# Interior 2317 64 -946 14 21 12
execute unless entity @s[scores={ambienceLocation=0}] as @s[scores={lastRegion=6},x=2317,dx=14,y=64,dy=21,z=-946,dz=12,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_interior
# Interior
execute unless entity @s[scores={ambienceLocation=0}] as @s[scores={lastRegion=6},x=2289,dx=14,y=64,dy=21,z=-824,dz=12,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_interior
# Exterior
execute unless entity @s[scores={ambienceLocation=1}] as @s[scores={lastRegion=6},tag=!isFastTravelling] unless entity @s[x=2317,dx=14,y=64,dy=21,z=-946,dz=12] unless entity @s[x=2289,dx=14,y=64,dy=21,z=-824,dz=12] run function hp:ambience/soundscapes/little_whinging_exterior
