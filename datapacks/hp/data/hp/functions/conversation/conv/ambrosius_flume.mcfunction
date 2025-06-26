# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# Na primeira execução, usado para definir convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = ambrosiusFlume p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = ambrosiusFlume p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = ambrosiusFlume p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = ambrosiusFlume p4convOverride
execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 9

################################################################################################
##################################### Estado da conversa 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Dá uma olhada nas nossas prateleiras e veja só — os doces mais deliciosos que você já viu. Bem-vindo à Dedosdemel! \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≡ Eu gostaria de comprar alguns doces\"}",Tags:["_____buy_____","_____Normal_____","_____click_____","convOption","i"]}
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Fale-me sobre sua loja\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ O que há embaixo?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=4}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau..\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 4
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Bom, meu amigo curioso, deixa eu ver... A loja foi fundada em 1641. Hoje, ela pertence a mim e à minha esposa. Por razões óbvias, é um destino bastante popular entre os alunos de Hogwarts quando vêm a Hogsmeade. Na época do Natal, mal dá pra se mexer de tanta gente. \\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Ah, é só um porão comum mesmo. A gente guarda doces e outras coisas lá. Caixotes de madeira, algumas caixas... só isso, na verdade. \\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
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
##################################### Estado da conversa 3 #############################################
################################################################################################

tag @s[scores={convState=3},tag=drawOptions] add use
tag @s[scores={convState=3},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Muito obrigado! \\n\\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau..\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run scoreboard players set @s trackedQuestID 52
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] run tag @s add hasDeliveredLetter
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
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


