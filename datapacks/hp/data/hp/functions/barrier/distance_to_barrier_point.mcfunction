# Copiado do sistema de respawn

######################
# Determinar a distância
######################
# Eu faço distance^2 = x^2+y^2+z^2. Não há necessidade de fazer a raiz quadrada, pois estou apenas verificando qual é a menor

#####
# X #
#####

# Se o ponto de desova x for maior que o jogador x
execute if score @s playerRespawnX >= @s respawnX run scoreboard players operation @s tmp = @s playerRespawnX
execute if score @s playerRespawnX >= @s respawnX run scoreboard players operation @s tmp -= @s respawnX

# Se o ponto de desova x for menor que o jogador x
execute if score @s playerRespawnX < @s respawnX run scoreboard players operation @s tmp = @s respawnX
execute if score @s playerRespawnX < @s respawnX run scoreboard players operation @s tmp -= @s playerRespawnX

# Pitágoras
scoreboard players operation @s tmp *= @s tmp

#####
# Y #
#####

# se o ponto de desova y for maior que o jogador y
execute if score @s playerRespawnY >= @s respawnY run scoreboard players operation @s tmp2 = @s playerRespawnY
execute if score @s playerRespawnY >= @s respawnY run scoreboard players operation @s tmp2 -= @s respawnY

# se o ponto de desova y for menor que o jogador y
execute if score @s playerRespawnY < @s respawnY run scoreboard players operation @s tmp2 = @s respawnY
execute if score @s playerRespawnY < @s respawnY run scoreboard players operation @s tmp2 -= @s playerRespawnY

# Pitágoras
scoreboard players operation @s tmp2 *= @s tmp2
scoreboard players operation @s tmp += @s tmp2

#####
# Z #
#####

# se o ponto de desova z for maior que o jogador z
execute if score @s playerRespawnZ >= @s respawnZ run scoreboard players operation @s tmp3 = @s playerRespawnZ
execute if score @s playerRespawnZ >= @s respawnZ run scoreboard players operation @s tmp3 -= @s respawnZ

# if spawnpoint z is less than player z
execute if score @s playerRespawnZ < @s respawnZ run scoreboard players operation @s tmp3 = @s respawnZ
execute if score @s playerRespawnZ < @s respawnZ run scoreboard players operation @s tmp3 -= @s playerRespawnZ

# Pitágoras
scoreboard players operation @s tmp3 *= @s tmp3
scoreboard players operation @s tmp += @s tmp3

# Se este for o primeiro ponto a ser testado, presuma que é o que será usado
execute as @s[scores={testRespawnID=0}] run scoreboard players operation @s respawnID = @s testRespawnID
execute as @s[scores={testRespawnID=0}] run scoreboard players operation @s respawnDistance = @s tmp

# Se o novo ponto testado estiver mais próximo do jogador do que o ponto anteriormente mais próximo, substitua-o
execute as @s[scores={testRespawnID=1..}] if score @s tmp < @s respawnDistance run scoreboard players operation @s respawnID = @s testRespawnID
execute as @s[scores={testRespawnID=1..}] if score @s tmp < @s respawnDistance run scoreboard players operation @s respawnDistance = @s tmp

# Testar próximo ponto de respawn
scoreboard players add @s testRespawnID 1