# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# Na primeira execução, usado para definir convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = baldwinHubble p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = baldwinHubble p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = baldwinHubble p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = baldwinHubble p4convOverride
execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 0

################################################################################################
##################################### Estado da conversa 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Fazendo compras para Hogwarts, não é?\\n\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================