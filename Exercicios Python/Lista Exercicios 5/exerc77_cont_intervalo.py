# 77 Escreva um algoritmo que permita ao usuário digitar vários números e conte quantos deles
#  estão nos seguintes intervalos[0-25], [26-50], [51-75] e [76-100]. 
# O programa deve ser finalizadoquando o usuário digitar zero.



# Inicializa as variáveis de contagem
intervalo_0_25 = 0
intervalo_26_50 = 0
intervalo_51_75 = 0
intervalo_76_100 = 0

# Loop para receber os números do usuário
while True:
    numero = int(input("Digite um número (digite 0 para sair): "))
    
    # Verifica se o número é zero para encerrar o programa
    if numero == 0:
        break
    
    # Verifica em qual intervalo o número se encaixa e incrementa a contagem apropriada
    if numero >= 0 and numero <= 25:
        intervalo_0_25 += 1
    elif numero >= 26 and numero <= 50:
        intervalo_26_50 += 1
    elif numero >= 51 and numero <= 75:
        intervalo_51_75 += 1
    elif numero >= 76 and numero <= 100:
        intervalo_76_100 += 1

# Exibe os resultados
print("Quantidade de números nos intervalos:")
print("[0-25]:", intervalo_0_25)
print("[26-50]:", intervalo_26_50)
print("[51-75]:", intervalo_51_75)
print("[76-100]:", intervalo_76_100)

