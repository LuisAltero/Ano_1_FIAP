# def num_perfeito(x):
#     lista_divisores = []
#     for numero in range(1, x - 1):
#         if x % numero == 0:
#             lista_divisores.append(numero)
#     if sum(lista_divisores) == x:
#         print('O número digitado é perfeito')
#     else:
#         print('O número digitado não é perfeito')
#
# num_perfeito(6)

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# import random as rd
#
# def mega_senna():
#     nome = str(input('Adicione o nome de um jogador: '))
#     idade = int(input('Adicione a idade de um jogador: '))
#     print(f'Nome do jogador: {nome}')
#     print(f'Idade do jogador: {idade}')
#     print(rd.sample(range(1, 61), 6))
# mega_senna()

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# #Estrategia: ter uma estrutura que armazena no nome do atleta e a medalha
# #Vamos usar o dicionario para armazenar chave / valor , por  exemplo nome: joao medalha:prata
# #A estrutura armazenara um atleta individualmente
# #Precisamos de outra colecao que armazene todos os atletas e suas medalhas
# qtde_atletas = int(input('Entre com a quantidade de atletas: '))

# #lista de atletas originais, como foram entrados, na ordem que foram entrados
# listaAtletas = []

# #criar uma lista auxiliar somente com os nomes dos atletas, que é por ai que eu quero ordenar - original
# listaNomesAtletas = []

# for i in range(qtde_atletas):
#   nome_atleta = input('Nome do atleta: ')
#   medalha_atleta = input('Medalha do atleta: ')
#   dictAtleta = {
#     'nome_atleta' : nome_atleta ,
#     'medalha_atleta' : medalha_atleta
#   }
#   listaAtletas.append(dictAtleta)
#   listaNomesAtletas.append(nome_atleta)
# print('lista atletas composta original', listaAtletas)
# print('lista atletas nomes original', listaNomesAtletas)

# #ordenacao por nome
# #criar listas ordenadas
# listaNomesAtletasOrdenada = []

# #lista composta de nomes e medalhas, ordenada por nome
# listaAtletasOrdenada = []

# listaNomesAtletasOrdenada = sorted(listaNomesAtletas)

# print('lista atletas nomes ordenada', listaNomesAtletasOrdenada)

# for i in range(qtde_atletas):
#   print('indice orginal', i)
#   iOrdenado = listaNomesAtletasOrdenada.index(listaNomesAtletas[i])
#   print('indice ordenado', iOrdenado)
#   listaAtletasOrdenada.append(listaAtletas[iOrdenado])

# print('lista atletas composta ordenada', listaAtletasOrdenada)


# #parametro é a variavel na definicao da funcao
# def fSaudacao(pNome, pPeriodo = 'tarde', pIdade = 18) :
#   print(f'Bom {pPeriodo} {pNome}!')
#   print(f'sua idade {pIdade}!')
#   x = 'sextamos'



# #argumento é o valor da variavel na chamada da funcao
# fSaudacao('Mel', 'dia')
# fSaudacao('Joao', 'noite')
# fSaudacao(pIdade = 14, pNome = 'Nataly')

# print()
# def fSaudacaoIdade(pNome, pPeriodo = 'tarde', pIdade = 18) :
#   print(f'Bom {pPeriodo} {pNome}!')
#   print(f'sua idade {pIdade}!')
#   return pIdade + 10

# idadeAvancada = fSaudacaoIdade(pNome = 'Pat', pIdade=17)
# print('Sua idade avancada', idadeAvancada)

# print()
# def fSaudacaoGrupo(*pNome):
#   for nome in pNome:
#     print(f'Bom dia {nome}')

# fSaudacaoGrupo('Joao', 'Wellington', 'Norma')


# #Estevao
# def numAbs (num):
#   if num < 0:
#     num = num * -1
#   else: num = num

#   return print(f'O número absoluto é {num}')

# num = float(input('\nDigite um número: '))
# numAbs(num)

# #Estevao
# import math
# def volumeEsfera (raio):
#   volume = (4/3)*math.pi*(raio**3)
#   volume = round(volume,2)
#   return print(f'O volume da esfera é {volume} cm³')


# raio = float(input('\nDigite o raio da esfera em cm: '))
# volumeEsfera(raio)

# def fCapicua(pNum):
#   # vai conter a palavra invertida
#   print(pNum)
#   palavraReversa = ''
#   for i in range(len(pNum)-1, -1, -1):
#     palavraReversa = palavraReversa + pNum[i]
#   print(palavraReversa)
#   if pNum == palavraReversa:
#     return print(f'Os numeros sao capicua {palavraReversa}')
#   else:
#     return print(f'Os numeros nao sao capicua {pNum} e {palavraReversa}')

# fCapicua('1001')
# #Funcoes
# x = 10
# print(x)

# def Soma (p1, p2, p3 = 'tarde'):
#   print(f'Bom {p3}')
#   return(p1 + p2)

# print(Soma(1,2))

# #parametros em numero variavel, e imutaveis pois sao tuplas
# def SomaVariavel (*p1):
#   print(f'Bom dia')
#   soma = 0
#   #p1(1) = 8
#   for elemento in p1:
#     soma += elemento
#   return(soma)

# print(SomaVariavel(1, 2, 2, 3))

# #parametros em numero variavel e com "nomes" (chave) variavel e nesse caso sao dicionarios

# def Apresentacao (**amigos):
#   print(f'Olá primeiro amigo {amigos["primeiro"]}!')
#   print(f'Olá terceiro amigo {amigos["terceiro"]}!')
#   # if amigos["quarto"] == 'Patricia':
#   #   print(f'Olá professora {amigos["quarto"]}!')

# Apresentacao(primeiro = 'Joao', segundo = 'Marcela', terceiro = 'Thiago')
# print()

# #apresentando o MAP
# print('Apresentando o Map')
# def AcrescentaValor (p1):
#   return(p1 + 5)

# minhaLista = [2, 456, 677, 7, -90, -100, 300]
# print(minhaLista)
# print('Percorrendo a Lista e acrescentando valor sem o MAP')
# minhaNovaLista = []
# for elemento in minhaLista:
#   minhaNovaLista.append(AcrescentaValor(elemento))
#   #print(AcrescentaValor(elemento))
# print(minhaNovaLista)

# print('Percorrendo a Lista e acrescentando valor com o MAP')
# minhaNovaListaMap = list(map(AcrescentaValor, minhaLista))
# print(minhaNovaListaMap)

#Escreva uma função  que verifique se um valor é perfeito ou não. Um valor é dito perfeito quando ele é igual a soma dos seus divisores excetuando ele próprio. (Ex: 6 é perfeito, 6 = 1 + 2 + 3, que são seus divisores)

# #Estevao
# lista =[]
# #8
# def numPerfeito (num):
#   soma_total = 0
#   #1, 2, 3, 4, 5, 6, 7
#   for i in range(1,num-1):
#     if num % i == 0:
#       lista.append(i)

#   for numero in lista:
#     soma_total += numero

#   if soma_total == num:
#     return(print(f'O numero {num} é perfeito'))
#     #return f'O numero {num} é perfeito'
#   else:
#     return(print(f'O numero {num} não é perfeito! Sua soma é {soma_total}'))



# num = int(input('\nDigite um número inteiro: '))
# numPerfeito(num)

#Luis Henrique

# def num_perfeito(x):
#     lista_divisores = []
#     for numero in range(1, x-1):
#         if x % numero == 0:
#             lista_divisores.append(numero)
#     if sum(lista_divisores) == x:
#         print('O número digitado é perfeito')
#     else:
#         print('O número digitado não é perfeito')

# num_perfeito(8)

#Faça uma função que peça o nome e a idade do jogador gere os 6 números da mega-sena. Dica: use a biblioteca random e função sample

# #Luis Henrique
# import random as rd

# def mega_senna():
#     nome = str(input('Adicione o nome de um jogador: '))
#     idade = int(input('Adicione a idade de um jogador: '))
#     print(f'Nome do jogador: {nome}')
#     print(f'Idade do jogador: {idade}')
#     print(rd.sample(range(1, 61), 6))

# mega_senna()

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# def dados_pessoais(**pDadosPessoas):
#     for chaves, valores in pDadosPessoas.items():
#         print(chaves[1:], ':', valores)
# dados_pessoais(pnome= 'Luis', psobrenome= 'Altero', pidade= 20)

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# def desconto(*ppreco):
#     lista_descontos = []
#     for numeros in ppreco:
#
#         lista_descontos.append(numeros * 0.8)
#     return print(lista_descontos)
#
# desconto(1000, 2000, 3000, 4000)
#
# def desconto_map (pprecos):
#     return (pprecos * 0.8)
#
# lista = [1000, 2000, 3000, 4000]
#
# print(list(map(desconto_map, lista)))

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# lista = [234, 64, 13467, 45.89, 23]
# lista_desconto = [0.3, 0.004, 0.5, 0.03, 0.8]
# lista_com_desconto = []
# temp = 0
# for item in lista_desconto:
#     temp = temp + 1
#     valor = lista[temp-1]
#     vl_com_desconto = valor - (item * valor)
#     lista_com_desconto.append(vl_com_desconto)
# print(lista_com_desconto)

# ou

# lista = [234, 64, 13467, 45.89, 23]
# lista_desconto = [0.3, 0.004, 0.5, 0.03, 0.8]
# lista_com_desconto = []
# temp = 0
# for numero in (range(len(lista_desconto))):
#     vl_com_desconto = lista[numero] - (lista_desconto[numero] * lista[numero])
#     lista_com_desconto.append(vl_com_desconto)
# print(lista_com_desconto)

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# lista = [234, 64, 13467, 45.89, 23]
# lista_desconto = [0.3, 0.004, 0.5, 0.03, 0.8]
#
# def calculo_desconto(pvalor, pdesconto):
#     return pvalor - (pvalor * pdesconto)
#
# print(list(map(calculo_desconto, lista, lista_desconto)))

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
# lista = [234, 64, 13467, 45.89, 23]
# lista_desconto = [0.3, 0.004, 0.5, 0.03, 0.8]
# meu_desconto = lambda pvalor, pdesconto : pvalor - (pvalor * pdesconto)
# print(list(map(meu_desconto, lista, lista_desconto)))

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------
from math import pi
# volume_esfera = lambda raio : (4 * pi * raio ** 3) / 3
# print(volume_esfera(2))

# meu_par = lambda pnumero : pnumero % 2 == 0
# print(meu_par(4))

# meu_par = lambda pnumero : True if pnumero % 2 == 0 else False
# print(meu_par(4))

# absoluto = lambda pnumero : True if pnumero >= 0 else False
# print(absoluto(40))













