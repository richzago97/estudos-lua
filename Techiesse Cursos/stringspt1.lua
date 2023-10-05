--Contra barra

local string = 'I\'m ok' -- coloca-se a contra barra para funcionar caso as aspas forem iguais
-- print(string)

-- String literais - Texto com quebra de linha forma 1 - melhor forma

local stringlonga = [[
    Esse e um 'texto' com 
    "quebra" de linha!
]]
-- print(stringlonga)

-- Texto com quebra de linha forma 2 - alternativo

local stringquebra = "Este e um 'texto'\n com 'quebra' de linha 2"
-- print(stringquebra)

-- CR \r quebra a linha - se for win usa os dois e mac tambem usa esse
-- LF \n - apenas linux

-- Concatenação

-- print("Cachorro " .. "quente")
local string5 = "Hello World! "
string5 = string5 .. stringquebra
-- print("A string (" ..string5 .. ") - ".. " Tem o comprimento de: " .. tostring(#string5) .. " caracteres")

-- Table Concat (parecido com join do javascript, pega várias palavras e junta usando separador)

-- print(table.concat({"Agua", "do", "mar"}, ", "))

function Join(sep, words)
    return table.concat(words, sep)
end

-- print(Join(",", {"Agua", "do", "mar"}))

-- Biblioteca string

-- print(string.sub(string5, 7, 11)) -- Pegar um pedaço da string

-- print(string.upper(string5)) -- converte tudo em maiusculo

-- print(string.lower(string5)) -- converte tudo em minusculo


