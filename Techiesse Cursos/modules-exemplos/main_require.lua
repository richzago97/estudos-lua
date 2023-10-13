-- main_require.lua

-- Carregue o módulo com require
local Calculadora = require("Techiesse Cursos/modules-exemplos/calculadora")

-- Use as funções do módulo
local resultado_soma = Calculadora.soma(10, 5)
local resultado_subtracao = Calculadora.subtracao(10, 5)

print("Resultado da soma:", resultado_soma)
print("Resultado da subtracao:", resultado_subtracao)
