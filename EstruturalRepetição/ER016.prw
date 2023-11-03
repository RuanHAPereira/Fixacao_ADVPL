#include 'Totvs.ch'

/*/{Protheus.doc} ER016
A s�rie de Fibonacci � formada pela seq��ncia 0,1,1,2,3,5,8,13,21,34,55,... 
Fa�a um programa que gere a s�rie at� que o valor seja maior que 500.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER016()

    local nFibonn1 := 0
    local nFibonn2 := 1
    local nFibo    := 0

    FwAlertInfo(Alltrim(Str(nFibonn1))) //? Imprime o primeiro n�mero da s�rie
    FwAlertInfo(Alltrim(Str(nFibonn2))) //? Imprime o segundo n�mero da s�rie

    Do While nFibo <= 500 
        nFibo := nFibonn1 + nFibonn2
        
        FwAlertInfo(Alltrim(Str(nFibo)))
        
        nFibonn1 := nFibonn2
        nFibonn2 := nFibo
    EndDo

return

