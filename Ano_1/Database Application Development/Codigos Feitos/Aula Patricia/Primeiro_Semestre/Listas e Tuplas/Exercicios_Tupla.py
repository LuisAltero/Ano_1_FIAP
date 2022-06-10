
# entradas = []
# resposta = 'sim'
#
# while resposta == 'sim' or resposta == 's':
#     comidas = str(input('Digite as entradas do cardapio do evento: '))
#     entradas.append(comidas)
#     resposta = str(input('Adicionar mais entradas ? ')).lower()
#
# print(entradas)

#---------------------------------------------------------------------------

# entradas = []
# resposta = 'sim'
#
# while resposta == 'sim' or resposta == 's':
#     comidas = str(input('Digite as entradas do cardapio do evento: '))
#     entradas.append(comidas)
#     resposta = str(input('Adicionar mais entradas ? ')).lower()
#
# tupla = tuple(entradas)
# print(tupla)

#---------------------------------------------------------------------------

# entradas = []
# resposta = 'sim'
#
# while resposta == 'sim' or resposta == 's':
#     comidas = str(input('Digite as entradas do cardapio do evento: '))
#     entradas.append(comidas)
#     resposta = str(input('Adicionar mais entradas ? ')).lower()
#
# tupla = tuple(entradas)
# tupla = list(entradas)
# local_queijo = tupla.index('queijo roquefort')
# tupla.insert(local_queijo + 1 ,'azeitona')
# tuple(tupla)
# print(tupla)

#---------------------------------------------------------------------------

# entradas = []
# resposta = 'sim'
#
# while resposta == 'sim' or resposta == 's':
#     comidas = str(input('Digite as entradas do cardapio do evento: '))
#     entradas.append(comidas)
#     resposta = str(input('Adicionar mais entradas ? ')).lower()
#
# tupla = tuple(entradas)
# tupla = list(entradas)
# local_queijo = tupla.index('queijo roquefort')
# tupla.insert(local_queijo + 1 ,'azeitona')
# minha_tupla = tupla[:-3]
# tupla_irma = tupla[-3:]
# tupla = tuple(entradas)
# tupla_irma = tuple(tupla_irma)
# print('Minha tupla é igual a:', minha_tupla)
# print('A tupla da minha irma é igual a:', tupla_irma)

#---------------------------------------------------------------------------

entradas = []
resposta = 'sim'

while resposta == 'sim' or resposta == 's':
    comidas = str(input('Digite as entradas do cardapio do evento: '))
    entradas.append(comidas)
    resposta = str(input('Adicionar mais entradas ? ')).lower()

tupla = tuple(entradas)
tupla = list(entradas)
local_queijo = tupla.index('queijo roquefort')
tupla.insert(local_queijo + 1 ,'azeitona')
minha_tupla = tupla[:-3]
tupla_irma = tupla[-3:]
tupla = tuple(entradas)
couple = []
tupla_irma_nova = []
for item in tupla_irma:
    quantidade = int(input(f'Digite a quantidade do item {item}: '))
    couple = [item, quantidade]
    tupla_irma_nova.append(couple)

print('Minha tupla é igual a:', minha_tupla)
print('A tupla da minha irma é igual a:', tuple(tupla_irma_nova))

























