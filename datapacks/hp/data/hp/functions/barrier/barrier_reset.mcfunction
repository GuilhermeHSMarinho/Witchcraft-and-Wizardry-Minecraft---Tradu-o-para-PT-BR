# Reinicialização normal da barreira com base na distância
execute as @s[scores={overrideRespawn=0}] run function hp:barrier/barrier_reset_normal

# Substituir o respawn determinado por missões / desafios
execute as @s[scores={overrideRespawn=1..}] run function hp:respawn/respawn_override