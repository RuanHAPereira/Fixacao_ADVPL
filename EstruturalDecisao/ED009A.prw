#include 'Totvs.ch'

/*/{Protheus.doc} ED009A
Fa�a um Programa que leia tr�s n�meros e mostre-os em ordem decrescente.
Varia��o do Exercicio usando a fun��o ASORT().
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED009A()

    local aNumeros := {}
    local nCont := 0

    FwAlertInfo("Informe tr�s n�meros a seguir!!")

    for nCont := 1 to 3
        nNum := val(FwInputbox("Digite um n�mero: "))
        aAdd(aNumeros, nNum)
    next

    //? aSort(aArray, nInicio, nCont, {bOrdem}) -> {|x,y"ordem inicial"| x > y "sinal de maior indica ordem descrescente"}
    ASORT(aNumeros, , , {|x,y| x > y}) 

    FwAlertInfo("N�meros em ordem decrescente: " + Alltrim(STR(aNumeros[1])) + ", " + Alltrim(STR(aNumeros[2])) + ", " + Alltrim(STR(aNumeros[3])))

return
