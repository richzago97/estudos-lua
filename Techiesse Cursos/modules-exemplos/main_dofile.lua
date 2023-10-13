-- main_dofile.lua

-- Carregue o módulo com dofile
dofile("Techiesse Cursos/modules-exemplos/calculadora.lua")

-- Use as funções do módulo
local resultado_soma = Calculadora.soma(10, 5)
local resultado_subtracao = Calculadora.subtracao(10, 5)

print("Resultado da soma:", resultado_soma)
print("Resultado da subtracao:", resultado_subtracao)
