
minha_tupla = ('sono', 'comida', 'sol', 'sono')
print(minha_tupla)
print(type(minha_tupla))
print('Quantidade de itens na tupla:', len(minha_tupla))
print('Quantidade de itens na tupla: '+ str(len(minha_tupla)))

#lista heterogenia
outra_tupla = tuple(('respirar', 100000, 'verdade', True))
print(outra_tupla)

pequena_tupla = minha_tupla[2:3]
#tupla de um unico item tem uma virgula dentro
print(pequena_tupla)
pequena_tupla = minha_tupla[1:3]
print(pequena_tupla)

pequena_tupla = ('saude', 'alegria')
print(pequena_tupla)

print('Primeiro item =', minha_tupla[0])
print('Ultimo item =', minha_tupla[-1])
print('Penultimo item =', minha_tupla[-2])

#imprimindo parte da lista
print('Do começo ate o item 2 nao incluso', minha_tupla[:2])
print('Do item 2 ate o fim da lista', minha_tupla[2:])

#para operacoes que modificam a tupla é necessario converter para lista
minha_tupla = list(minha_tupla)
minha_tupla.append('flores')
minha_tupla = tuple(minha_tupla)
print(minha_tupla)

#copiando
mais_uma_tupla = minha_tupla
print(mais_uma_tupla)

brinquedos = ('bola', 'skate', 'aquarela')
mais_uma_tupla = minha_tupla + brinquedos
print(mais_uma_tupla)

#localizar item
tem_sol = minha_tupla.index('sol')
print('Tem sol na posiçao', tem_sol)

#comparacao
if 'flores' in minha_tupla:
    print('Tem flores')

#ordenacao
minha_tupla_ordenada = sorted(minha_tupla)
print(minha_tupla_ordenada)
print(type(minha_tupla_ordenada))
minha_tupla_ordenada = tuple(sorted(minha_tupla))
print(type(minha_tupla_ordenada))

tupla_unica = (('alegria', ))
print(tupla_unica)
print(type(tupla_unica))

tupla_unica_fake = (('alegria'))
print(type(tupla_unica_fake))

minhas_frutas = ('banana', 'melao', 'caqui')
print(minhas_frutas)
frutas_minha_filha = minhas_frutas * 2
print(frutas_minha_filha)






