# from math import pi
#
# volume_esfera = lambda raio : (4 * pi * raio ** 3) / 3
# print(volume_esfera(2))
#
# meu_par = lambda pnumero : pnumero % 2 == 0
# print(meu_par(4))
#
# meu_par = lambda pnumero : True if pnumero % 2 == 0 else False
# print(meu_par(4))
#
# absoluto = lambda pnumero : True if pnumero >= 0 else False
# print(absoluto(40))

# oposto = lambda x : x * -1
# print(oposto(1))

# inverso = lambda num : 1 / num
# print(inverso(5))
#
# metade = lambda num : num / 2
# print(metade(10))
#
# soma_quadrados = lambda num : num ** 2 + num ** 2
# print(soma_quadrados(2))

# from math import pi
# volume_esfera = lambda raio : (4 * pi * raio ** 3) / 3
# print(volume_esfera(2))

# nome = str(input('Digite o seu nome: '))
# idade = int(input('Digite a sua idade: '))
# dado_pessoa = lambda nome, idade : f'nome: {nome} \nIdade: {idade} anos'
# print(dado_pessoa(nome, idade))

# listaOriginal = [234, 64, 13467, 45.89, 23]
# media = lambda lista : sum(lista)/len(lista)
# print(media(listaOriginal))

# numero = int(input('Digite um numero: '))
# par = lambda num : f'O numero {num} é par' if num % 2 == 0 else f'O numero {num} é ímpar'
# print(par(numero))

# numero = int(input('Digite um numero: '))
# absoluto = lambda num : num / num if num >= 0 else num * -1 / num * -1
# print(absoluto(numero))

# nome = str(input('Digite o seu nome: '))
# idade = int(input('Digite a sua idade: '))
# maior_idade = lambda nome, idade : f'{nome} é maior de idade' if idade >= 18 else f'{nome} é menor de idade'
# print(maior_idade(nome, idade))

# precos = [8, 24, 5677, 23, 9982]
# print(list(map((lambda lista : lista * 0.8), precos)))

# print(f'O numero é {(lambda x: "positivo" if x>=0 else "negativo")(1)}')

# resp = 'sim'
# workshops = []
# while resp == 'sim' or resp == 's':
#     hora = int(input('Digite a hora do workshop: '))
#     mins = int(input('Agora os minutos do workshop: '))
#     dia_sem = int(input('Escolha um dos dias abaixo:\n[1]Domingo\n[2]Segunda\n[3]Terça\n[4]Quarta\n[5]Quinta\n[6]Sexta\n[7]Sábado\nDigite o número do dia da semana que irá registrar: '))
#     dici = {}
#     dici[dia_sem] = f'{hora}:{mins}'
#     workshops.append(dici)
#     resp = str(input('Deseja adicionar mais workshops? ')).lower()
# print(workshops)

# def dados():
#     class Erro(Exception):
#         pass
#     try:
#         resp = 'sim'
#         pessoas = []
#         while resp == 'sim' or resp == 's':
#             nome = str(input('Digite seu nome: '))
#             if nome == '':
#                 raise Erro('Digite algum nome, recomece o programa')
#             idade = int(input('Digite sua idade: '))
#             if idade <= 0:
#                 raise Erro('Idade inválida, recomece o programa')
#             periodo = str(input('Digite o período disponível(manhã/tarde/noite): ')).lower()
#             if periodo == '':
#                 periodo = 'tarde'
#             dici = {}
#             dici[nome] = idade, periodo
#             pessoas.append(dici)
#             resp = str(input('Deseja adicionar mais pessoas? ')).lower()
#         print(pessoas)
#     except Erro as e:
#         print((f'{e.__class__.__name__}:{e}'))
#         dados()
#     except ValueError:
#         print('Caracter inválido, recomece o programa')
#         dados()
# dados()


# qtd = lambda medida, pessoas, dias: pessoas * 1 * dias if medida == 'quilos' else pessoas * 6 * dias
# print(qtd(medida= 'litros', pessoas= 80, dias= 30))
# f'Existem {pessoas * 6 * dias} litros de lixo em {dias} dias'


classif = lambda lixo: 'Azul' if lixo == 'papel' else ('Vermelho' if lixo == 'plastico' else ('Verde' if lixo == 'vidro' else ('Amarelo' if lixo == 'metal' else ('Preto' if lixo == 'madeira' else ('Marrom' if lixo == 'organico' else 'Branco')))))
print(classif('organico'))


# lista = 'papel organico metal metal metal madeira vidro papel papel vidro organico hospitalar plastico plastico madeira'.split()
# print(list(map(classif, lista)))









