# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# Na primeira execução, usado para definir convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = aramDervish p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = aramDervish p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = aramDervish p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = aramDervish p4convOverride
execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 5

################################################################################################
##################################### Estado da conversa 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Bem-vindo à Dervish and Banges. Instrumentos mágicos, equipamentos, gadgets, aparelhos, engenhocas — tudo o que você precisar. Se estiver procurando pelo Banges, deve encontrá-lo lá fora, nos fundos da loja. Mas não espere muita conversa: ele não é de falar muito, especialmente com alunos de Hogwarts ou com quem não conhece. Agora... \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set aramDervish p1convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set aramDervish p2convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set aramDervish p3convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set aramDervish p4convOverride 1
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" O que posso fazer por você? \\n \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de conversação #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≡ Mostre-me o que você tem à venda\"}",Tags:["_____buy_____","_____Normal_____","_____click_____","convOption","i"]}
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≈ Eu tenho algo para te vender\"}",Tags:["_____sell_____","_____Normal_____","_____click_____","convOption","i"]}
#-------------------------------

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ Eu gostaria de fazer uma pergunta\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
#-------------------------------

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
##################################### Estado da conversa 2 #####################################
################################################################################################

tag @s[scores={convState=2},tag=drawOptions] add use
tag @s[scores={convState=2},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Hm? \\n \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≤ Fale-me sobre Hogsmeade\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 3
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ Você e Banges administram a loja?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 4
#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\" Há algo mais \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 3
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Hogsmeade é uma vila pequena, mas tem muitas lojas. Dito isso, poucos lojistas como nós estão dispostos a comprar os itens que você quiser vender. É melhor ficar com a gente. Aquela mulher ali da rua de cima anda com todo tipo de gente. \\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################

#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Isso mesmo. Nós dois seguimos juntos. E precisamos continuar assim. Desde o fim da Primeira Guerra Bruxa, sinto que somos os únicos bruxos de verdade aqui em Hogsmeade. O resto... amoleceu. Até aqueles que antes apoiavam nossa causa. \\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader	

###############################
##### Opções de Conversa #######
################################

#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 5
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 2
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Talvez eu devesse medir mais as palavras. Tudo isso aconteceu há anos, veja bem. Hoje em dia é preciso ter mais cuidado com o que se diz. Mas vou te contar: talvez eu não saia mais por aí empunhando uma varinha em nome dos sangue-puros, mas seria covardia abandonar os próprios ideais. \\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader	

###############################
##### Opções de Conversa #######
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
scoreboard players set @s[tag=use] backConvState 4
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Os Muggles e os Sangue-Ruins não têm nada a fazer invadindo nosso mundo. Hogsmeade é uma vila bruxa. Deveria permanecer assim. \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader	

###############################
##### Opções de Conversa #######
################################

#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" Eu concordo \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 7
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\" Eu não concordo \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 8
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 2
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Bom, então você vê através das mentiras que Dumbledore ensinaria a você em Hogwarts. Ele tinha tanto potencial. Costumava ser próximo de Grindelwald, ouvi dizer. Agora eu sei que você não deve louvar esse nome, mas podemos falar honestamente aqui. \\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader	

################################
##### Opções de Conversa #######
################################

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set aramDervish p1convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set aramDervish p2convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set aramDervish p3convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set aramDervish p4convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 9
#-------------------------------


#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 9
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Bem. Você não é diferente do resto deles. Mas estou lhe dizendo, há pessoas como Banges e eu lá fora, esperando que algo aconteça. Algo está vindo. Eu acho que as coisas vão mudar por aqui. \\n\\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=1}] run scoreboard players set aramDervish p1convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=2}] run scoreboard players set aramDervish p2convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=3}] run scoreboard players set aramDervish p3convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0,playerID=4}] run scoreboard players set aramDervish p4convOverride 9
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 9
#-------------------------------


#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 9
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
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" O que posso fazer por você? \\n \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Opções de Conversa #######
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≡ Mostre-me o que você tem à venda\"}",Tags:["_____buy_____","_____Normal_____","_____click_____","convOption","i"]}
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≈ Eu tenho algo para te vender\"}",Tags:["_____sell_____","_____Normal_____","_____click_____","convOption","i"]}
#-------------------------------

#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ Fale-me sobre Hogsmeade\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 10
#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=4}] run data merge entity @s {CustomName:"{\"text\":\"≥ Tchau...\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
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
##################################### Estado da conversa 10 #####################################
################################################################################################

tag @s[scores={convState=10},tag=drawOptions] add use
tag @s[scores={convState=10},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Cabeçalho da conversa ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Hogsmeade é uma pequena vila, mas há muitas lojas. Dito isso, há apenas alguns comerciantes como nós, que estão dispostos a comprar qualquer item que você tenha para vender. Você deve ficar conosco, no entanto. Aquela mulher na rua de cima se mistura com todo tipo de gente. \\n \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

###############################
##### Opções de Conversa #######
################################

#-------------------------------

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 9
#-------------------------------

#===============================
# Número de opções
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Estado de retorno da conversa (quando o jogador pressiona shift. -1 é sair da conversa)
scoreboard players set @s[tag=use] backConvState 9
tag @s remove use
tag @s remove trg
#===============================