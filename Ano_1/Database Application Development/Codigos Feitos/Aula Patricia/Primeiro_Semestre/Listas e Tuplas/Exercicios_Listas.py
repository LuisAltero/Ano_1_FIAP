

# n_conv = int(input('Coloque a quantidade de convidos: '))
# n_anf = int(input('Coloque a quantidade de convidos: '))
# if (n_conv + n_anf) <= 15:
#     listagem = []
#     for p in range(0, n_conv ):
#         nome_p = str(input('Digite um nome para colocar na lista: '))
#         nn = nome_p.upper()
#         listagem.append(nn)
#     if 'JOAO' in listagem:
#         print(listagem)
#     else:
#         print('Voce esqueceu do Joao')
#
# else:
#     print('A quantidade de convidados passou do limite')


#---------------------------------------------------------------------------------


# n_conv = int(input('Coloque a quantidade de convidados: '))
# n_anf = int(input('Coloque a quantidade de anfitrioes: '))
# if (n_conv + n_anf) <= 15:
#     listagem = []
#     lista_rg = []
#     for p in range(0, n_conv):
#         nome_p = str(input('Digite um nome para colocar na lista: '))
#         rg_p = int(input('Digite o rg da pessoa colocada anteriormente lista: '))
#         nn = nome_p.upper()
#         listagem.append(nn)
#         lista_rg.append(f'{nn} - {rg_p}')
#     if 'JOAO' in listagem:
#         lista_rg.sort
#         print(lista_rg)
#     else:
#         print('Voce esqueceu do Joao')
#
# else:
#     print('A quantidade de convidados passou do limite')
#

#------------------------------------------------------------------------------------------



# n_conv = int(input('Coloque a quantidade de convidados: '))
# n_anf = int(input('Coloque a quantidade de anfitrioes: '))
# if (n_conv + n_anf) <= 15:
#     listagem = []
#     lista_rg = []
#     for p in range(0, n_conv):
#         nome_p = str(input('Digite um nome para colocar na lista: '))
#         nn = nome_p.upper()
#         listagem.append(nn)
#
#     if 'JOAO' in listagem:
#         listagem.sort()
#         print(listagem)
#
#     else:
#         print('Voce esqueceu do Joao')
#
#     for i in range(len(listagem)):
#         rg_p = int(input(f'Digite o rg da pessoa com o nome {listagem[i]} da lista: '))
#         lista_rg.append(listagem[i])
#         lista_rg.append(rg_p)
#         print(lista_rg)
# else:
#     print('A quantidade de convidados passou do limite')


#-----------------------------------------------------------------------------------------


resp = 'SIM'
listagem = []
lista_rg = []
while resp == 'SIM':
    nome_p = str(input('Digite um nome para colocar na lista: '))
    nn = nome_p.upper()
    listagem.append(nn)

    resp = str(input('Adicionar mais convidados ? Sim ou Não?')).upper()
else:
    print('A quantidade de convidados é:', len(listagem))

    for i in range(len(listagem)):
        rg_p = int(input(f'Digite o rg da pessoa com o nome {listagem[i]} da lista: '))
        lista_rg.append(listagem[i])
        lista_rg.append(rg_p)

if 'JOAO' in listagem:
    listagem.sort()
    print(lista_rg)

else:
    print('Voce esqueceu do Joao')


#-----------------------------------------------------------------------------------------
























