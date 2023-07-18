# Escreva um algoritmo que carregue a lista letras = [‘A’, ‘B’, ‘C’, ‘D’,‘E’] e solicite ao usuário para escolher
# uma das letras para substituirpor ‘X’. Observação: É necessário modificar efetivamente a letraespecificada na lista.

letras = ['A', 'B', 'C', 'D', 'E']

# Exibe as letras disponíveis
print("Letras disponíveis:", letras)

# Solicita ao usuário para escolher uma letra
letra_escolhida = input("Escolha uma das letras para substituir por 'X': ")

# Verifica se a letra escolhida está na lista
if letra_escolhida in letras:
    # Encontra o índice da letra escolhida na lista
    indice = letras.index(letra_escolhida)

    # Substitui a letra escolhida por 'X' na lista
    letras[indice] = 'X'

    # Exibe a lista atualizada
    print("Lista atualizada:", letras)
else:
    print("Letra inválida. Por favor, escolha uma das letras disponíveis.")
