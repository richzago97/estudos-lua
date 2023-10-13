dofile("Techiesse Cursos/modules-exemplos/utils/strings.lua")
-- local strings = require("Techiesse Cursos/utils/strings")

--[[ 
    A função require é usada em Lua para carregar módulos (ou bibliotecas) que você deseja utilizar em seu código.
    Ela é comumente usada para incluir funcionalidades externas, como as que você pode ter definido em módulos 
    personalizados ou bibliotecas disponíveis na linguagem.

    Neste exemplo prático, está carregando o módulo strings.lua usando dofile. Isso funciona para carregar 
    o código diretamente do arquivo. No entanto, uma abordagem mais organizada e eficiente é usar o require para carregar 
    módulos.  
--]]

local function ExemploTrim(texto)
    local textoTrimmed = Trim(texto)
    return textoTrimmed
end

local function ExemploSplit(texto, sep)
    local partes = Split(texto, sep)
    return table.concat(partes, ", ")
end


local function ExemploSplitPartes(texto, sep)
    local partes = Split(texto, sep)
    return partes
end

print(ExemploTrim("   Isso e um exemplo de texto com espacos em branco.   "))

local resultadoSplit = ExemploSplit("Esta e uma frase,dividida por,virgulas", ",")
print(resultadoSplit)  -- Isso imprimirá "Esta é uma frase, dividida por, vírgulas"

local resultadoSplitPartes = ExemploSplitPartes("Esta e uma frase de partes,dividida por,virgulas", ",")
for i, parte in ipairs(resultadoSplitPartes) do
    print("Parte " .. i.. ": " .. parte)
end


