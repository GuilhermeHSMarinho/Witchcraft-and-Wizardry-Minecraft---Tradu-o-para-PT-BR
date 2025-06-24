# Se o jogador estiver perto da fonte de áudio e o som não estiver tocando
execute as @a[tag=!playingCrowdAmbience,distance=..16,tag=!doNotPlayCrowdAmbience] run function hp:ambience/crowd/play_crowd_ambience

# Remove a tag playingCrowdAmbience se o jogador estiver longe demais para ouvir a fonte de áudio. Como várias fontes de áudio com o mesmo som podem estar presentes, é necessário executar esse processo em dois ciclos.
# Caso contrário, cada fonte de áudio sobrescreveria as esferas de influência das outras.
execute if score ambienceSoundCheck global matches 1 as @a[distance=..16] run tag @s add affectedByCrowdAmbience
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=1},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP1 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=2},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP2 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=3},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP3 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=4},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP4 ambientTime 0
execute if score ambienceSoundCheck global matches 0 if score crowdP1 ambientTime matches ..0 as @p[scores={playerID=1},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP2 ambientTime matches ..0 as @p[scores={playerID=2},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP3 ambientTime matches ..0 as @p[scores={playerID=3},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP4 ambientTime matches ..0 as @p[scores={playerID=4},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience

# Reinicia o som quando ele termina, se o jogador ainda estiver tocando o som
execute unless score crowdP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience