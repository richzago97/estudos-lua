-- Pattern Matching

local a = "Curso de Lua"

--[[ 
    string.find() é usado para encontrar a primeira ocorrência de um padrão em uma 
    string. Ele retorna os índices de início e fim da
    correspondência.

    Classes de Caracteres:
        Uma classe de caracteres é usada para representar um conjunto de caracteres. As 
        seguintes combinações são permitidas ao descrever uma classe de caracteres:

        x: (onde x não é um dos caracteres mágicos ^$()%.[]*+-?) representa o próprio 
        caractere x.
        .: (um ponto) representa todos os caracteres.
        %a: representa todas as letras.
        %c: representa todos os caracteres de controle.
        %d: representa todos os dígitos.
        %g: representa todos os caracteres que podem ser impressos exceto o espaço.
        %l: representa todas as letras minúsculas.
        %p: representa todos os caracteres de pontuação.
        %s: representa todos os caracteres de espaço.
        %u: representa todas as letras maiúsculas.
        %w: representa todos os caracteres alfanuméricos.
        %x: representa todos os dígitos hexadecimais.
        %x: (onde x é qualquer caractere não-alfanumérico) representa o caractere x. 
        Esta é a maneira padrão de escapar caracteres mágicos. Qualquer caractere de 
        pontuação (mesmo os não mágicos) podem ser precedidos por um '%' quando usado 
        para representar a si mesmo em um padrão.
        [set]: representa a classe que é a união de todos os caracteres em set. 
        Um intervalo de caracteres pode ser especificado separando os caracteres das 
        extremidades do intervalo, em ordem ascendente, com um '-'. Todas as classes %x 
        descritas acima também podem ser usadas como componentes em set. Todos 
        os outros caracteres em set representam eles mesmos. Por exemplo, [%w_] 
        (ou [_%w]) representa todos os caracteres alfanuméricos mais o sublinhado, 
        [0-7] representa os dígitos octais, e [0-7%l%-] representa os dígitos octais 
        mais as letras minúsculas mais o caractere '-'.
        A interação entre intervalos e classes não é definida. Assim, padrões como 
        [%a-z] ou [a-%%] não possuem significado.

        [^set]: representa o complemento de set, onde set é interpretado como acima.
        Para todas as classes representadas por letras simples (%a, %c, etc.), a letra 
        maiúscula correspondente representa o complemento da classe. Por exemplo, 
        %S representa todos os caracteres que não são de espaço.

        As definições de letra, espaço, e outros grupos de caracteres depende do idioma corrente. Em particular, a classe [a-z] pode não ser equivalente a %l.
--]]

-- print(string.find(a, "Lua"))


-- local ini, fim = string.find(a, "%w+") -- 
-- if ini then
--     print(ini, fim)
--     print(string.sub(a, ini, fim))
-- else
--     print("Padrão não encontrado")
-- end


-- Usando Lib de Strings para Arquivo CSV
local conteudo = io.open("atelie-catalogo-produtos.csv"):read("*a")


-- Use a função string.gmatch para iterar pelas linhas do arquivo
for linha in conteudo:gmatch("[^\n]+") do
    local titulo, isbn, autor, assunto, valor = linha:match("([^;]+);([^;]+);([^;]+);([^;]+);([^;]+);") 
    if titulo and isbn and autor and assunto and valor then
        print("Titulo: " .. titulo)
        print("ISBN: " .. isbn)
        print("Autor: " .. autor)
        print("Assunto: " .. assunto)
        print("Valor: " .. valor)
    end
end