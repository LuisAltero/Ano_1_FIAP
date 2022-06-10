import json
from datetime import date

class Error(Exception):
    pass
try:
    def Cadastro():
        nome = str(input('Digite seu nome: ')).lower()
        if nome == '':
            raise Error(' Coloque um nome, recomece o cadastro.')
        cpf = int(input('Digite seu cpf: '))
        if len(str(cpf)) != 11:
            raise Error(' Coloque um cpf válido, recomece o cadastro.')
        rg = int(input('Digite seu rg sem o dígito: '))
        if len(str(rg)) < 7 and len(str(rg)) > 9:
            raise Error(' Coloque um rg válido, recomece o cadastro.')
        rg_digito = str(input('Digite o dígito de seu rg: '))
        if len(rg_digito) > 2:
            raise Error(' Coloque um celular válido, recomece o cadastro.')
        celular = int(input('Digite seu celular (com o DDD): '))
        if len(str(celular)) != 11:
            raise Error(' Coloque um celular válido, recomece o cadastro.')
        dt_nasc = str(input('Digite sua data de nascimento (DD/MM/YYYY): '))
        lista_dt = dt_nasc.split('/')
        if int(lista_dt[0]) == 0 or int(lista_dt[0]) > 31  or int(lista_dt[1]) == 0 or int(lista_dt[1]) > 12 or int(lista_dt[2]) == 1900 or int(lista_dt[2]) == 1900 or int(lista_dt[2]) == date.today().year - 3:
            raise Error(' Coloque uma data válida, recomece o cadastro.')
        dicionario = {'Nome': nome, 'CPF': cpf, 'RG': rg, 'Celular': celular, 'Data de nascimento': dt_nasc}
        return dicionario

    resp = 'sim'
    lista = []
    while resp in ('sim', 's'):
        lista.append(Cadastro())
        resp = str(input('Deseja adicionar mais um doador? '))
        if resp not in ('sim', 'nao', 's', 'n'):
            raise Error(' Resposta inválida, recomece o programa')

    with open('Global_Impact.json', 'w') as arquivo:
        json.dump(lista, arquivo, indent= '\t', separators= (',', ':'))


except Error as e:
    print((f'{e.__class__.__name__}:{e}'))
except ValueError:
    print('Caracter inválido, recomece o programa')







