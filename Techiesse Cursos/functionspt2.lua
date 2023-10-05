function Bhask(a,b,c)

    local delta = b^2 - 4 * a * c
    local x1 = (-b - math.sqrt(delta)) / (2 * a)
    local x2 = (-b + math.sqrt(delta)) / (2 * a)

    return x1, x2
end

-- x^2 - 5x + 6 - 0

-- Multiplos valores de retorno

Resultx1, Resultx2 = Bhask(1, -5, 6)
print(Resultx1, Resultx2)
-- print(Bhask(1, -5, 6))



--Varargs

function Concatenate(...)
    local args = {...}
    local ret = ""
    for i, arg in ipairs(args) do
        ret = ret .. arg
    end
    return ret
end

local x = 1
local y = 2
local params = {"(", tostring(x), ", ", tostring(y), ")"}

-- print(Concatenate("R", "I", "C", "H", "A", "R", "D"))
print(Concatenate(table.unpack(params)))

-- Closures,  são funções com uma variável local definida externamente.

function GenSoma(parcela)
   local s = function(b)
        return parcela + b
   end
   return s
end

local soma2 = GenSoma(2)
print(soma2(10))