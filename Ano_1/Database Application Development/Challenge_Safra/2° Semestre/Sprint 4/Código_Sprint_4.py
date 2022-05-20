def cadastro():

    class Erro(Exception):
        pass
    try:
        lista_produtos = []
        with open('Produto_Safra.txt', 'r') as prod_safra:
            for linha in prod_safra.readlines():
                lista_produtos.append(linha.lower().strip().split(':'))
        pesos = dict(lista_produtos)
        print(pesos)

        lista_cadastros = []
        resp = 'sim'
        while resp == 'sim' or resp =='s':
            nome = str(input('Digite o nome que deseja armazenar: '))
            if nome == '':
                raise Erro(' Coloque um nome para ser armazenado, recomece o cadastro.')
            cpf = int(input(f'Digite o cpf do(a) {nome}: '))
            if len(str(cpf)) != 11:
                raise Erro(' Número do CPF incorreto, recomece o programa')
            conta = int(input(f'Digite a conta do(a) {nome} que deseja armazenar: '))
            if len(str(conta)) != 9:
                raise Erro(' Número de conta incorreto, recomece o programa')
            lista_produtos = []
            resp = 'sim'
            while resp == 'sim' or resp =='s':
                produtos = str(input(f'Digite o produto do(a) {nome} que deseja armazenar: '))
                if produtos == '':
                    raise Erro(' Coloque um produto para ser armazenado, recomece o cadastro.')
                elif produtos not in pesos.keys():
                    raise Erro(' O produto registrado não está no sistema, recomece o programa')
                elif produtos in lista_produtos:
                    raise Erro(' O produto registrado já foi regitrado, recomece o programa')
                lista_produtos.append(produtos)
                resp = str(input('Deseja armazenar mais algum produto? ')).lower()
                if resp not in ('sim', 'nao', 's', 'n'):
                    raise Erro(' Resposta inválida, recomece o programa')
            resp = str(input('Deseja armazenar mais algum cliente? ')).lower()
            if resp not in ('sim', 'nao', 's', 'n'):
                raise Erro(' Resposta inválida, recomece o programa')
            lista_cadastros.append([nome, cpf, conta, lista_produtos])

        for pessoas in lista_cadastros:
            lista_pesos = []
            for dados in pessoas[3]:
                lista_pesos.append(float(pesos[dados]))
            pessoas.append(lista_pesos)


        n_cadastro = 0
        for clientes in lista_cadastros:
            n_cadastro = n_cadastro + 1
            temp = 0
            for dados in clientes:
                temp = temp + 1
                if temp == 1:
                    print(f'------- Cadastro: {n_cadastro} -------\n')
                    print(f'Nome: {dados}')
                elif temp == 2:
                    print(f'CPF: {dados}')
                elif temp == 3:
                    print(f'Conta: {dados}')
                elif temp == 4:
                    print(f'Produtos contradados: {dados}')
                else:
                    lista_temp = []
                    for item in dados:
                        lista_temp.append(item)
                    conta = sum(lista_temp)/len(lista_temp)
                    print(f'Média pontuação: {conta}\n')

    except Erro as e:
        print((f'{e.__class__.__name__}:{e}'))

    except ValueError:
        print('Caracter inválido, recomece o programa')

cadastro()