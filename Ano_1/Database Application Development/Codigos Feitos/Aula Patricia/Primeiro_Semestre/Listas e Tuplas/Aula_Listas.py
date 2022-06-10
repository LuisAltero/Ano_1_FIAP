# minha_lista = ['a', 'b', 'c', 'a', 'b', 'c']
# print(type(minha_lista))
# print('Qtde intens na lista:' ,len(minha_lista))
#
# lista_menor = minha_lista[0:2]
# print('lista menor =' ,lista_menor)
#
# minha_lista[0:2] = ['D', 'E']
# print(minha_lista)
#
# print('Primeiro item', minha_lista[0])
# print('Ultimo item', minha_lista[-1])
# print('Penultimo item', minha_lista[-2])
#
# minha_lista.append('X')
# print(minha_lista)
#
# minha_lista.insert( 4, 'Y')
# print('Adicionando o Y' ,minha_lista)
#
# minha_lista.pop()
# print('Removendo a ultima letra' ,minha_lista)
#
# del minha_lista[-1]
# print('Removendo a ultima letra' ,minha_lista)
#
# minha_lista.remove('D')
# print(minha_lista)
# minha_lista.append('z')
# print(minha_lista)
#
# minha_lista.clear()
# print(minha_lista)
#
# outra_lista = list(('agua', 'açucar', 'tomate', 'banana', 3))
# print(outra_lista)
#
# minha_lista.extend(outra_lista)
# print(minha_lista)
# del minha_lista
#
# minha_lista = outra_lista
# mimos = ['baunilha', 'raspas de limao', 'chantilly']
# print(mimos)
#
# minha_lista = outra_lista + mimos
# print(minha_lista)
#
# com_tomate = minha_lista.index('tomate')
# print('Localozacao do tomate na lista', com_tomate)
#
# minha_lista.remove(3)
# minha_lista.sort()
# print(minha_lista)
#
# minha_lista.sort(reverse= True)
# print(minha_lista)
#
# #Usar esse comando para mater a ordem original da lista mimos, apenas alterando para o requinte
# requinte = sorted(mimos)
# print(requinte)
# print(mimos)
#
# MeusPets = list(('Puppy', 'Mel', 'Sniff'))
# print(MeusPets)
# MeusNovosPets = ['PapaPaulo', 'Furao Furto']
# print(MeusNovosPets)
# TodosPets = MeusPets + MeusNovosPets
# print(TodosPets)
#
# #extend extende a lista - modifica a lista original
# MeusPets.extend(MeusNovosPets)
# print(MeusPets)
#
# #append para adicionar itens
# MeusPets.append(MeusNovosPets)
# print(MeusPets)
#
# #pop remove um iten
# MeusPets.pop()
# print(MeusPets)
#
# #sort - modifica a lista original
# MeusPets.sort()
# print(MeusPets)
#
# #parte da lista
# print('de 1 a 2', MeusPets[1:3])
# print('de 0 a 2', MeusPets[:3]) #comeco da lista ate o item 3 nao incluido
# print('de 2 até o final', MeusPets[2:]) # do item 2 ate o ultimo
# #com pulos
# print('de 1 ao fim de 2 em 2', MeusPets[1::2])


#--------------------------------------------------------------------------------



minha_lista = 'puppy mel sniff biscoito sache'.split()

for item in minha_lista:
    print(item)

for letra in 'palavra':
    print(letra)

if 'sniff' in minha_lista:
    print('Tem o Sniff')

if 'snoff' in minha_lista:
    print('Tem o Snoff')
else:
    print('Nao tem o snoff')



















