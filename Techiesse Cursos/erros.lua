-- Função que realiza a divisão de dois números
local function dividir(a, b)
    if b == 0 then
        error("Divisao por zero nao e permitida.")
    end
    return a / b
end

-- Chamando a função dividir com pcall
local sucesso, resultado = pcall(function()
    local resultado = dividir(10, 2)
    print("Resultado da divisao:", resultado)
end)

-- Verificando se a chamada foi bem-sucedida
if sucesso then
    print("Chamada da funcao foi bem-sucedida.")
else
    print("Erro ao chamar a funcao:", resultado)
end
