--[[
    As bibliotecas padrão do Lua são um conjunto de funções e recursos 
    implementados em C por meio da API C do Lua. Essas bibliotecas 
    fornecem funcionalidades essenciais e úteis para a linguagem. 
    Cada biblioteca é um módulo C separado. Aqui está um resumo das principais
    bibliotecas padrão do Lua:

    Basic Library: A biblioteca básica fornece funções essenciais para o Lua,
    incluindo funções como assert, collectgarbage, dofile, e error.

    Coroutine Library: A biblioteca de corotinas fornece suporte para a 
    criação de corotinas em Lua, permitindo a execução concorrente de código.

    Package Library: A biblioteca de pacotes lida com o carregamento e 
    gerenciamento de módulos em Lua. Ela inclui funções como require, 
    que é usada para carregar módulos.

    String Manipulation: Essa biblioteca fornece funções para manipulação 
    de strings, incluindo operações de concatenação, busca e substituição de 
    padrões em strings.

    Basic UTF-8 Support: Oferece suporte básico para UTF-8, incluindo funções 
    para manipular caracteres e strings UTF-8.

    Table Manipulation: Fornece funções para manipular tabelas, como inserção,
    exclusão e ordenação de elementos.

    Mathematical Functions: Inclui funções matemáticas como sin, log, entre 
    outras.

    Input and Output (I/O): Oferece funcionalidades para entrada e saída de 
    dados, permitindo a leitura e gravação de arquivos e interação com 
    o ambiente de E/S.

    Operating System Facilities: Fornece funções para interagir com o 
    sistema operacional, como obter informações do sistema.

    Debug Facilities: Essa biblioteca ajuda na depuração de código Lua, 
    permitindo rastreamento, manipulação de pilha e inspeção de variáveis.

    Para usar essas bibliotecas em seu programa Lua, você pode carregar 
    todas elas de uma vez usando luaL_openlibs, ou carregá-las 
    individualmente com funções como luaopen_base, luaopen_package, 
    luaopen_string, etc.

    --]]
    
    -- Aqui estão alguns exemplos práticos:
    -- Exemplo de uso da Biblioteca Básica:

-- Usando a função assert para verificar uma condição
local resultado = 10
assert(resultado > 0, "O resultado deve ser maior que 0") -- retorna true

-- Coletando lixo
collectgarbage("collect")

-- Exemplo de uso da Biblioteca de Pacotes:

-- Carregando um módulo com require
local math = require("math")

-- Usando funções do módulo math
local raiz_quadrada = math.sqrt(25)
-- print(raiz_quadrada)

-- Exemplo de Manipulação de Strings:
-- Concatenando strings
local str1 = "Hello"
local str2 = "World"
local resultado = str1 .. ", " .. str2
-- print(resultado)

-- Buscando e substituindo padrões em uma string
local texto = "Lua eh incrivel e Lua eh poderoso"
local substituido = string.gsub(texto, "Lua", "Lua Language")
-- print(substituido)

