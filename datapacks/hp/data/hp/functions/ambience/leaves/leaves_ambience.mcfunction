# Se o jogador estiver perto da fonte de áudio e o som não estiver tocando
execute as @a[tag=!playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience

# Remove a tag playingLeavesAmbience se o jogador estiver longe demais para ouvir a fonte de áudio. Como várias fontes de áudio com o mesmo som podem estar presentes, é necessário executar este processo em dois ciclos.
# Caso contrário, cada fonte de áudio sobrescreveria as esferas de influência das outras.
execute if score ambienceSoundCheck global matches 1 as @a[distance=..24] run tag @s add affectedByLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience

# Reinicia o som quando ele termina, se o jogador ainda estiver ouvindo o som
execute unless score leavesP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
