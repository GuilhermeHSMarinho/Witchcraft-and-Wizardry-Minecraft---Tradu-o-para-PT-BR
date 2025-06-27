# Se o jogador estiver perto da fonte de áudio e o som não estiver tocando
execute as @a[tag=!playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience

# Remove o tag playingLeavesAmbience se o jogador estiver muito longe para ouvir a fonte de áudio. Como várias fontes de áudio com o mesmo som podem estar presentes, é necessário executar esse processo em dois ciclos.
# Caso contrário, cada fonte de áudio sobrescreveria as esferas de influência das outras.
execute if score ambienceSoundCheck global matches 1 as @a[distance=..40] run tag @s add affectedByClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience


# Reinicia o som quando ele termina, se o jogador ainda estiver ouvindo o som
execute unless score clockTowerP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience