# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# Na primeira execução, usado para definir convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = barnabasCuffe p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = barnabasCuffe p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = barnabasCuffe p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = barnabasCuffe p4convOverride
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Saia da minha frente, criança. Não está vendo que estou ocupado? Tenho prazos a cumprir!\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set barnabasCuffe p1convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set barnabasCuffe p2convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set barnabasCuffe p3convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set barnabasCuffe p4convOverride 1
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


################################################################################################
##################################### Estado da conversa 1 #####################################
################################################################################################

tag @s[scores={convState=1},tag=drawOptions] add use
tag @s[scores={convState=1},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Já te disse! Estou ocupado demais pra lidar com você agora!\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set barnabasCuffe p1convOverride 2
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set barnabasCuffe p2convOverride 2
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set barnabasCuffe p3convOverride 2
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set barnabasCuffe p4convOverride 2
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

################################################################################################
##################################### Estado da conversa 2 #####################################
################################################################################################

tag @s[scores={convState=2},tag=drawOptions] add use
tag @s[scores={convState=2},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Pare de me incomodar!\\n\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set barnabasCuffe p1convOverride 0
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set barnabasCuffe p2convOverride 0
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set barnabasCuffe p3convOverride 0
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set barnabasCuffe p4convOverride 0
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


#===============================

################################################################################################
##################################### Estado da conversa 3 #####################################
################################################################################################

tag @s[scores={convState=3},tag=drawOptions] add use
tag @s[scores={convState=3},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" É mesmo? Ele não recebeu a encomenda? Isso era trabalho do Lethas! Acabei de contratar aquele desgraçado esverdeado. Maldito preguiçoso. Vá encontrar o Kevin Lethas e diga a ele que eu não vou tolerar isso de novo. Essa é a última e única chance dele! \\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Pode deixar!\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s trackedQuestID 50
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add hasSpokenToBarnabasCuffe
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