-- Comando Desconsiderado

-- ::ini::
-- print("\n\n Digite um numero")
-- local num=io.read()
-- print("Numero digitado: "..num)
-- print("\n Digitar outro numero?")
-- local resp=io.read()
-- local resp=io.read()
-- if resp=="s" then
--     goto ini


print("Dia ensolarado?")
local resp=io.read()
if resp=="s" then
    goto sol
else
    goto chuva
end

::sol::
print("Vou sair de casa!")
goto fim

::chuva::
print("Vou ficar em casa!")

::fim::
print("Fim do programa!")