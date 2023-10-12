--[[
        - Em Lua, os arrays sao chamados de "tabelas" e podem ser criados usando `{}`.
        - Eles podem conter valores de qualquer tipo, incluindo números, 
        strings, outras tabelas e até mesmo funções.    
--]]

local a = {10, 20, 30}

-- a[4] = 40

-- print(a[1])
-- print(a[2])
-- print(a[3])
--  print(a[4])
-- print("Comprimento da tabela A: ".. #a)

-- if a[4] == nil then
--         print("O elemento 4 nao existe")
-- end

-- Acesso de elementos da tabela

a["count"] = "Count" .. " " .. 4 + 1
a.outro = 2

-- print(a["count"])
-- print(a.count) -- mesma coisa que o a["count"]
-- print(a.outro)

-- Dicionarios

local usuario = {
        nome = "Richard",
        idade = 26
}

local host = {
        ip = "127.0.0.1",
        port = 8080
}



-- print(usuario.nome)
-- print(usuario.idade)

-- print(host.ip)
-- print(host.port)

-- Da pra colocar funções dentro de uma tabela

Vector = {}

Vector.create = function(x,y)
        return {x=x, y=y}
end

Vector.soma = function(v1, v2)
       local res = {}
       res.x = v1.x + v2.x
       res.y = v1.y + v2.y
       return res
end


-- Biblioteca table

function Vector.print(v)
        -- print("(" .. v.x .. "," .. v.y .. ")")
        print(table.concat({"(", v.x, ", ", v.y, ")"}))
end

-- local v1 = Vector.create(1, 2)
-- local v2 = Vector.create(10, 20)

-- Vector.print(v1)
-- Vector.print(v2)
-- Vector.print(Vector.soma(v1, v2))

local b = {7, 5, 8}
b["count"] = 500

-- table.insert(b, 3)
-- table.insert(b, 2, 30) -- insert eh como se fizesse uma operação de push
-- print(b[3])
-- print(b[2])
-- table.remove(b) -- remove eh como se fosse uma operação de pop, indice é opciona
-- print(b[2])

-- Outras Funcoes

for key, value in ipairs(b) do -- esse for eh parecido com o foreach. O ipairs só itera pelos indices numericos, e pairs itera para numeros e nao numeros
        -- print(value)
end

-- print(next(b)) -- Retorna o próximo elemento da tabela

-- Ele vai iterando por todos elementos e vai parar quando chegar a nil 
-- local i, v = next(b)
-- i, v = next(b, i)
-- i, v = next(b, i)
-- i, v = next(b, i)
-- print(i, v)

-- Unpack serve pra Pegar uma tabela numerica, abrir os valores dela para passar para uma funcao

local array = {1,2}

local function sub(d,e)
        return e - d
end

-- print(sub(array[1], array[2]))
print(sub(table.unpack(array)))

-- Combinando Varargs com Unpack, da pra fazer muita coisa interessante em Lua.

