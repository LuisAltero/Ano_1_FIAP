# http://www.dontpad.com/2021_1TBDA


#Aula 12 Coleções - Conjuntos
meuConjunto = {'rosa', 'camelia', 'geranio', 'artemisia'}
print(meuConjunto)
print(type(meuConjunto))
print(len(meuConjunto))

outroConjunto = {'pinheiro', -10, 'capuchinha', False}
print(outroConjunto)

maisumConjunto = {'rosa', 'bromelia', 'orquidea', 'rosa', 'bromelia'}
print(maisumConjunto)

#nao é possivel substituir itens, nem imprimir pela posicao
#print(meuConjunto[0])
#meuConjunto[0] = 'cafe'

#adicionar
meuConjunto.add('orquidea')
print('\n')
print(meuConjunto)

#eliminar itens
meuConjunto.remove('artemisia')
print('\n')
print(meuConjunto)
meuConjunto.discard('geranio')
print(meuConjunto)
meuConjunto.pop()
print(meuConjunto)

meuConjunto.clear()
print(meuConjunto)

del meuConjunto
#print(meuConjunto)

meuConjunto = {'rosa', 'camelia', 'geranio', 'artemisia'}
maisumConjunto = {'rosa', 'bromelia', 'orquidea', 'rosa', 'bromelia'}
outroConjunto = {'pinheiro', -10, 'capuchinha', False, 'rosa'}
# equivale a operacao de adicao +, eliminando os duplicados
# equivale ao STATEMENT UNION no SQL
novoConjunto = meuConjunto.union(outroConjunto)
print('\n')
print(meuConjunto)
print(outroConjunto)
print(novoConjunto)

#todas operacaoes com o nome de updade modificam o proprio conjunto
#nesse caso, será feito um union que vai modificar o proprio conjunto
#equivale ao extend da lista sem ordem e sem duplicados
print('\n')
print('Update')
outroConjunto.update(meuConjunto)
print(outroConjunto)

#a operacao de intersecção em conjunto mostra apenas aqueles itens "duplicados", ou seja os itens que são iguais em um conjunto e em outro conjunto
# equivale ao STATEMENT INTERSECT no SQL (Oracle)
meuConjunto = {'rosa', 'camelia', 'geranio', 'artemisia', 'orquidea'}
seuConjunto = {'rosa', 'bromelia', 'orquidea', 'rosa', 'bromelia'}
print('\n')
print('Interseção')
nossoConjuntoIgual = meuConjunto.intersection(seuConjunto)
print(nossoConjuntoIgual)
print('\n')
print('Interseção modificando o proprio conjunto')
seuConjunto.intersection_update(meuConjunto)
print(seuConjunto)

#a operacao de differente em conjunto mostra apenas aqueles itens "diferentes" entre um conjunto e outro
# equivale a 2 commando INTERSECT e o MINUS no SQL (Oracle)
meuConjunto = {'rosa', 'camelia', 'geranio', 'artemisia', 'orquidea'}
seuConjunto = {'rosa', 'bromelia', 'orquidea', 'rosa', 'bromelia'}
print('\n')
print('Diferentes')
nossoConjuntoDiferente = meuConjunto.symmetric_difference(seuConjunto)
print(nossoConjuntoDiferente)
print('\n')
print('Diferentes modificando o proprio conjunto')
seuConjunto.symmetric_difference_update(meuConjunto)
print(seuConjunto)

#localizaco de item
if 'bromelia' in seuConjunto:
  print('Tem bromelia')





