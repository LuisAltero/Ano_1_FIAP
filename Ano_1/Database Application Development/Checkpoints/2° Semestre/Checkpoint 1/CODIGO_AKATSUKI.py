

def algoritmo():
    dicionario = {}
    resp = 'S'

    class Erro(Exception):
        pass
    try:
        while resp == 'S':
            cliente = str(input('Digite o nome de um cliente: '))
            gastos = float(input('Digite quanto o cliente gastou no ultimo mês: '))
            if gastos < 0:
                raise Erro('Numero negativo, recomece o programa')
                algoritmo()
            qtnd = int(input('Digite quantos serviços/itens o cliente consumiu no ultimo mês: '))
            if qtnd < 0:
                raise Erro('Numero negativo, recomece o programa')
                algoritmo()
            ticket_medio = gastos/qtnd
            dicionario[ticket_medio] = cliente
            resp = str(input('Deseja cadastrar mais um cliente? S/N: ')).upper()
    except ZeroDivisionError:
        print('Quantidade inválida, recomece o programa')
        algoritmo()
    except Erro as e:
        print((f'{e.__class__.__name__}:{e}'))
        algoritmo()
    print(sorted(dicionario.items(), reverse=True))


algoritmo()











