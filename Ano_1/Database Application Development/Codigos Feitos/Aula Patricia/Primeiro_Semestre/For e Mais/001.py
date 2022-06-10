# b1 = 4.16
# b2 = 7.18
# band_utilized = 3
#
# while band_utilized >= 3:
#     band_utilized = int(input('Escolha entre bandeira 1 e bandeira 2. '))
#
#     if band_utilized <= 2:
#         location = str(input('Qual é o seu destino? '))
#         km_distance = float(input('Qual a quilometragem percorrida na viagem? '))
#         result1 = b1 * km_distance
#         result2 = b2 * km_distance
#
#
#         if band_utilized == 1:
#             print(f'O valor a pagar pela viagem até {location} será de R${result1:.2f}')
#
#         elif band_utilized == 2:
#             print(f'O valor a pagar pela viagem até {location} será de R${result2:.2f}')
#--------------------------------------------------------------------------------------------
# n_escolhido = 0
#
# while (n_escolhido < 1):
#     n_escolhido = int(input('Qual o numero escolhido ? '))
#
# if (n_escolhido >= 1) and (n_escolhido <=10) :
#         print('Primeira faixa')
#
# elif (n_escolhido >= 11) and (n_escolhido <=20) :
#         print('Segunda faixa')
#
# elif (n_escolhido >= 21) and (n_escolhido <= 30) :
#         print('Terceira faixa')
# else:
#     print('Chave invalida, tente novamente')
#--------------------------------------------------------------------------------------------
# dia = int(input('Digite o dia da semana desejado. '))
#
# if (dia==1):
#     print('domingo')
# elif (dia==2):  #elif e usado quando eu tenho um else
#     print('Segunda')
# elif (dia==3):
#     print('Terça')
# elif (dia==4):
#     print('Quarta')
# elif (dia==5):
#     print('Quinta')
# elif (dia==6):
#     print('Sexta')
# elif (dia==7):
#     print('Sabado')
# else:
#     print('Chave invalida')
#-------------------------------------------------------------------------------------------
# media = float(input('Qual a media anual do aluno em questao ? '))
#
# if (media >= 6) and (media <= 10):
#     print("Aprovado!")
# elif (media >= 4) and (media < 6):
#     print('Esta de Exame!')
# elif (media < 4) and (media >= 0):
#     print('Reprovado!')
# else:
#     print('Nota invalida!')
#------------------------------------------------------------------------------------------
# medida_a = float(input('Qual a medida do lado A ?'))
# medida_b = float(input('Qual a medida do lado B ?'))
# medida_c = float(input('Qual a medida do lado C ?'))
#
# if (medida_a == medida_b == medida_c == 0):
#     print('Nao é um triangulo')
#
# elif (medida_a == medida_b == medida_c):
#     print('O triangulo é equilatero')
# elif (medida_a == medida_b != medida_c ) or (medida_c == medida_b != medida_a ) or (medida_a == medida_c != medida_b ):
#     print('O triangulo é isosceles')
# elif (medida_a != medida_b != medida_c):
#     print('O triangulo é escaleno')
#------------------------------------------------------------------------------------------
# mes_escolhido = int(input('Qual o mes escolhido ?'))
#
# if (mes_escolhido >= 1) and (mes_escolhido <= 12):
#     mes_nome = str(input('Digite o nome do mes escolhido ?'))
#     print(f'O nome do mes {mes_escolhido} é {mes_nome}')
# else:
#     print('Mes inexistente')
#------------------------------------------------------------------------------------------
# ano = int(input('Digite o ano escolhido. '))
#
# if ( ano > 1000) and ( ano < 2999):
#
#     if (ano % 4 == 0) and (ano % 100 != 0) or (ano % 400 == 0):
#         print('O ano escolhido é bissexto')
#     else:
#         print('O ano escolhido nao é bissexto')
# else:
#     print('Ano inválido')
# ----------------------------------------------------------------------------------------
# n1 = float(input('Digite o primeiro numero. '))
# n2 = float(input('Digite o segundo numero. '))
# n3 = float(input('Digite o terceiro numero. '))
# n4 = float(input('Digite o quarto numero. '))
# lista = [n1, n2, n3, n4]
# lista.sort()
#
# print(lista)
# ----------------------------------------------------------------------------------------
# n1 = float(input('Digite o primeiro numero. '))
# n2 = float(input('Digite o segundo numero. '))
# n3 = float(input('Digite o terceiro numero. '))
#
# for n in (range(3)):
#     if n2 < n1 :
#         temp = n2
#         n2 = n1
#         n1 = temp
#     if n2 > n3 :
#         temp = n2
#         n2 = n3
#         n3 = temp
#     if n1 > n3 :
#         temp = n1
#         n1 = n3
#         n3 = temp
#
# print(n1, n2, n3)
# ----------------------------------------------------------------------------------------
from time import sleep
min = int(input('Coloque os minutos desejados no relogio: '))
seg = min * 60

for temp in range(min-1, -1, -1):
    for tempo in range(seg, -1, -1):
        sleep(0)
        if tempo == 60:
            tempo = 00
            print(f'{temp}min:{tempo}seg')
        if tempo > 0 and tempo < 60:
            print(f'{temp}min:{tempo}seg')









