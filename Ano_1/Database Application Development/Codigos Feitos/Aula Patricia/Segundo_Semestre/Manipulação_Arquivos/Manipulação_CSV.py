
# Manipulando arquivos
# Texto
# With faz o fechamento do arquivo implicitamente

# with open('alunos.csv', 'r') as arq:
    # print(arq.read())


import csv
with open('alunos.csv', 'r') as arq:
    tabela_aluno = csv.reader(arq, delimiter=';')

    lista_alunos = list(tabela_aluno)
    print(lista_alunos)
    print(f'\nLinha: {lista_alunos[1]}')
    print(f'\nElemento: {lista_alunos[1][1]}')
    print('\n Conjunto de Linhas')
    for linha in lista_alunos:
        print(f'\n {linha}')

print('\n CSV COMO TUPLA')
with open('alunos_idade.csv', 'r') as arqAluno:
    tabelaAluno = csv.reader(arqAluno, delimiter = ';')
    listatuplaAlunos = list(map(tuple, tabelaAluno))
    print(listatuplaAlunos)
    print(f'\nLinha: {listatuplaAlunos[1]}')
    print(f'\nElemento: {listatuplaAlunos[1][1]}')

print('\n CSV COMO DICIONARIO')
with open('alunos_idade.csv', 'r') as arqAluno:
    tabelaAluno = csv.DictReader(arqAluno, delimiter = ';')
    listadictAlunos = list(tabelaAluno)
    print(listadictAlunos)
    print(f'\nLinha: {listadictAlunos[0]}')
    print(f'\nElemento: {listadictAlunos[0]["sobrenome"]}')
    #imprimir as chaves do meu arquivo csv
    print(tabelaAluno.fieldnames)


#Escrever um arquivo CSV com biblioteca especializada
lAluno = ['Luís Henrique', 'Caldas', 19]
with open('alunos_idade.csv', 'a+') as arqAluno:
    tabelaAluno = csv.writer(arqAluno, delimiter = ';')
    #o equivalente de \n eh imprimir uma lista vazia
    tabelaAluno.writerow([])
    tabelaAluno.writerow(lAluno)


with open('alunos_idade_novo.csv', 'w') as arqAluno:
    campos = ['nome', 'sobrenome', 'age']
    tabelaAluno = csv.DictWriter(arqAluno, delimiter = ';', fieldnames = campos)
    linhadicAluno = {'nome':'Antonio', 'sobrenome':'Lima', 'age':56}
    tabelaAluno.writerow(linhadicAluno)


with open('alunos_idade.csv', 'r') as arqAluno:
    csvtabela = csv.reader(arqAluno, delimiter = ';')
    for linha in csvtabela:
        print(linha)

print('\n\n\n')
with open('alunos_idade.csv', 'r') as arqAluno:
    csvtabela = csv.reader(arqAluno, delimiter = ';')
    listatabela = list(csvtabela)
    print(listatabela)
    print('\n\n\n')
    for linha in listatabela:
        print(linha)

# print('\n\n')
# with open('alunos_idade_hoje.csv', 'w') as arqAluno: