function Bigger(list)
    local biggerNum = list[1]
    for i = 2, #list do
        local a = i --existe apenas nesse local a variavel com local
        if list[i] > biggerNum then
            biggerNum = list[i]
        end
    end
    return biggerNum
end

print(Bigger({2,10,40,21,32,140,150,200,102}))