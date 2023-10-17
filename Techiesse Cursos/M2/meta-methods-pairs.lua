local Pair = require "pair"

P1 = Pair(3,4)
P2 = Pair(1,2)

print(P1:abs())

function Test_soma()
    print(P1 + P2)
end

function Test_unm()
    print(-P1)
end

function Test_sub()
    print(P1 - P2)
end

function Test_prod()
    print(P1 * P2)
end

function Test_div()
    print(P1 / P2)
end
