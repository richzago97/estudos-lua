-- --Enquanto for verdadeiro
-- local num=0
-- while num<=10 do
--     print(num)
--     num=num+1
-- end

-- print("\n")

-- --Ate que seja verdadeiro
-- local num2=0
-- repeat
--     print(num2)
--     num2=num2+1
-- until num>10

-- math.randomseed(os.time())

local valor=math.random(10)
local tentativas=1

print("Adivinhe o valor:")
local num=io.read("*number")

while num~=valor do
    tentativas=tentativas+1
        if(num<valor) then
            print("Seu valor foi menor")
        elseif(num>valor) then
            print("Seu valor foi maior")
        end
        print("Digite o valor:")
        num=io.read("*number")
end

print("Acertou em "..tentativas.." tentativas")
