#Manipulação Arquivos

#Abrindo Arquivo
arq_alunos = open('alunos_idade.txt', 'r')

# #Lendo Arquivo
# leitura = arq_alunos.readline()
# print(leitura)
#
# leitura = arq_alunos.readline()
# print(leitura)

# arq_alunos.seek(0)
# lista_linhas = arq_alunos.readlines()
# print(lista_linhas)

#Lendo o arquivo completo a partir de onde o cursor está
texto_completo = arq_alunos.read()
print(texto_completo)

#Lendo o arquivo completo desde o início
arq_alunos.seek(0)
texto_completo = arq_alunos.read()
print(f'\n\n{texto_completo}')

#Lendo o arquivo parcialmente desde o início
arq_alunos.seek(0)
texto_completo = arq_alunos.read(80)
print(f'\n\n{texto_completo}')

#Manipulação Arquivos

# print('Abrindo arquivo')
# arqAlunos = open('alunos_idade.txt','r')
#
# print('Imprimindo Linha')
# linha = arqAlunos.readline()
# print(linha)
# linha = arqAlunos.readline()
# print(linha)
#
# print('Imprimindo o Restante das linhas')
# for linha in arqAlunos:
#   print(linha)
#
# linha = arqAlunos.readline()
# print(linha)
# linha = arqAlunos.readline()
# print(linha)
# linha = arqAlunos.readline()
# print(linha)
# linha = arqAlunos.readline()
# print(linha)
#
# print('Voltando o arquivo para a primeira posicao')
# arqAlunos.seek(0)
# linha = arqAlunos.readline().rstrip()
# print(linha)
#
# print('Transformando o arquivo em uma lista de linhas')
# arqAlunos.seek(0)
# listaLinhas = arqAlunos.readlines()
# print(listaLinhas)
#
# print('Imprimindo uma linha especifica')
# linha_2 = listaLinhas[2]
# print(linha_2)
#
# print('Imprimindo uma linha a partir de uma posicao')
# arqAlunos.seek(101)
# print(arqAlunos.readline())
#
# print('\nLendo o arquivo completo a partir de onde o cursor está')
# texto = arqAlunos.read()
# print(texto)
#
# print('\nLendo o arquivo completo desde o incio')
# arqAlunos.seek(0)
# texto = arqAlunos.read()
# print(texto)
#
# print('\nDescobrindo onde o cursor se encontra')
# print('O arquivo está na posicao:', arqAlunos.tell())
#
# print('\nLendo o arquivo parcialmente desde o incio')
# arqAlunos.seek(0)
# texto = arqAlunos.read(80)
# print(texto)
#
# print('\nLendo o arquivo parcialmente usando funcoes conhecidas de string')
# arqAlunos.seek(0)
# texto = arqAlunos.read()
# print(texto[9:140])
#
# print('\nSeparando uma linha em palavras')
# arqAlunos.seek(0)
# linha = arqAlunos.readline()
# print(linha)
# listaPalavras = linha.split()
# print(listaPalavras)
#
#
# print('\nFechando um arquivo')
# arqAlunos.close()
#
# # linha = arqAlunos.readline()
# # print(linha)
#
# if arqAlunos.closed:
#   print('Arquivo fechado')
#
# print('Abrindo arquivo para escrita')
# arqOlaMundo = open('ola_mundo.txt','w')
#
# print('Escrevendo uma frase')
# arqOlaMundo.write('Meu primeiro arquivo')
#
# print('Escrevendo outra frase grudada')
# arqOlaMundo.write('Outra frase')
#
#
# print('Escrevendo outra frase separada')
# arqOlaMundo.write('\nOutra frase separada')
#
# arqOlaMundo.close()


# Manipulacao de arquivos

# #abre
#
# arqAluno = open('alunos_idade.txt', 'r')
#
# #le inteiro
# print(arqAluno.read())
#
# #voltar o cursor para o inicio do arquivo
#
# arqAluno.seek(0)
#
# #le uma linha
# print(arqAluno.readline())
# print(arqAluno.readline().rstrip())
# print(arqAluno.readline().rstrip())
#
# #descobrir onde o cursor esta posicionado
# print(arqAluno.tell())
#
# #le linha a linha
# arqAluno.seek(0)
# for linha in arqAluno:
#   print(linha)
#
# #le linhas
# arqAluno.seek(0)
# linhas = arqAluno.readlines()
# print(linhas)
#
# #escreve
# #o modo w cria um arquivo e se ele já existir ele sobrescreve
# arqAlunoEscrita = open('aluno.txt', 'w')
# arqAlunoEscrita.write('Matheus')
# arqAlunoEscrita.write('\n')
#
# #escreve linha a linha
# arqAlunoEscrita.writelines(['Vitor\n', 'Luis Henrique\n', 'Marcela\n'])
#
#
# #fecha
# arqAlunoEscrita.close()
# #fecha
# arqAluno.close()

#---------------------------------------------------------------------------------------------------------------------------------------


#Manipulacao de arquivos

# arqAlunos = open('alunos_idade.txt', 'r')
# print(arqAlunos.read())

# x=2/0

# arqAlunos.close()
# print('\nArquivo fechado?')
# print(arqAlunos.closed)

# print('\nManipulando arquivo com bloco try / finally - liberacao de recursos explicita')
# try:
#   arqAlunos = open('alunos_idade.txt', 'r')
#   print(arqAlunos.read())
#
#   x=2/0
# except ZeroDivisionError as e:
#   print('\n\nDivisão por zero')
# finally:
#   arqAlunos.close()
#   print('\nArquivo fechado?')
#   print(arqAlunos.closed)
#
#
#
# print('\nManipulando arquivo com with - implicitamente tem uma liberacao de recursos')

# #Exemplo para verificar se o arquivo esta fechado
# try:
#   with open('alunos_idade.txt', 'r') as arqAlunos:
#     print(arqAlunos.read())

#     x=2/0
#     print('\nArquivo fechado?')
#     print(arqAlunos.closed)
# finally:
#   print('\nArquivo AGORA fechado?')
#   print(arqAlunos.closed)


# with open('alunos_idade.txt', 'r') as arqAlunos:
#   print(arqAlunos.read())
# print('\nArquivo AGORA fechado?')
# print(arqAlunos.closed)
#
# import os
# try:
#   os.remove('alunos_idade_copia_marcela.txt')
# except OSError as e:
#   print(f'{e.strerror}')
#
# if(os.path.exists('alunos_idade_copia_marcela.txt')):
#   os.remove('alunos_idade_copia_marcela.txt')
# else:
#   print('arquivo inexistente')










