--Existe uma maneira melhor para percorrer quando é uma lista.
local num={1,7,4,2,3,4,5,8,9,100}

-- for i=1,10 do
--     print(num[i])
-- end

for i=1, #num do
    print(num[i])
end

local soma=0
for i=1, #num do
    soma=soma+num[i]
end
print("Soma: "..soma)