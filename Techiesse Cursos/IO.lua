-- local a = io.read()
-- print("!" .. a .. "!")


io.write("Digite alguma coisa: ") -- stdout
local b = io.read() -- stdin
print(b)

local arquivo = io.open("nome do arquivo", "r") -- irá abrir o arquivo, o segundo parametro é para selecionar como vou ler o arquivo
    if arquivo then
        local conteudo = arquivo:read("*a") -- para ler o arquivo
        conteudo = arquivo:read(10) -- irá ler 10 caracteres do arquivo
        arquivo:close() -- para fechar o arquivo
    end

local arquivoSaida = io.open("testeSaida.txt", "w")
    if arquivoSaida then 
        arquivoSaida:write("Escrevendo no arquivo") -- dessa forma eu escrevo no arquivo
        arquivoSaida:close()
    end


