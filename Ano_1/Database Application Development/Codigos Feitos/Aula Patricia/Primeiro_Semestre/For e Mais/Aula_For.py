


# print('Tabuada')
# numero = int(input('Escolha o numero desejado para exibir a Tabuada: '))
#
# for n_tabuada in (range(1,11)):
#     tabuada = numero * n_tabuada
#     print(f'{numero} X {n_tabuada} = {tabuada}')


#-------------------------------------------------------------------------------


# for numero in (range(1,31)):
#     if numero % 4 == 0:
#         print('PIM')
#     else:
#         print(numero)


#-------------------------------------------------------------------------------


# n1 = int(input('Digite o primeiro numero: '))
# n2 = int(input('Digite o segundo numero: '))
#
#
# for n in (range(n1, n2+1)):
#     if n % 5 == 0:
#         print(n)


#------------------------------------------------------------------------------


# lista = list(range(0, 61))
# lista.sort(reverse=True)
# print(lista)


#------------------------------------------------------------------------------


# n_dig = int(input('Digite um numero para dividir a sequencia entre 0 e 100.'))
#
# for numero in (range(1, 101)):
#     if numero % n_dig == 0:
#         print(numero)


#------------------------------------------------------------------------------


# for n in (range(2,601,2)):
#     print(n)


#-----------------------------------------------------------------------------


# n1 = int(input('Digite um numero de 4 digitos: ')[::-1])
#
# print(n1)


#-----------------------------------------------------------------------------


# n1= int(input('Digite o primeiro numero:'))
# n2= int(input('Digite o segundo numero:'))
# n3= int(input('Digite o terceiro numero:'))
# n4= int(input('Digite o quarto numero:'))
# n5= int(input('Digite o quinto numero:'))
# n6= int(input('Digite o sexto numero:'))
# n7= int(input('Digite o setimo numero:'))
# n8= int(input('Digite o oitavo numero:'))
# n9= int(input('Digite o nono numero:'))
# n10= int(input('Digite o decimo numero:'))
#
#
# for numero in (n1, n2, n3, n4, n5, n6, n7 , n8, n9, n10):
#     div = numero / 3
#     print(div)


#----------------------------------------------------------------------------


# for n1 in range(10):
#     n2 = int(input('Digite um numero: '))
#     div = n2 / 3
#
#     print(f'{div:.2f}')


#---------------------------------------------------------------------------


# sp = 'Paulista'
# ba = 'Baiano'
# mg = 'mineiro'
# rj = 'Carioca'
# ce = 'Cearense'
#
# estado = str(input('Digite a sigla do seu esdado: ')).upper()
# if estado == 'SP':
#     print(sp)
# elif estado == 'BA':
#     print(ba)
# elif estado == 'MG':
#     print(mg)
# elif estado == 'RJ':
#     print(rj)
# elif estado == 'CE':
#     print(ce)


#---------------------------------------------------------------------------


# x = int(input('Digite o valor do numero X:'))
# y = int(input('Digite o valor do numero Y:'))
#
# pot = 1
# if x > 1 and y >= 2:
#     for n in (range(1, y+1)):
#         pot = x * pot
#     print(pot)


#---------------------------------------------------------------------------

#
# n1= int(input('Digite o primeiro numero:'))
# n2= int(input('Digite o segundo numero:'))
# n3= int(input('Digite o terceiro numero:'))
#
# for i in (range(3)):
#     if n2 > n1:
#         temp = n1
#         n1 = n2
#         n2 = temp
#     if n3 > n2:
#         temp = n2
#         n2 = n3
#         n3 = temp
#     if n1 > n3:
#         temp = n1
#         n1 = n3
#         n3 = temp
#
# print (n1, n2, n3)


#---------------------------------------------------------------------------


# from time import sleep
# min = int(input('Coloque os minutos desejados no relogio: '))
# seg = min * 60
#
# for temp in range(min):
#     for tempo in range(1, seg+1):
#         sleep(0)
#         if tempo == 60:
#             tempo = 00
#             temp += 1
#             print(f'{temp:02}:{tempo:02}')
#         elif tempo > 0 and tempo < 60:
#             print(f'{temp:02}:{tempo:02}')


#---------------------------------------------------------------------------


# from time import sleep
# min = int(input('Coloque os minutos desejados no relogio: '))
#
# print(f'{min:02}:00')
# for temp in range(min-1, -1, -1):
#     for tempo in range(59, -1, -1):
#         sleep(0)
#         print(f'{temp:02}:{tempo:02}')



































