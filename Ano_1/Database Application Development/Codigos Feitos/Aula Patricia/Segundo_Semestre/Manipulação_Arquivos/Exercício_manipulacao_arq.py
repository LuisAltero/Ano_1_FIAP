# Exercícios

# Leia o arquivo abaixo e escreva imprima os primeiros 10 carateres
arq = open('FIAP_Aula-11.txt', 'r')
# print(arq.readline(10))

# Leia o arquivo abaixo e separe em linhas. Conte quantas linhas tem o arquivo.
# arq.seek(0)
# print(len(arq.readlines()))

# Feche o arquivo e verifique se ele está fechado.
# arq.close()
# print(arq.read())

# Leia um arquivo e imprima suas linhas uma a uma. (não use lista)
# arq = open('FIAP_Aula-11.txt', 'r')
# for lines in arq:
#     print(arq.readline())

# Imprima o arquivo anterior novamente.
# Transforme o arquivo em uma lista de linhas para serem impressas!
# arq.seek(0)
# lista = arq.readlines()
# print(lista)

# Dada a lista abaixo, escreva em um aquivo
# --ListaCapitais = ['São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Curitiba’]
# arq = open('Estados.txt', 'w')
# arq.writelines(['São Paulo\n', 'Rio de Janeiro\n', 'Belo Horizonte\n', 'Curitiba\n'])
# arq.close()

# Escreva um arquivo chamado compras_sexta.txt. Pergunte ao usuário a lista de compras.
# arq = open('compras_sexta.txt', 'w')
# resp = 's'
# while resp == 's':
#     compras = str(input('Digite um item da lista de compras: ')).lower()
#     arq.writelines(f'{compras}\n')
#     resp = str(input('Quer adicionar mais itens? S/N'))
# arq.close()

# Escreva um item em cada linha
# arq = open('compras_sexta.txt', 'w')
# resp = 's'
# while resp == 's':
#     compras = str(input('Digite um item da lista de compras: ')).lower()
#     arq.writelines(f'{compras}\n')
#     resp = str(input('Quer adicionar mais itens? S/N'))
# arq.close()



# Leia um arquivo e escreva outro igual
# arq = open('cópia_compras_sexta.txt', 'w')
# arq.write((open('compras_sexta.txt', 'r')).read())
# arq.close()



# Leia um arquivo e escreva outro com as primeiras 3 letras de cada linha
# arq = open('cópia_compras_sexta.txt', 'w')
# arq_2 = open('compras_sexta.txt', 'r')
# for lines in arq_2:
#     arq.write(f'{lines[0:2]}\n')
# arq.close()
# arq_2.close()


# Manipule o arquivo anterior para acrescentar mais 5 linhas em com a palavra música
# arq = open('cópia_compras_sexta.txt', 'a')
# arq_2 = open('compras_sexta.txt', 'r')
# for lines in range(1, 6):
#     arq.write(f'música\n')
# arq.close()
# arq_2.close()


# Abra o arquivo anterior com try e finally e imprima a 3 linha. Não esqueça de fechar o arquivo
# try:
#     arq = open('Estados.txt', 'r')
#     print(arq.readlines()[2].strip())
# finally:
#     arq.close()

#Abra o arquivo anterior com with e só imprima as linhas pares
# with open('Estados.txt', 'r') as arq:
#     cont = 0
#     for linha in arq:
#         cont = cont + 1
#         if cont % 2 == 0:
#             print(linha)

#Abra o arquivo anterior com with e grave outro arquivo linha a linha acrescentando um NUMERO crescente ao inicio de cada linha
with open('Estados.txt', 'r') as arq:
    arq_copy = open('CópiaEstados.txt', 'w')
    serie = 0
    for lines in arq:
        serie = serie + 1
        arq_copy.writelines(f'{serie} - {lines}')
    arq_copy.close()

#Remova a copia do arquivo
# import os
# try:
#     os.remove('CópiaEstados.txt')
# except OSError as e:
#     print(f'{e.strerror}')


# DESAFIO: reescreva o algoritmo anterior (lista de compras sexta feira) para pedir todos os itens de compras separados por vírgula e mantenha escrevendo os itens em linhas separadas.
# A entrada de dados: pao, macarrao,café, tomate
# A saida em arquivo
# pao
# macarrao
# café
# tomate

# texto = 'pao, macarrao,café, tomate'
# texto = texto.split(',')
# rem_esp = lambda palavra: palavra.strip() + '\n'
# arq = open('teste.txt', 'w')
# for itens in texto:
#     arq.writelines(rem_esp(itens))
# arq.close()
