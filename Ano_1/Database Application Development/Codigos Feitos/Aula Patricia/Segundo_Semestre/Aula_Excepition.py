# class MinhaExcecao(Exception):
#   pass
#
#
# titulo = 'Preço médio de compras'
# print(f'{titulo:^50}')
#
# try:
#   total_supermercado = float(input('Entre com o valor total da sua compra: '))
#
#   qtde_itens = int(input('Entre com a quantidade de itens comprados: '))
#
#   if qtde_itens < 0:
#     raise MinhaExcecao('Itens negativos')
#   media = total_supermercado/qtde_itens
#   print(f'{media:.%2f}')
#
# except ZeroDivisionError:
#   print('A quantidade de itens é inválida')
#   #raise

#-------------------------------------------------------------------------------------------------------------------------------------
# class error(Exception):
#   pass
#
# num1 = int(input('Digite o primeiro numero: '))
# num2 = int(input('Digite o segundo numero: '))
#
# try:
#   if num1 == num2:
#     raise error('Os numeros são iguais')
#
#   else:
#     lista = [num1, num2]
#     lista.sort()
#     print(f'O maior numero é o {lista[1]} e o menor numero é o {lista[0]}')
#
# except error as m:
#   print(f'{m.__class__.__name__}:{m}')

#-------------------------------------------------------------------------------------------------------------------------------------
# class Error(Exception):
#   pass
#
# letra = str(input('Digite uma letra entre A/B/C/D/E: ')).upper()
#
#
# try:
#   if letra == 'A':
#     print('A de Abacaxi')
#   elif letra == 'B':
#     print('B de Bergamota')
#   elif letra == 'C':
#     print('C de Caju')
#   elif letra == 'D':
#     print('D de Damasco')
#   elif letra == 'E':
#     print('E de Embaúba')
#   else:
#     raise Error('Letra invalida')
#
# except Error as m:
#   print(f'{m.__class__.__name__}:{m}')

#-------------------------------------------------------------------------------------------------------------------------------------
# class LetraInvalida(Exception):
#   pass
#
# letra = input('Entre com A, ou B, ou C, ou  D: ')
#
# try:
#   if letra == 'A':
#     fruta = 'Abacaxi'
#   elif letra == 'B':
#     fruta = 'Banana'
#   elif letra == 'C':
#     fruta = 'Caqui'
#   elif letra == 'D':
#     fruta = 'Damasco'
#   else:
#     raise LetraInvalida('Letra Invalida')
# except LetraInvalida as l:
#   print('Fruta fora de época')
#   print(f'{l}')
# else:
#   print(fruta)
# finally:
#   print('Boas compras!')

#-------------------------------------------------------------------------------------------------------------------------------------














