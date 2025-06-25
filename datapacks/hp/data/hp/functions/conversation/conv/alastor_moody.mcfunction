# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# Na primeira execução, usado para definir convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = alastorMoody p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = alastorMoody p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = alastorMoody p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = alastorMoody p4convOverride
execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 6

################################################################################################
##################################### Estado da conversa 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Comensais da Morte atacando o Ministério? Malditos sejam! É bom que você tenha vindo contar isso à Ordem. Os Comensais da Morte estão voltando à luz depois de ficarem adormecidos por anos...\\n\\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 2
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado de conversa 1 #####################################
################################################################################################

tag @s[scores={convState=1},tag=drawOptions] add use
tag @s[scores={convState=1},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Eles estão ficando inquietos. Passei minha carreira como auror combatendo bruxos das trevas. Lutando contra os apoiadores do Senhor das Trevas. Dezenas deles.. Vigilância constante Sempre! \\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2

#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 0
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Agora uma fuga de Azkaban? Temos de ir para lá imediatamente! Rápido, agora! Você. Venha...\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s trackedQuestID 34
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add hasSpokenToAlastorMoodyAboutDeathEaterAttack
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 3
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado da conversa 3 #####################################
################################################################################################

tag @s[scores={convState=3},tag=drawOptions] add use
tag @s[scores={convState=3},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Pegue todas as armas, poções e suprimentos que precisar e volte para mim. E seja rápido nisso.\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"±ˈˈEstou Pronto Para ir... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add isReadyToTravelToAzkaban
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s trackedQuestID 34
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≥ Eu preciso reunir alguns suprimentos \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 2
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 2
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado da conversa 4 #####################################
################################################################################################

tag @s[scores={convState=4},tag=drawOptions] add use
tag @s[scores={convState=4},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Pegue todas as armas, poções e suprimentos que precisar e volte para mim. E seja rápido!\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"±ˈˈEstou Pronto Para ir... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add isReadyToTravelToAzkaban
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≥ Eu preciso reunir alguns suprimentos \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 2
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado da conversa 5 #####################################
################################################################################################

tag @s[scores={convState=5},tag=drawOptions] add use
tag @s[scores={convState=5},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Você se saiu muito bem. Não há mais nada que possamos fazer. Batalhas e guerras não são vencidas ao deixar o inimigo escapar, mas há uma vitória nisso, que deve ser reconhecida. Não podemos fechar os olhos para o fato de que o que aconteceu aqui hoje é um desastre colossal. Mas, se não fosse por você e pela Ordem, uma situação ruim teria sido infinitamente pior.\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 6
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
##################################### Estado da conversa 6 #####################################
################################################################################################

tag @s[scores={convState=6},tag=drawOptions] add use
tag @s[scores={convState=6},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Muito bem, que venham. Enfrentaremos suas provações. Continuaremos lutando. Com confiança e força crescentes. Vigilância constante! \\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 7
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 5
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado da conversa 7 #####################################
################################################################################################

tag @s[scores={convState=7},tag=drawOptions] add use
tag @s[scores={convState=7},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Agora acho melhor tirarmos você daqui\\n\"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] if entity @p[tag=activePlayer,tag=!confirmConvOption] run data merge entity @s {CustomName:"{\"text\":\"√ Viaje de volta para o número 12 da Grimmauld Place\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add hasSpokenToAlastorMoodyAfterAzkaban
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set alastorMoody p1convOverride 8
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set alastorMoody p2convOverride 8
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set alastorMoody p3convOverride 8
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set alastorMoody p4convOverride 8
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≥ Há algo que preciso fazer antes.\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set alastorMoody p1convOverride 7
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set alastorMoody p2convOverride 7
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set alastorMoody p3convOverride 7
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set alastorMoody p4convOverride 7
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 2
#-------------------------------
# Estado de conversa de retorno (quando o jogador pressiona shift. -1 encerra a conversa)
scoreboard players set @s[tag=use] backConvState 6
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Estado da conversa 8 #####################################
################################################################################################

tag @s[scores={convState=8},tag=drawOptions] add use
tag @s[scores={convState=8},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Vigilância constante!\\n\"}"}
#execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≤ O que você acha do Mundungus Fletcher? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 9
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Você já foi um auror? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 10
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ Posso perguntar sobre o seu olho? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 11
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=4}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------
#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 4
#-------------------------------
# Estado de conversa de retorno (quando o jogador pressiona shift. -1 encerra a conversa)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Estado da conversa 9 #####################################
################################################################################################

tag @s[scores={convState=9},tag=drawOptions] add use
tag @s[scores={convState=9},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Ladrão canalha. Aquele homem não é confiável. Ele pode ter se juntado à Ordem durante a guerra, mas agora está nela pelo dinheiro. Marque minhas palavras. \\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau.. \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 8
#-------------------------------
#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de conversa de retorno (quando o jogador pressiona shift. -1 encerra a conversa)
scoreboard players set @s[tag=use] backConvState 8
tag @s remove use
tag @s remove trg
#===============================



################################################################################################
##################################### Estado da conversa 10 #####################################
################################################################################################

tag @s[scores={convState=10},tag=drawOptions] add use
tag @s[scores={convState=10	},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Sim, eu fui um auror. Um auror famoso, até. Mandei muitos Comensais da Morte para Azkaban. Até matei alguns durante a guerra. Fiz muitos inimigos ao longo dos anos. Agora estou aposentado. Fim da história. Adeus. É o fim. Alguma pergunta? \\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau.. \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 8
#-------------------------------
#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de conversa de retorno (quando o jogador pressiona shift. -1 encerra a conversa)
scoreboard players set @s[tag=use] backConvState 8
tag @s remove use
tag @s remove trg
#===============================



################################################################################################
##################################### Estado da conversa 11 #####################################
################################################################################################

tag @s[scores={convState=11},tag=drawOptions] add use
tag @s[scores={convState=11	},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Perdi este olho lutando contra Evan Rosier durante a guerra. Aquele canalha já está morto. Pra mim tudo bem, essa substituição é melhor, pode acreditar. Enxerga através de paredes, capas da invisibilidade. Até a parte de trás da minha cabeça. Só que às vezes trava... \\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau.. \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 8
#-------------------------------
#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de conversa de retorno (quando o jogador pressiona shift. -1 encerra a conversa)
scoreboard players set @s[tag=use] backConvState 8
tag @s remove use
tag @s remove trg
#===============================