# # Escreva um algoritmo que apresente o valor da conversão em real (R$) de um valor lido em dólar (US$). 
# O programa deve solicitaro valor da cotação do dólar e a quantidade de dólares a serconvertido em reais.

cotacao_dolar = float(input("Qual é a cotação do dólar hoje? R$"))
qtd_dolar = float(input("Quantos dólares você deseja converter para reais? R$"))

valor_real = qtd_dolar * cotacao_dolar

print("O valor em reais é: R$ ", valor_real)
