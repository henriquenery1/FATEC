primeiro = {
    'a':3,
    'b':16,
    'nome':'MIRIAM',
    'profissao':'ADVOGADO'
}

segundo = {
    'a':5,
    'b':64,
    'nome':'PEDRO',
    'profissao':'MEDICO'
}

terceiro = {
    'a':2.5,
    'b':9,
    'nome':'ANA',
    'profissao':'PROFESSOR'
}


def a(a, b, nome):
    # a) (A + 1 >= ((B) ^ (0.5)) OU (NOME <> 'ANA'))
    primeiro_passo = a + 1 >= b ** 0.5
    segundo_passo = nome != 'ANA'
    resultado = primeiro_passo or segundo_passo

    print(f'a) (A + 1 >= √B) OU (NOME != "ANA")\n')
    print(f'   Primeiro passo - {a} + 1 >= {b} ** 0.5: {primeiro_passo}\n')
    print(f'   Segundo passo - {nome} != ANA : {segundo_passo}\n')
    print(f'   Terceiro passo - {primeiro_passo} OU {segundo_passo}\n')
    print(f'   Resultado final: {resultado}\n')

def b(a, b, profissao):
    # b) (A + 1 >= ((B) ^ (0.5)) E (PROFISSAO = 'MEDICO'))
    primeiro_passo = a + 1 >= b ** 0.5
    segundo_passo = profissao == 'MEDICO'
    resultado = primeiro_passo or segundo_passo

    print(f'b) (A + 1 >= ((B) ^ (0.5)) E (PROFISSAO = MEDICO)\n')
    print(f'   Primeiro passo - {a} + 1 >= {b} ** 0.5: {primeiro_passo}\n')
    print(f'   Segundo passo - {profissao} = MEDICO: {segundo_passo}\n')
    print(f'   Terceiro passo - {primeiro_passo} OU {segundo_passo}\n')
    print(f'   Resultado final: {resultado}\n')    

def c(a, b, nome, profissao):
    # c) (NOME <> 'ANA') OU (PROFISSAO = 'MEDICO') E (A + 1 >= ((B) ^ (0.5)))
    primeiro_passo = nome != 'ANA'
    segundo_passo = profissao == 'MEDICO'
    terceiro_passo = a + 1 >= (b ** 0.5)
    quarto_passo = segundo_passo and terceiro_passo
    resultado = quarto_passo or primeiro_passo

    print(f'c) (NOME <> ANA) OU (PROFISSAO = MEDICO) E (A + 1 >= ((B) ^ (0.5)))\n')
    print(f'   Primeiro passo - {nome} != ANA: {primeiro_passo}\n')
    print(f'   Segundo passo - {profissao} = MEDICO: {segundo_passo}\n')
    print(f'   Terceiro passo - {a} + 1 >= ({b} ** 0.5): {terceiro_passo}\n')
    print(f'   Resultado final: {resultado}\n')    

def d(a, b, nome, profissao):
    # d) NÃO TESTE E ((A + 1) >= ((B) ^ (0.5)) OU NÃO (PROFISSAO = 'MEDICO'))
    teste = False
    primeiro_passo = not teste
    segundo_passo = a + 1 >= b ** (0.5)
    terceiro_passo = not profissao == 'MEDICO'
    quarto_passo = primeiro_passo and segundo_passo
    resultado = quarto_passo or terceiro_passo

    print(f'c) (NOME <> ANA) OU (PROFISSAO = MEDICO) E (A + 1 >= ((B) ^ (0.5)))\n')
    print(f'   Primeiro passo - Não teste: {primeiro_passo}\n')
    print(f'   Segundo passo - ({a} + 1) >= ({b}) ^ (0.5): {segundo_passo}\n')
    print(f'   Terceiro passo - Não {profissao}: {terceiro_passo}\n')
    print(f'   Resultado final: {resultado}\n')    

def e(a, b, nome, profissao):
    # e) NÃO (A + 1 >= ((B) ^ (0.5)) E TESTE)
    teste = False
    primeiro_passo = a + 1 >= ((b) ** (0.5))
    primeiro_passo = not primeiro_passo
    segundo_passo = teste
    resultado = primeiro_passo and segundo_passo

    print(f'c) (NOME <> ANA) OU (PROFISSAO = MEDICO) E (A + 1 >= ((B) ^ (0.5)))\n')
    print(f'   Primeiro passo - {a} + 1 >= (({b}) ^ (0.5)): {primeiro_passo}\n')
    print(f'   Segundo passo - teste: {segundo_passo}\n')
    print(f'   Resultado final: {resultado}\n')    


def main():
    a(primeiro['a'], primeiro['b'], primeiro['nome'])
    print('')
    a(segundo['a'], segundo['b'], segundo['nome'])
    print('')
    a(terceiro['a'], terceiro['b'], terceiro['nome'])


    b(primeiro['a'], primeiro['b'], primeiro['profissao'])
    print('')
    b(segundo['a'], segundo['b'], segundo['profissao'])
    print('')
    b(terceiro['a'], terceiro['b'], terceiro['profissao'])

    c(primeiro['a'], primeiro['b'], primeiro['nome'], primeiro['profissao'])
    print('')
    c(segundo['a'], segundo['b'], segundo['nome'], segundo['profissao'])
    print('')
    c(terceiro['a'], terceiro['b'], terceiro['nome'], terceiro['profissao'])

    d(primeiro['a'], primeiro['b'], primeiro['nome'], primeiro['profissao'])
    print('')
    d(segundo['a'], segundo['b'], segundo['nome'], segundo['profissao'])
    print('')
    d(terceiro['a'], terceiro['b'], terceiro['nome'], terceiro['profissao'])

    e(primeiro['a'], primeiro['b'], primeiro['nome'], primeiro['profissao'])
    print('')
    e(segundo['a'], segundo['b'], segundo['nome'], segundo['profissao'])
    print('')
    e(terceiro['a'], terceiro['b'], terceiro['nome'], terceiro['profissao'])

if __name__ == '__main__':
    main()





# def a(a, b, nome):
#     primeiro_passo = a + 1 >= b ** 0.5
#     segundo_passo = nome != 'ANA'
#     resultado = primeiro_passo or segundo_passo

#     # Abrir o arquivo para escrita
#     with open('passos.txt', 'w') as arquivo:
#         # Escrever cada passo no arquivo
#         arquivo.write(f'a) (A + 1 >= √B) OU (NOME != "ANA")\n')
#         arquivo.write(f'   Primeiro passo: {primeiro_passo}\n')
#         arquivo.write(f'   Segundo passo: {segundo_passo}\n')
#         arquivo.write(f'   Resultado final: {resultado}\n')