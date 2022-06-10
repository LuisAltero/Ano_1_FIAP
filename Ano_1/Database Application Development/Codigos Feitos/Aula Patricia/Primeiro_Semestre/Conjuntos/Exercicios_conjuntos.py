
conjunto_coisas = set()
resposta = 'sim'

while resposta == 'sim' or resposta == 's':
    coisas = str(input('Digite o objeto que sera levado ao elevador: '))
    conjunto_coisas.add(coisas)
    resposta = str(input('Adicionar mais objetos ? ')).lower()

print(conjunto_coisas)










