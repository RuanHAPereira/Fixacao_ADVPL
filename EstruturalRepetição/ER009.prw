#include 'Totvs.ch'

/*/{Protheus.doc} ER009
Faça um programa que imprima na tela apenas os números ímpares entre 1 e 50.
@type function
@author Ruan Henrique
@since 10/30/2023
/*/

user function ER009()

    local nCont := 0

    for nCont := 1 to 50 
        if nCont % 2 <> 0
            FwAlertInfo(Alltrim(str(nCont))) 
        endif
    next

return


