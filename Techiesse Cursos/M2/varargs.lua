-- 1.0 Varargs

local function soma(...)
    local res = 0
    for _, v in ipairs{...} do
        res = res + v
    end
    return res
end

-- print(soma(2,3,4))

-- 2.0 Varargs Expression

local function teste(...)
    -- return ... -- vai pegar a tupla do print e passar adiante, somente isso

        local a, b = ...
        return a,b
end

-- print(teste(2,3,4))

-- 3.0 Ajuste do número de parametros de uma expressão
    local c, d = teste(6,7,8)
    -- print(c, d)

-- 4.0 Elementos obrigatórios + varargs

local function teste2(a, ...) -- primeiro parametros fixos, depois parametros variaveis
    return a, ...
end

-- print(teste2(2,3,4))

-- 5.0 Empacotar varargs em tabelas

local function pack(...)
    return {...}
end

local function showTable(t)
    local res = {}
    for k, v in pairs(t) do
        table.insert(res, k .. "=" .. v)
    end
    return table.concat(res, "\n")
end
local function ex3()
    print(showTable(pack(10,20,30)))
end

--ex3()

-- 6.0 Unpacking

local function ex4()
    local t = {1,2,3,4,5}
    local s = soma(table.unpack(t))
    print(s)
end

-- ex4()

-- 7.0 Número de argumentos variáveis

local function ex5()
    local function fn(...)
        local n = #{...}
        print(n)
    end
    fn(1)
    fn(1, 10)
    fn(1, 10, 100, 200)
end

-- ex5()

-- 8.0 Recebendo tabela ou varargs

local function soma2(...)
    local args = {...}
    if type(args[1]) == "table" then
        args = args[1]
    end

    local res = 0
    for _, v in ipairs(args) do
        res = res + v
    end
    return res
end

local function ex6()
    local t = {1,2,3,4,5}
    local s = soma2(t)
    print(s)
end

-- ex6()


