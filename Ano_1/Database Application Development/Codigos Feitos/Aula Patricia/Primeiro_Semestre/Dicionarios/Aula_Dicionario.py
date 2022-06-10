



#Aula 13 - Coleções Dictionary

# colecoes do tipo chave valor
# parecido com formulario
# Nome: Patricia
# Sexo: Feminino
# Idade: 49

meuDicionario = {'nome':'Patrícia', 'sexo':'Feminino', 'idade':'49'}
print(meuDicionario)
print(type(meuDicionario))

outroDicionario = dict((('nome', 'Patrícia'), ('sexo', 'Feminino'), ('vacina_covid', False), (49,['risco', False])))

print(outroDicionario)

#recuperando o valor de um item
meuValor = meuDicionario['nome']
print('\n')
print(meuValor)

meuValor = outroDicionario[49]
print(meuValor)

meuValor = meuDicionario.get('idade')
print(meuValor)

#todos os itens
print('\n')
print('todos os itens')
meusItens = meuDicionario.items()
print(meusItens)

#todos as chaves
print('\n')
print('todos as chaves')
minhasChaves = meuDicionario.keys()
print(minhasChaves)

#todos os valores
print('\n')
print('todos os valores')
meusValores = meuDicionario.values()
print(meusValores)

#recuperando de maneira iterativa
#recuperando chaves
print('\n')
print('recuperando as chaves')
for chave in meuDicionario:
  print(chave)

print('\n')
print('recuperando as chaves equivalente')
for chave in meuDicionario.keys():
  print(chave)


#recuperando valores
print('\n')
print('recuperando os valores')
for chave in meuDicionario:
  valor = meuDicionario[chave]
  print(valor)

print('\n')
print('recuperando valores equivalente')
for valor in meuDicionario.values():
  print(valor)


#recuperando itens
print('\n')
print('recuperando os itens')
for chave, valor in meuDicionario.items():
  print(chave, valor)
  print(f'{chave}:{valor}')

#adicionando itens no meuDicionario
print('\n')
meuDicionario['tipo sangue'] = 'O-'
print(meuDicionario)

meuDicionario['idade'] = '50'
print(meuDicionario)

meuDicionario.update({'nome':'Patrícia Angelini'})
print(meuDicionario)

meuDicionario.update({'estado civil':'casada'})
print(meuDicionario)

del meuDicionario['idade']
print(meuDicionario)

meuDicionario.popitem()
print(meuDicionario)

meuDicionario.pop('tipo sangue')
print(meuDicionario)


meuDicionario.clear()
print(meuDicionario)

del meuDicionario
#print meuDicionario

meuDicionario = {'nome':'Patrícia', 'sexo':'Feminino', 'idade':'49'}

novoDicionario = meuDicionario.copy()
print(novoDicionario)

novoOutroDicionario = dict(meuDicionario)
print(novoDicionario)

nDicionario = meuDicionario
print(nDicionario)

if 'idade' in meuDicionario:
  print('Tem idade no meu dicionario')


meuDicionario.update({'estado civil':'casada'})
print(meuDicionario)

del meuDicionario['idade']
print(meuDicionario)

meuDicionario.popitem()
print(meuDicionario)

meuDicionario.pop('tipo sangue')
print(meuDicionario)


meuDicionario.clear()
print(meuDicionario)

del meuDicionario
#print meuDicionario

meuDicionario = {'nome':'Patrícia', 'sexo':'Feminino', 'idade':'49'}

novoDicionario = meuDicionario.copy()
print(novoDicionario)

novoOutroDicionario = dict(meuDicionario)
print(novoDicionario)

nDicionario = meuDicionario
print(nDicionario)

if 'idade' in meuDicionario:
  print('Tem idade no meu dicionario')
















