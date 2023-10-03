-- Comando Desconsiderado

::sala1:: do
    print("\n\n Voce esta na sala 1")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()

    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3"then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala invalida")
        goto sala1
    end
end

::sala2:: do
    print("\n\n Voce esta na sala 2")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()

    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3"then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala invalida")
        goto sala2
    end
end

::sala3:: do
    print("\n\n Voce esta na sala 3")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()

    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3"then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala invalida")
        goto sala3
    end
end

::sala4:: do
    print("\n\n Voce esta na sala 4 que e a saida")
    print("Fim de jogo!")

end