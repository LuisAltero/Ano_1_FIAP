import csv

with open('_3Checkpoint2SemestreDBApp.csv', 'r') as arq_pet:
    tabela_pet = csv.DictReader(arq_pet, delimiter=';')
    cont = 0
    for linha in tabela_pet:
        cont += 1
        print(f'---------------- {cont}° ----------------')
        print(f'\nNome do Pet: {linha["Nome Pet"]}\nTutor: {linha["Tutor"]}\nEspécie: {linha["Especie"]}\nIdade do Pet: {linha["Idade"]}\n')