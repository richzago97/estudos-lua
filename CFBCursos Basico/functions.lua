local function sumFirstVersion(n1,n2)
    return n1 + n2
end

local function sumSecondVersion(n1,n2)
    local res=n1+n2
    print (" A soma de: "..n1.. " com " ..n2.. " e igual a "..res)
end


print("Digite o primeiro valor: ")
local num1=io.read()
print("Digite o segundo valor: ")
local num2=io.read()

local function sumThirdVersion(n1,n2)
    local res=n1+n2
    print("Soma: "..res.. " - Numeros utilizados: "..n1.." e "..n2)
end

local function sumFourthVersion (n1,n2)
    local res=n1+n2
    return res
end

local function calc(n1, n2)
    local sum=n1+n2
    local mul=n1*n2
    local sub=n1-n2
    local div=n1/n2
    return sum, mul, sub, div
end
local rsum, rmul, rsub, rdiv=calc(num1,num2)
print("Sum: "..rsum)
print("Multiplication: " ..rmul)
print("Subtraction: "..rsub)
print("Division: "..rdiv)

-- print("Soma: "..sumFourthVersion(num1,num2) .." - Numeros utilizados: "..num1.." e "..num2)
-- print(sumSecondVersion(10, 5))
-- print(sumFirstVersion(10, 4))

-- sumThirdVersion(num1,num2)


