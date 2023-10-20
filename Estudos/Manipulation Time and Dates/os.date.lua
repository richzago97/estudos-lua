--[[ 
    Obtendo a Data Atual

    Para obter a data atual, você pode usar a função os.date. Aqui está um exemplo:
    O formato "%c" é usado para obter uma representação de data e hora completa. 
--]]

local dataAtual = os.date("%c")
print("Data atual:", dataAtual)

--[[
    Formatando Datas
    Você pode formatar datas e horas usando os códigos de formatação. Aqui 
    estão alguns exemplos:

        %A: Dia da semana completo (ex: "Wednesday").
        %d: Dia do mês (01-31).
        %B: Nome do mês completo (ex: "October").
        %Y: Ano com quatro dígitos (ex: "2023").
        %X: Hora no formato "hh:mm:ss".
        %Z: Nome do fuso horário (ex: "UTC").
--]]

local data = os.date("%A, %d de %B de %Y")
print("Data formatada:", data)



