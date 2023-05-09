# # Escreva um programa que receba o preço de dois produtos.Calcule um desconto de 14% no primeiro produto, 
# 17% no segundo e exiba para o usuário o valor de cada produto e seus respectivos descontos.

prod1 = float(input("Informe o valor do 1º produto: "))
prod2 = float(input("Informe o valor do 2º produto: "))

desc1 = prod1 * 14 / 100
desc2 = prod2 * 17 / 100 

print("Foi descontado do primeiro produto: R$", desc1)
print(f"O valor do primeiro produto R${prod1:.2f} com desconto é R$ {prod1 - desc1:.2f} \n")
print("Foi descontado do segundo produto: R$", desc2)
print(f"O valor do segundo produto R$ {prod2:.2f} com desconto é R$ {prod2 - desc2:.2f}")