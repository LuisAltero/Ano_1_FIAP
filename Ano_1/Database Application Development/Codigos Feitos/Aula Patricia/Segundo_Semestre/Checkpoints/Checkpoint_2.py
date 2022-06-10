# EXERCÍCIO 1
print((lambda faixa:'ultima' if faixa >= 10 and faixa <= 40 else ('nova' if faixa > 40 and faixa <=100 else 'nenhuma'))(120))


# EXERCÍCIO 2
def desconto_racao(ds_racao):
    if ds_racao == 'premier':
        desconto_racao = 0.03
    elif ds_racao == 'royal canin':
        desconto_racao = 0.067
    else:
        desconto_racao = 0.08
    return desconto_racao

def desconto_banho(qtd_banho):
    if qtd_banho == 1:
        desconto_banho = 0.05
    elif qtd_banho == 2:
        desconto_banho = 0.1
    elif qtd_banho >= 3:
        desconto_banho = 0.15
    else:
        desconto_banho = 0
    return desconto_banho

def desconto_total():
    class Erro(Exception):
        pass
    try:
        qtd_banho = int(input('Quantas vezes vocÊ leva seu pet para tomar banho? '))
        if qtd_banho < 0:
            raise Erro(' Valor inválido, recomece o cadastro.')
        resp = str(input('Você compra ração para o seu pet? ')).lower()
        if resp not in ('sim', 'nao', 's', 'n'):
            raise Erro(' Resposta inválida, recomece o programa')
        if resp == 'sim' or resp == 's':
            ds_racao = str(input('Qual ração você compra para o seu pet? ')).lower()
            if ds_racao == '':
                raise Erro(' Coloque uma ração , recomece o cadastro.')
            desconto = f'{(desconto_banho(qtd_banho) + desconto_racao(ds_racao)) * 100}%'
        else:
            desconto = f'{desconto_banho(qtd_banho) * 100}%'
        return desconto

    except Erro as e:
        print((f'{e.__class__.__name__}:{e}'))

    except ValueError:
        print('Caracter inválido, recomece o programa')


print(f'Você receberá {desconto_total()} de desconto na loja')


