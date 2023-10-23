#include 'Totvs.ch'

/*/{Protheus.doc} ED009A
Faça um Programa que leia três números e mostre-os em ordem decrescente.
Variação do Exercicio usando a função ASORT().
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED009A()

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
