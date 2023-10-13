function Split(texto, sep)
    local partes = {}

    local iniParte = 1

    repeat
        local posQuebra, fimQuebra = string.find(texto, sep, iniParte)
        local fimParte
        if posQuebra ~= nil then
            fimParte = posQuebra - 1
        end

        local parte = string.sub(texto, iniParte, fimParte)

        if fimQuebra ~= nil then
            iniParte = fimQuebra + 1
        end

        table.insert(partes, parte)
    until  posQuebra == nil

    return partes
end

function Trim(str)
    str = string.gsub(str, "^%s+", "")
    str = string.gsub(str, "%s+$", "")
    return str
end
