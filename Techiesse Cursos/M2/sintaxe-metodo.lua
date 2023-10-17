_F = string.format

Pair = {
    sum = function (self)
        return self.x + self.y
    end,
}

function Pair.create2(x,y)
    return {
        x = x,
        y = y,
        sum = Pair.sum,
    }
end

P1 = Pair.create2(1, 2)
P2 = Pair.create2(10, 20)

print(_F("p1.x = %s", P1.x))
print(_F("p1.y = %s", P1.y))
print(_F("p1.sum() = %s", P1:sum()))
print()
print(_F("p2.x = %s", P2.x))
print(_F("p2.y = %s", P2.x))
print(_F("p2.sum() = %s", P2:sum()))


-- Pair1 = {
--     x = 1,
--     y = 2,
-- }

-- function Pair1.sum(p)
--     return p.x + p.y
-- end


-- Pair2 = {
--     x = 10,
--     y = 20,
--     sum = Pair1.sum
-- }

-- print(_F("p1.x = %s", Pair1.x))
-- print(_F("p1.y = %s", Pair1.y))
-- print(_F("p1.sum() = %s", Pair1:sum()))
-- print()
-- print(_F("p2.x = %s", Pair2.x))
-- print(_F("p2.y = %s", Pair2.x))
-- print(_F("p2.sum() = %s", Pair2:sum()))