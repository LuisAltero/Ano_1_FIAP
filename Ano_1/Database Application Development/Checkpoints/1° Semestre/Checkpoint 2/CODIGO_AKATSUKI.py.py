def checklist():
    nome = str(input('Digite seu nome: '))
    especie = str(input('Selecione seu animal:  \n \033[4;32m[1] cachorro\033[m \n \033[4;34m[2] gato\033[m \nDigite o numero desejado: ')).strip()
    if especie != '1' and especie != '2':
        print(f'Especie inválida, tente novamente ')
        checklist()
    else:
        def separador(x):
            for itens in x:
                print(f'[ ] {itens}')
        while especie == '1' or especie == '2':
            if especie == '1':
                especie = 'cachorro'
                print('A espécie escolhida foi: Cachorro \n')
                consulta = ('Vermifugação', 'Vacina Antirrábica', 'Vacina V8 e V10', 'Vacina Gripe', 'Vacina Giárdia')
                print('Tarefas a fazer na primeira consulta: ')
                separador(consulta)

                banho = ['Banho simples', 'Banho terapêutico', 'Hidratação', 'Corte de unhas',
                                  'Higienização dos dentes', 'Higienização dos ouvidos']

                print('\nOpções para o Banho:')
                for itens in banho:
                    print(f'[{banho.index(itens)}] {itens}')
                resp = 's'
                banho_filtro = []
                banho_selecao = []
                while resp == 's':
                    opcoes_banho = int(input('Digite os numeros das opçoes desejadas: '))
                    banho_filtro.append(banho[opcoes_banho])
                    banho_selecao.append(banho[opcoes_banho])
                    resp = str(input('Deseja acrescentar algo mais? S/N: ')).lower()
                compra = ['Ração', 'Petisco secos e molhados', 'Comedouro e Bebedouro',
                            'Brinquedos', 'Mordedores', 'Coleira e Guia', 'Placa de identificação',
                            'Roupas e Acessórios', 'Casinha e Caminha','Caixa de transporte',
                            'Cinto de segurança para carro', 'Cata-Caca', 'Tapete higiênico',
                            'Escova para pelos', 'Escova de dentes creme dental',
                            'Banho a seco', 'Colônia', 'Desinfetante']

                print('\nOpções para as Compras:')
                for itens in compra:
                    print(f'[{compra.index(itens)}] {itens}')
                resp = 's'
                compra_filtro = {'Ração'}
                compra_selecao = {'Ração'}
                while resp == 's':
                    opcoes_compras = int(input('Digite os numeros das opçoes desejadas: '))
                    compra_filtro.add(compra[opcoes_compras])
                    compra_selecao.add(compra[opcoes_compras])
                    resp = str(input('Deseja acrescentar algo mais? S/N: ')).lower()
                compra_filtro = list(compra_filtro)
                compra_selecao = list(compra_filtro)

                if 'Petisco secos e molhados' in compra_filtro:
                    qtd = int(input('Quantos sachês de petiscos serão adicionados? '))
                    indice = compra_filtro.index('Petisco secos e molhados')
                    compra_filtro[indice] = (f'Petisco secos e molhados {str(qtd)} sachês')

                qtd_racao = int(input('Quantos pacotes de ração serão adicionados? '))
                indice = compra_filtro.index('Ração')
                compra_filtro[indice] = (f'Ração {str(qtd_racao)} pacotes')


            else:
                especie = 'gato'
                print('A espécie escolhida foi: Gato \n')
                consulta = ('Vermifugação', 'Vacina Antirrábica', 'Vacina V4')
                print('Tarefas a fazer na primeira consulta: ')
                separador(consulta)

                banho = ['Banho simples', 'Banho terapêutico', 'Hidratação', 'Corte de unhas',
                        'Higienização dos dentes', 'Higienização dos ouvidos']

                print('\nOpções para o Banho:')
                for itens in banho:
                    print(f'[{banho.index(itens)}] {itens}')
                resp = 's'
                banho_filtro = []
                banho_selecao = []
                while resp == 's':
                    opcoes_banho = int(input('Digite os numeros das opçoes desejadas: '))
                    banho_filtro.append(banho[opcoes_banho])
                    banho_selecao.append(banho[opcoes_banho])
                    resp = str(input('Deseja acrescentar algo mais? S/N: ')).lower()
                compra = ['Ração', 'Petisco secos e molhados', 'Comedouroe Bebedouro', 'Arranhadores',
                                        'Brinquedos', 'Coleira e Guia', 'Roupas e Acessórios', 'Casinha e Caminha',
                                        'Caixa de transporte',
                                        'Banheiros', 'Caixa de areia', 'Escova para pelo', 'Escova de dentes',
                                        'Creme dental', 'Banho a seco', 'Colônia', 'Desinfetante', 'Areia Higiênica']

                print('\nOpções para as Compras:')
                for itens in compra:
                    print(f'[{compra.index(itens)}] {itens}')
                resp = 's'
                compra_filtro = {'Ração'}
                compra_selecao = {'Ração'}
                while resp == 's':
                    opcoes_compras = int(input('Digite os numeros das opçoes desejadas: '))
                    compra_filtro.add(compra[opcoes_compras])
                    compra_selecao.add(compra[opcoes_banho])
                    resp = str(input('Deseja acrescentar algo mais? S/N: ')).lower()

                compra_filtro = list(compra_filtro)
                compra_selecao = list(compra_filtro)
                if 'Petisco secos e molhados' in compra_filtro:
                    qtd = int(input('\nQuantos sachês de petiscos serão adicionados? '))
                    indice = compra_filtro.index('Petisco secos e molhados')
                    compra_filtro[indice] = (f'Petisco secos e molhados {str(qtd)} sachês')

                qtd_racao = int(input('\nQuantos pacotes de ração serão adicionados? '))
                indice = compra_filtro.index('Ração')
                compra_filtro[indice] = (f'Ração {str(qtd_racao)} pacotes')

        consulta = list(consulta)
        lista_geral = banho_selecao + compra_selecao + consulta


        resp = str(input('\nDeseja checar se algum item não esta no checklist? S/N: ')).lower()
        while resp == 's':
            if resp == 's':
                item = str(input('\nDigite o item que deseja checar: '))
                if item in lista_geral:
                    print(f'\n Senhor(a) {nome} '
                          f'\n O item {item} já se encontra no checklist inteligente'
                          f'\n Aproveite para receber a lista completa ao final do nosso questionário'
                          f'\n Atenciosamente'
                          f'\n Equipe Puppy Bel')
                    resp = str(input('\nDeseja checar se mais algum item não esta no checklist? S/N: ')).lower()
                else:
                    print(f'O item {item} não está na lista, não esqueça de adiciona-lo ao refazer o checklist')
                    resp = str(input('\nDeseja refazer o checklist? S/N: ')).lower()
                    if resp == 's':
                        checklist()
                    else:
                        print(f'O item {item} não constará na lista. ')

        print('\nChecklist inteligente \n'
              f'\n nome do proprietario do pet: {nome}'
              f'\n Espécie do pet: {especie}')
        print('\nTarefas primeira consulta')
        separador(consulta)
        print('\nTarefas primeiro banho')
        separador(banho_filtro)
        print('\nTarefas primeira compra')
        separador(compra_filtro)

checklist()








