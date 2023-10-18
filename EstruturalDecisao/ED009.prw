#include 'Totvs.ch'

user function ED009()

    local aNumeros := {}
    local nCont := 0

    FwAlertInfo("Informe três números a seguir!!")

    for nCont := 1 to 3
        nNum := val(FwInputbox("Digite um número: "))
        aAdd(aNumeros, nNum)
    next

    //? aSort(aArray, nInicio, nCont, {bOrdem}) -> {|x,y"ordem inicial"| x > y "sinal de maior indica ordem descrescente"}
    ASORT(aNumeros, , , {|x,y| x > y}) 

    FwAlertInfo("Números em ordem decrescente: " + Alltrim(STR(aNumeros[1])) + ", " + Alltrim(STR(aNumeros[2])) + ", " + Alltrim(STR(aNumeros[3])))

return
