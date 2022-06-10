import csv

# §Recupere todas as linhas do arquivo .CSV
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.reader(arq, delimiter=';')
#     lista_alunos = list(tabela_aluno)
#     for linha in lista_alunos:
#         print(f'\n {linha}')


# §Pule o HEADER do arquivo .CSV
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.reader(arq, delimiter=';')
#     lista_alunos = list(tabela_aluno)
#     for linha in lista_alunos[1:]:
#         print(f'\n {linha}')


# §Leia o arquivo .CSV e imprima a linha 5 campo 2 e imprima
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.reader(arq, delimiter=';')
#     lista_alunos = list(tabela_aluno)
#     print(f'\nCampo: {lista_alunos[5][1]}')


# §Leia o arquivo .CSV transforme em tuple, leia todas as linhas e o primeiro campo
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.reader(arq, delimiter = ';')
#     tupla_alunos = list(map(tuple, tabela_aluno))
#     print(tupla_alunos)
#     print(f'\nLinha: {tupla_alunos[1]}')

# §Leia o arquivo .CSV  como dicionário e recupere todos os campos. Imprima
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     for linhas in lista_aluno:
#         print(linhas)


# §Leia o arquivo .CSV como dicionário e imprima todos os nomes
# with open('alunos.csv', 'r') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     for linhas in lista_aluno:
#         print(linhas['nome'])


# §Abra o arquivo .CSV e acrescente duas linhas
# with open('alunos_teste.csv', 'a+') as arq:
#     tabela_aluno = csv.writer(arq, delimiter = ';')
#     tabela_aluno.writerow([])


# §Joana Canto de 22 anos, Isadora Melbe de 45 anos
# with open('alunos_teste.csv', 'a+') as arq:
#     tabela_aluno = csv.writer(arq, delimiter = ';')
#     tabela_aluno.writerow('Joana Canto 22'.split())
#     tabela_aluno.writerow('Isadora Melbe 45'.split())


# §Abra o arquivo .CSV como dicionário e acrescente duas linhas
# with open('alunos.csv', 'a+') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     lista_aluno.append([])
#     lista_aluno.append([])



# §Roberto Silva de 60 anos, Simone Borges de 37 anos
# with open('alunos.csv', 'a+') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     tabela_aluno.writerow(['Roberto Silva 60'.split()])
#     tabela_aluno.writerow(['Simone Borges 37'.split()])





#antes coloque o header na primeira linha
# with open('alunos_teste.csv', 'w') as arqAluno:
#     tabela = csv.writer(arqAluno, delimiter= ';')
#     cabecalho = ['nome', 'sobrenome', 'idade']
#     dados = ['Mel', 'Del Vecchio', 20]
#     tabela.writerow(cabecalho)
#     tabela.writerow(dados)



# 1.Leia o arquivo .CSV como dicionário e recupere todos os campos. Imprima
# with open('alunos.csv', 'r', encoding= 'UTF-8') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     for linhas in lista_aluno:
#         print(linhas)

# 2.Leia o arquivo .CSV como dicionário e imprima todos os nomes
# with open('alunos.csv', 'r', encoding= 'UTF-8') as arq:
#     tabela_aluno = csv.DictReader(arq, delimiter = ';')
#     lista_aluno = list(tabela_aluno)
#     for linhas in lista_aluno:
#         print(linhas['nome'])

# 3.Abra o arquivo .CSV e acrescente duas linhas (como lista) - Joana Canto de 22 anos, Isadora Melbe de 45 anos
# with open('alunos.csv', 'a+', encoding= 'UTF-8') as arq:
#     tabela_aluno = csv.writer(arq, delimiter = ';')
#     tabela_aluno.writerow(['Joana', 'Canto', 22])
#     tabela_aluno.writerow(['Isadora', 'Melbe', 45])

# 4.Abra o arquivo .CSV como dicionário e acrescente duas linhas - Roberto Silva de 60 anos, Simone Borges de 37 anos
# with open('alunos.csv', 'a+', encoding= 'UTF-8') as arq:
#     campos = ['nome', 'sobrenome', 'idade']
#     tabela_aluno = csv.DictWriter(arq, delimiter = ';', fieldnames= campos)
#     tabela_aluno.writerow({'nome': 'Roberto', 'sobrenome': 'Silva', 'idade':  60})
#     tabela_aluno.writerow({'nome': 'Simone', 'sobrenome': 'Borges', 'idade':  37})







