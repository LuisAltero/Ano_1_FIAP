# Questão 2
# qtd_dias = int(input('Deseja fazer a média da temperatura de quantos dias? '))
#
# dia = 0
# temps = []
# for numero in range(qtd_dias):
#     dia = dia + 1
#     pergunta = float(input(f'Coloque a temperatura do {dia}° dia: '))
#     temps.append(pergunta)
#
# media = sum(temps)/len(temps)
# print(media)

## SEM COLECOES
# qtd_dias = int(input('Deseja fazer a média da temperatura de quantos dias? '))
#
# soma_temperatura = 0
# for numero in range(qtd_dias):
#     pergunta = float(input(f'Coloque a temperatura do {numero + 1}° dia: '))
#     soma_temperatura += pergunta
#
# media = soma_temperatura/qtd_dias
# print(f'{media:.2f}')

# Questão 3
# qtd_atletas = int(input('Quantos atletas deseja registrar? '))
#
# for numero in range(qtd_atletas):
#     nome_atl = str(input('Digite o nome do atleta escolhido: '))
#     esporte_atl = str(input('Digite o esporte do atleta escolhido: '))
#     data_atl = str(input('Digite a data da competição escolhida: '))
#     medalha_atl = str(input('Digite a medalha obtida: '))
#     print (f'Nome do Atleta: {nome_atl}\n'
#            f'Esporte do Atleta: {esporte_atl}\n'
#            f'Data da competição: {data_atl}\n'
#            f'Medalha recebida: {medalha_atl}\n')

## COM WHILE
# resp = 'sim'
# while resp == 'sim':
#     nome_atl = str(input('Digite o nome do atleta escolhido: '))
#     esporte_atl = str(input('Digite o esporte do atleta escolhido: '))
#     data_atl = str(input('Digite a data da competição escolhida: '))
#     medalha_atl = str(input('Digite a medalha obtida: '))
#     resp = str(input('Adicionar mais atletas?')).lower()
#     print (f'Nome do Atleta: {nome_atl}\n'
#            f'Esporte do Atleta: {esporte_atl}\n'
#            f'Data da competição: {data_atl}\n'
#            f'Medalha recebida: {medalha_atl}\n')

# Questão 4
qtd_atletas = int(input('Quantos atletas deseja registrar? '))

lista_total = []
for numero in range(qtd_atletas):
    nome_atl = str(input('Digite o nome do atleta escolhido: '))
    lista_nome = [nome_atl]
    esporte_atl = str(input('Digite o esporte do atleta escolhido: '))
    data_atl = str(input('Digite a data da competição escolhida: '))
    medalha_atl = str(input('Digite a medalha obtida: '))
    lista_atl = [esporte_atl, data_atl, medalha_atl]
    lista_nome.append(lista_atl)
    lista_total.append(lista_nome)
    lista_total.sort()

for chaves in lista_total:
    print(f'\n{chaves[0]}')
    for lista in chaves[1]:
        print(lista)







# Questão 5
# comp = str(input('Qual o nome da competição desejada? '))
# hr = str(input('Qual o horario que ela irá acontecer (digite no formato 00:00)? '))
#
# lista = []
# for letras in hr:
#     lista.append(letras)
#
# hora = int(lista[0] + lista[1])
# min = int(lista[3] + lista[4])
#
# print(f'A competição {comp} começa as {hora - 12}:{min} no Brasil')

# Questão 6
# londres = 8
# brasil = 12
# eua = 13
# alemanha = 7
#
# dic = {'Inglaterra' : 8, 'brasil' : 12, 'eua' : 13, 'alemanha' : 7}
# pais = str(input('Qual país deseja saber o horario? ')).lower()
# comp = str(input('Qual o nome da competição desejada? '))
# hr = str(input('Qual o horario que ela irá acontecer (digite no formato 00:00)? '))
# lista = []
# for letras in hr:
#     lista.append(letras)
#
# hora = int(lista[0] + lista[1])
# min = int(lista[3] + lista[4])
#
# print(f'A competição {comp} começa as {hora - dic[pais]}:{min} no país {pais}')



