
lista_total = [{'IBIS Styles São Paulo Anhembi': [{'Descrição': 'Com um design criativo, baseado no tema "aviação", o ibis Styles São Paulo Anhembi une a praticidade para o trabalho com um espaço receptivo para família por uma ótima relação custo-benefício. Os quartos são superconfortáveis e adaptados para pessoas com mobilidade reduzida, com wi-fi grátis e ar-condicionado. O restaurante 14 bis serve café da manhã com 40 opções de refeição, e o bar está disponível por 24 horas. Deixe as crianças se divertirem no Espaço Kids. Cães também são bem-vindos.'}, {'Endereço': 'Avenida Cruzeiro Do Sul 1709, Santana, São Paulo'}, {'Info': ['Distância de 40 minutos do Aeroporto Internacional de São Paulo/Guarulhos']}, {'Valor': 170.0}, {'Link': 'https://all.accor.com/hotel/9596/index.pt-br.shtml?utm_term=mar&gclid=EAIaIQobChMI_fGnvZrq8AIVChGRCh1ChwbtEAAYASAAEgJvHPD_BwE'}, {'Quartos': 56}, {'Indicações': {'Turismo'}}]}]


resp = 's'
while resp == 'sim' or resp == 's':
    nm_hotel = str(input('Digite o nome do hotel: '))
    ds_hotel = str(input('Digite a descrição do hotel: '))
    ds_dict = {'Descrição' :  ds_hotel}
    end_hotel = str(input('Digite o endereço do hotel: '))
    end_dict = {'Endereço' : end_hotel}
    while resp == 'sim' or resp == 's':
        loc_list = []
        loc_hotel = str(input('Digite iformações adicionais sobre a localização do hotel: '))
        loc_list.append(loc_hotel)
        resp = str(input('Deseja adicionar mais iformações adicionais sobre a localização? ')).lower()
    loc_dict = {'Info' : loc_list}
    vl_hotel = float(input('Digite o preço do hotel: '))
    vl_dict = {'Valor' : vl_hotel}
    link_hotel = str(input('Digite o link do site oficial do hotel: '))
    link_dict = {'Link' : link_hotel}
    nr_quartos = int(input('Digite o numero de quartos do hotel: '))
    quartos_dict = {'Quartos' : nr_quartos}
    resp = 'sim'
    while resp == 'sim' or resp == 's':
        ind_conjunto = set()
        ind_hotel = str(input('Digite a indicação do hotel: '))
        ind_conjunto.add(ind_hotel)
        resp = str(input('Deseja adicionar mais indicações? ')).lower()
    ind_dict = {'Indicações' : ind_conjunto}

    nome_dict = {nm_hotel : [ds_dict, end_dict, loc_dict, vl_dict, link_dict, quartos_dict, ind_dict]}
    lista_total.append(nome_dict)

    resp = str(input('Deseja adicionar mais hoteis? ')).lower()

contador = 0
lista_nomes = []

for item in lista_total:
    for chave in item.keys():
        lista_nomes.append(chave)
        lista_nomes.sort()
        contador = contador + 1

print(f'Foram cadastrados {contador} hotéis.')
print(f'Lista com os nomes dos hotéis cadastrados em ordem alfabética: {lista_nomes}')
print(lista_total)


resp = str(input('Deseja Checar o preço de algum hotel? ')).lower()
if resp == 'sim' or resp == 's':
    procura = str(input('Digite o nome do hotel que deseja consultar o preço: '))
    for item in lista_total:
        for chave in item.keys():
            if chave == procura:
                for lista in item.values():
                    for valores in lista:
                        for valor in valores.values():
                            if type(valor) == float:
                                print(f'O preço do hotel {procura} é de {valor}R$.')

