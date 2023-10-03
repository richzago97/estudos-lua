local dias={"domingo", "segunda", "terca", "quarta", "quinta", "sexta", "sabado"}

-- for numérico
-- for i=1,7 do
--     print(dias[i])
-- end

-- for generico

-- for key,value in pairs(dias) do
--     print(key.." - "..value)
-- end

-- string

local nome="Richard1"
for value in string.gmatch(nome, ".") do
    print(value)
end