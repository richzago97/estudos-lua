print("Digite um valor:")
 local n1=io.read()
print("Digite outro valor:")
 local n2=io.read()
print("Digite a operacao:")
 local op=io.read()

if op=="+"then
    local res=n1+n2
    print("Soma: "..res)
elseif op=="-"then
    local res=n1-n2
    print("Subtracao: "..res)
elseif op=="*"then
    local res=n1*n2
    print("Multiplicacao: "..res)
elseif op=="/" and n2~="0" then
    local res=n1/n2
    print("Divisao: "..res)
else
    print("Operacao invalida!")
end

