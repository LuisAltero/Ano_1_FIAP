import ast
import speech_recognition as sr

# texto = 'qual é o sinal Natália boa tarde por gentileza com quem eu falo e aquele negócio de boa tarde não sei que que é isso estou com as duas últimas faturas pagas da minha luz e vem um homem que não tem o que fazer com as entradas e corta minha luz eu tenho criança senhora tenha calma calma é o cacete anote os números que tem aqui na minha fatura paga Calma tem hora que eu não posso ficar não porque eu tô criança e cozinha que tem uma senhora aqui que é doente Anote o número a senhora tem 4678873 não não estou anotando Mas se você tiver um pouquinho de calma e esperar nota minha filha tenha calma para mim fazer sua nova realização senhora Anote o número Olha o respeito pela gente que a gente não tem essa responsabilidade que eu tô ocupada eu tenho que fazer não posso ficar perdendo tempo telefone lá uma senhora para direito comigo porque eu não tenho nada a ver com seu corte da sua residência minha querida meu amor tenha Calma respire fundo que agora eu vou fazer não quero saber que número que ele está discutindo com você para receber ordem senhora me informe aí seu nome completo por gentileza se você é subordinada Anote o número não a gente não quer número agora queremos o seu nome completo Maria izolda da Silva senhora minha filha você tá me levando a pagode mesmo é esse celular aqui para as coisa direito'.lower()
texto = 'aquele negócio de boa tarde não sei que que é isso estou com as duas últimas faturas pagas da minha luz e vem um homem que não tem o que fazer com as entradas e corta minha luz eu tenho criança calma é o cacete anote os números que tem aqui na minha fatura paga tem hora que eu não posso ficar não porque eu tô criança e cozinha que tem uma senhora aqui que é doente  não estou anotando que eu tô ocupada eu tenho que fazer não posso ficar perdendo tempo telefone lá não quero saber que número que ele está discutindo com você para receber ordem se você é subordinada Anote o número Maria izolda da Silva minha filha você tá me levando a pagode mesmo é esse celular aqui para as coisa direito'.lower()


# r = sr.Recognizer()
# with sr.AudioFile('videoplayback.wav') as source:
#     audio = r.listen(source)
#     try:
#         texto = r.recognize_google(audio,language='pt-BR')
#         print(' Convertendo...')
#         print(texto)
#     except:
#         print('Não foi possivel fazer a converção! Tente novamente!')


def concat_2(texto):
    palavra_concat = []
    for p in texto.split():
        if not palavra_concat:
            palavra_concat.append(p)
            temp = p
        else:
            palavra_concat.append(temp + ' ' + p)
            temp = p
    del(palavra_concat[0])
    return palavra_concat



def concat_3(texto):
    palavra_concat = []
    for p in texto.split():
        if not palavra_concat:
            palavra_concat.append(p)
            temp = p
        elif len(palavra_concat) == 1:
            temp_2 = p
            palavra_concat.append(temp + ' ' + temp_2)
        else:
            temp_3 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3)
            temp = temp_2
            temp_2 = temp_3
    del(palavra_concat[0:2])
    return palavra_concat


def concat_4(texto):
    palavra_concat = []
    for p in texto.split():
        if not palavra_concat:
            palavra_concat.append(p)
            temp = p
        elif len(palavra_concat) == 1:
            temp_2 = p
            palavra_concat.append(temp + ' ' + temp_2)
        elif len(palavra_concat) == 2:
            temp_3 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3)
        else:
            temp_4 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3 + ' ' + temp_4)
            temp = temp_2
            temp_2 = temp_3
            temp_3 = temp_4
    del(palavra_concat[0:3])
    return palavra_concat


def concat_5(texto):
    palavra_concat = []
    for p in texto.split():
        if not palavra_concat:
            palavra_concat.append(p)
            temp = p
        elif len(palavra_concat) == 1:
            temp_2 = p
            palavra_concat.append(temp + ' ' + temp_2)
        elif len(palavra_concat) == 2:
            temp_3 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3)
        elif len(palavra_concat) == 3:
            temp_4 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3 + ' ' + temp_4)
        else:
            temp_5 = p
            palavra_concat.append(temp + ' ' + temp_2 + ' ' + temp_3 + ' ' + temp_4 + ' ' + temp_5)
            temp = temp_2
            temp_2 = temp_3
            temp_3 = temp_4
            temp_4 = temp_5
    del(palavra_concat[0:4])
    return palavra_concat


dic_palavra_polaridade_1 = open('Sentilex-Flex-Verificado')
dic_palavra_polaridade_2 = dic_palavra_polaridade_1.read()
dic_palavra_polaridade = ast.literal_eval(dic_palavra_polaridade_2)


def Score_sentimento(frase):
    frase = frase.lower()
    l_sentimento = []
    for p in frase.split():
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    for p in concat_2(texto):
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    for p in concat_3(texto):
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    for p in concat_4(texto):
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    for p in concat_5(texto):
        l_sentimento.append(int(dic_palavra_polaridade.get(p, 0)))
    score = sum(l_sentimento)
    if score > 0:
        return 'Verde, Score:{}'.format(score)
    elif score == 0:
        return 'Amarelo, Score:{}'.format(score)
    else:
        return 'Vermelho, Score:{}'.format(score)


dic_depto_txt = open('Depto.txt')
dic_depto = dic_depto_txt.read()
dic_depto = ast.literal_eval(dic_depto)


def Depto_Chamada(frase):
    frase = frase.lower()
    l_depto = []
    for palavra in frase.split():
        for chave, valor in dic_depto.items():
            if palavra in valor:
                l_depto.append(chave)
    for palavra in concat_2(texto):
        for chave, valor in dic_depto.items():
            if palavra in valor:
                l_depto.append(chave)
    for palavra in concat_3(texto):
        for chave, valor in dic_depto.items():
            if palavra in valor:
                l_depto.append(chave)
    for palavra in concat_4(texto):
        for chave, valor in dic_depto.items():
            if palavra in valor:
                l_depto.append(chave)
    for palavra in concat_5(texto):
        for chave, valor in dic_depto.items():
            if palavra in valor:
                l_depto.append(chave)
    return l_depto

dic_palavra_polaridade_1.close()
dic_depto_txt.close()

print(Score_sentimento(texto))
print(Depto_Chamada(texto))















