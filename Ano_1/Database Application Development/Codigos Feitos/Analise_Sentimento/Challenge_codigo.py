import ast

# texto = 'qual é o sinal Natália boa tarde por gentileza com quem eu falo e aquele negócio de boa tarde não sei que que é isso estou com as duas últimas faturas pagas da minha luz e vem um homem que não tem o que fazer com as entradas e corta minha luz eu tenho criança senhora tenha calma calma é o cacete anote os números que tem aqui na minha fatura paga Calma tem hora que eu não posso ficar não porque eu tô criança e cozinha que tem uma senhora aqui que é doente Anote o número a senhora tem 4678873 não não estou anotando Mas se você tiver um pouquinho de calma e esperar nota minha filha tenha calma para mim fazer sua nova realização senhora Anote o número Olha o respeito pela gente que a gente não tem essa responsabilidade que eu tô ocupada eu tenho que fazer não posso ficar perdendo tempo telefone lá uma senhora para direito comigo porque eu não tenho nada a ver com seu corte da sua residência minha querida meu amor tenha Calma respire fundo que agora eu vou fazer não quero saber que número que ele está discutindo com você para receber ordem senhora me informe aí seu nome completo por gentileza se você é subordinada Anote o número não a gente não quer número agora queremos o seu nome completo Maria izolda da Silva senhora minha filha você tá me levando a pagode mesmo é esse celular aqui para as coisa direito'.lower()
texto = 'aquele negócio de boa tarde não sei que que é isso estou com as duas últimas faturas pagas da minha luz e vem um homem que não tem o que fazer com as entradas e corta minha luz eu tenho criança calma é o cacete anote os números que tem aqui na minha fatura paga tem hora que eu não posso ficar não porque eu tô criança e cozinha que tem uma senhora aqui que é doente  não estou anotando que eu tô ocupada eu tenho que fazer não posso ficar perdendo tempo telefone lá não quero saber que número que ele está discutindo com você para receber ordem se você é subordinada Anote o número Maria izolda da Silva minha filha você tá me levando a pagode mesmo é esse celular aqui para as coisa direito'.lower()


'''Leitor do dicionario '''
#
# sentilexpt = open("SentiLex-lem-PT02.txt",'r', encoding= 'utf-8')
# dic_palavra_polaridade = {}
# for i in sentilexpt.readlines():
#     pos_ponto = i.find('.')
#     palavra = (i[:pos_ponto])
#     pol_pos = i.find('POL')
#     polaridade = (i[pol_pos+7:pol_pos+9]).replace(';','')
#     dic_palavra_polaridade[palavra] = polaridade
# print(dic_palavra_polaridade)
# #

'''Separador do dicionario '''
# d_v = {}
# for i in range(len(dic_palavra_polaridade)):
#     x, z= list(dic_palavra_polaridade.keys())[i-1].split(',')
#     y = list(dic_palavra_polaridade.values())[i-1]
#     d_v[x] = y
#     d_v[z] = y
# dic_palavra_polaridade = str(d_v)

# print(dic_palavra_polaridade)


# def escrever_txt(lista):
#     with open('Sentilex-Lem-Verificado', 'w', encoding= 'utf-8') as f:
#         for nome in lista:
#             f.write(nome)
# escrever_txt(str(dic_palavra_polaridade))


dic_palavra_polaridade = open('Sentilex-Flex-Verificado')
dic_palavra_polaridade = dic_palavra_polaridade.read()
dic_palavra_polaridade = ast.literal_eval(dic_palavra_polaridade)


'''Analizador do dicionario '''
def Score_sentimento(frase):
    frase = frase.lower()
    l_sentimento = []
    for p in frase.split():
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    print(l_sentimento)
    score = sum(l_sentimento)
    if score > 0:
        return 'Verde, Score:{}'.format(score)
    elif score == 0:
        return 'Amarelo, Score:{}'.format(score)
    else:
        return 'Vermelho, Score:{}'.format(score)

print(Score_sentimento(texto))


# perdendo tempo, perda de tempo, perca de tempo, perdendo meu tempo
# não tem o que fazer, que não tem o que fazer
# é o cacete
# não posso
# bosta
# não aguento
# não suporto, insuportavel





