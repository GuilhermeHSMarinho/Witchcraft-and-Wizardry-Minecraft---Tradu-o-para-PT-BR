# Se o jogador estiver perto da fonte de áudio e o som não estiver tocando
execute as @a[tag=!playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience

# Remove a tag playingThamesAmbience se o jogador estiver longe demais para ouvir a fonte de áudio. Como várias fontes de áudio com o mesmo som podem estar presentes, é necessário executar este processo em dois ciclos.
# Caso contrário, cada fonte de áudio sobrescreveria as esferas de influência das outras.
execute if score ambienceSoundCheck global matches 1 as @a[distance=..80] run tag @s add affectedByThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience

# Reinicia o som quando ele termina, se o jogador ainda estiver ouvindo o som
execute unless score thamesP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
