local function Sum(...)
    local s=0
    for i,v in pairs{...} do
    s=s+v
    end
    return s
end

print("Sum: "..Sum(1,2,3,4,8))