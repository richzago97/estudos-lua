local function ex1()
    -- local a = {}
    local meta = {}
    local a = setmetatable({}, meta)
    print(getmetatable(a) == meta)
end

-- ex1()

local function ex2()
    local meta =
    {
        __tostring = function (self)
            return "Nome: " .. self.name
        end
    }
    local a = setmetatable({name = "Minha tabela"}, meta)
    print(a)
    a.name = "Novo nome"
    print(a)
end

-- ex2()

