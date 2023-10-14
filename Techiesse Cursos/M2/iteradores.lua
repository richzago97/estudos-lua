function Count(first, last, inc)
    inc = inc or 1
    local val = first
    local function fn()
        if inc > 0 and val > last or inc < 0 and val < last then
            return nil
        end
        local ret = val
        val = val + inc
        return ret
    end
    return fn
end

for val in Count(1, 11, 2) do
    print(val)
end



-- Simular uma classe

-- function Pair(_x, _y)
--     local x, y = _x or 0, _y or 0
--     return {
--         get = function () return x,y end,
--         set = function(newx, newy)
--             x, y = newx, newy
--         end
--     }
-- end

-- local p = Pair(1,2)
-- -- print(p.get())
-- p.set(10,20)
-- print(p.get())

--[[ Relembrando for numerico e tabelas --]]

-- numerico
-- for i = 1, 10 do
--     print(i)
-- end

-- Tabelas
-- for k, v in ipairs{10, 20, 30} do
--     print(k,v)
-- end

-- Closure Revisao

-- function NewCounter(first)
--     local i = first
--     local function count()
--         local ret = i
--         i = i + 1
--         return ret
--     end
--     return count
-- end

-- local c = NewCounter(1)
-- print(c()) -- == 1
-- print(c()) -- == 2
-- print(c()) -- == 3
-- print(c()) -- == 4