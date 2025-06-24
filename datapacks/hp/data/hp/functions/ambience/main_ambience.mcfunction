# Determina qual paisagem sonora deve ser reproduzida com base na posição do jogador. Só é verificado a cada 10 ticks para desempenho
execute as @s[scores={checkAmbience=1..}] run scoreboard players remove @s checkAmbience 1
execute as @s[scores={checkAmbience=0},tag=!doNotPlayAmbience] run function hp:ambience/check_soundscape

# Reproduzir paisagem sonora
scoreboard players operation @s[scores={ambientTime=1..}] ambientTime -= systick time
execute as @s[scores={ambientTime=..0}] run scoreboard players operation @s ambientSound = @s ambiencePlaying
execute as @s[scores={ambientTime=..0},tag=inGame,tag=play,tag=!doNotPlayAmbience] run function hp:ambience/play_ambient_sound

# Pontos de áudio ambiente
scoreboard players add ambienceSoundCheck global 1
execute if score ambienceSoundCheck global matches 2.. run scoreboard players set ambienceSoundCheck global 0

# Ônibus
execute if score busP1 ambientTime matches 1.. run scoreboard players operation busP1 ambientTime -= systick time
execute if score busP2 ambientTime matches 1.. run scoreboard players operation busP2 ambientTime -= systick time
execute if score busP3 ambientTime matches 1.. run scoreboard players operation busP3 ambientTime -= systick time
execute if score busP4 ambientTime matches 1.. run scoreboard players operation busP4 ambientTime -= systick time
execute if score ambienceSoundCheck global matches 1 run tag @s remove affectedByBusAmbience

# folhas
execute if score leavesP1 ambientTime matches 1.. run scoreboard players operation leavesP1 ambientTime -= systick time
execute if score leavesP2 ambientTime matches 1.. run scoreboard players operation leavesP2 ambientTime -= systick time
execute if score leavesP3 ambientTime matches 1.. run scoreboard players operation leavesP3 ambientTime -= systick time
execute if score leavesP4 ambientTime matches 1.. run scoreboard players operation leavesP4 ambientTime -= systick time
execute if score ambienceSoundCheck global matches 1 run tag @s remove affectedByLeavesAmbience

# Multidão
execute if score crowdP1 ambientTime matches 1.. run scoreboard players operation crowdP1 ambientTime -= systick time
execute if score crowdP2 ambientTime matches 1.. run scoreboard players operation crowdP2 ambientTime -= systick time
execute if score crowdP3 ambientTime matches 1.. run scoreboard players operation crowdP3 ambientTime -= systick time
execute if score crowdP4 ambientTime matches 1.. run scoreboard players operation crowdP4 ambientTime -= systick time
execute if score ambienceSoundCheck global matches 1 run tag @s remove affectedByCrowdAmbience

# Rio Tâmisa
execute if score thamesP1 ambientTime matches 1.. run scoreboard players operation thamesP1 ambientTime -= systick time
execute if score thamesP2 ambientTime matches 1.. run scoreboard players operation thamesP2 ambientTime -= systick time
execute if score thamesP3 ambientTime matches 1.. run scoreboard players operation thamesP3 ambientTime -= systick time
execute if score thamesP4 ambientTime matches 1.. run scoreboard players operation thamesP4 ambientTime -= systick time
execute if score ambienceSoundCheck global matches 1 run tag @s remove affectedByThamesAmbience

# Torre do Relógio
execute if score clockTowerP1 ambientTime matches 1.. run scoreboard players operation clockTowerP1 ambientTime -= systick time
execute if score clockTowerP1 ambientTime matches 1.. run scoreboard players operation clockTowerP1 ambientTime -= systick time
execute if score clockTowerP1 ambientTime matches 1.. run scoreboard players operation clockTowerP1 ambientTime -= systick time
execute if score clockTowerP1 ambientTime matches 1.. run scoreboard players operation clockTowerP1 ambientTime -= systick time
execute if score ambienceSoundCheck global matches 1 run tag @s remove affectedByThamesAmbience

# Fonte
# execute unless score fountain ambientTime matches 1.. run scoreboard players set fountain ambientTime 8000
# scoreboard players operation fountain ambientTime -= systick time

#####################################################
# Nota: A distância de atenuação é 16 vezes o volume #
#####################################################
