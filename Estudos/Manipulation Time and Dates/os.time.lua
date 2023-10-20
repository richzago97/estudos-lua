--[[
  Convertendo Datas para Tempo Unix
  Lua permite converter datas em segundos desde a "época" 
  (1 de janeiro de 1970) usando a função os.time:  
--]]

local function ex1()
    local data = {year = 2023, month = 10, day = 20}
    local tempoUnix = os.time(data)
    print("Tempo Unix:", tempoUnix)
end
-- ex1()


--[[
    Manipulação de Tempo
    Você pode realizar operações com datas, como adicionar ou subtrair dias, 
    usando a biblioteca os.time. Aqui está um exemplo que adiciona um dia a uma 
    data:
--]]

local function ex2()
    local data = os.date("*t")  -- Obter a data atual como tabela
    data.day = data.day + 1     -- Adicionar um dia
    local novoTempoUnix = os.time(data)
    local novaData = os.date("%A, %d de %B de %Y", novoTempoUnix)
    print("Data futura:", novaData)
end

ex2()



