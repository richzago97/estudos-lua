-- local _F = require("sintaxe-metodo")

local function ex_index()
    -- local defaults = {
    --     age = 26,
    --     adress = "Rua Ramiro Barcelos"
    -- }

    local defaults = {}
    local meta = {
            age = 26,
            adress = "Rua Ramiro Barcelos"
    }
    -- meta.__index = function(t, key)
    --     print(_F('__index: O campo "%s" nao existe', key))
    --     return 'a'
    -- end

    -- meta.__index = defaults
    meta.__index = meta

    -- meta.__index = function (t, key) -- mesma coisa que o meta index = defaults
    --     return defaults[key]
    -- end
    local a = setmetatable({name = "Meu nome"}, meta)
    -- a.age = 30
    -- print(a.name)
    -- print(a.age)
    -- print(rawget(a, 'age'))
    -- print(a.adress)
end

-- ex_index()

local function ex_newindex()
    local values = {}
    local meta = {}
    meta.__newindex = values -- new index como tabela
    -- function meta.__newindex(self, key, value)
    --     print('__newindex: Tentando atribuir "' .. value .. '" ao campo "' .. key .. '"')
    --     -- self[key] = value ou self.key = value -- acontece uma recursiva infinita, estouro de pilhas (stack overflow), para conseguir escrever utilizamos o rawset
    --     -- rawset(self, key, value) atribuição sem usar new index
    --     values[key] = value
    -- end
    local a = setmetatable({name = "Meu nome"}, meta)
    a.age = 30
    -- print(a.age) -- retorna nil, quando defino o index, ele captura, mas nao escreve, continua nil a nao ser que eu escreva dentro da function meta.__newindex.
    print(values.age)
end

-- ex_newindex()

-- Qualquer valor pode ter uma metatable (ex string)
local function ex_str()
    -- for k, v in pairs(getmetatable("").__index) do
    --     print(k,v)
    -- end
    -- print(string.format == getmetatable("").__index.format)

    local s = "a,b"
    print(s:gsub(",", ""))
    print(string.gsub(s, ",", ""))

end


ex_str()
