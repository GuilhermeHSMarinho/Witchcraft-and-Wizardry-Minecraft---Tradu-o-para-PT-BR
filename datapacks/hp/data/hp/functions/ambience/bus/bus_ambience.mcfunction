# Se o player estiver próximo à fonte de áudio e o som não estiver sendo reproduzido
execute as @a[tag=!playingBusAmbience,distance=..24,tag=!doNotPlayBusAmbience] run function hp:ambience/bus/play_bus_ambience

# Remova a tag playingBusAmbience se o jogador estiver muito longe para ouvir a fonte de áudio. Como várias fontes de áudio com o mesmo som podem estar presentes, é necessário executar esse processo em dois ciclos.
# Caso contrário, cada fonte de áudio se sobreporia às esferas de influência das outras.
execute if score ambienceSoundCheck global matches 1 as @a[distance=..24] run tag @s add affectedByBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience


# Reinicia o som quando ele termina se o jogador ainda estiver reproduzindo o som
execute unless score busP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience