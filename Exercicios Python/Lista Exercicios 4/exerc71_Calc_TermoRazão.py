def calcular_pg(primeiro_termo, razao):
    termos_pg = [primeiro_termo]  # Inicializa uma lista com o primeiro termo

    # Calcula os próximos quatro termos da progressão
    for _ in range(4):
        proximo_termo = termos_pg[-1] * razao  # Calcula o próximo termo multiplicando o termo anterior pela razão
        termos_pg.append(proximo_termo)  # Adiciona o próximo termo à lista

    return termos_pg

# Obtém o primeiro termo e a razão da progressão do usuário
primeiro = float(input("Digite o primeiro termo da PG: "))
razao = float(input("Digite a razão da PG: "))

# Calcula e exibe os cinco primeiros termos da progressão
termos = calcular_pg(primeiro, razao)
print("Os cinco primeiros termos da PG são:")
for termo in termos:
    print(termo)
