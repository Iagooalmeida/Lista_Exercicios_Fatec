# Escreva um algoritmo que verifique se uma letra digitada é vogal ou consoante.

letra = input("Informe uma letra: ")

if letra in "aeiouAEIOU":
    print("A letra", letra, "é uma vogal")
else:
    print("A letra", letra, "é uma consoante")
print("Fim Programa!!!")