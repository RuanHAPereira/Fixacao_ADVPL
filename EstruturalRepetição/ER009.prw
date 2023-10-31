#include 'Totvs.ch'

/*/{Protheus.doc} ER009
Faça um programa que imprima na tela apenas os números ímpares entre 1 e 50.
@type function
@author Ruan Henrique
@since 10/30/2023
/*/

user function ER009()

    local nNumero := 1
    local cMsg    := ''

    for nNumero := 1 to 50
        if Mod(nNumero, 2) <> 0
            cMsg += (Alltrim(str(nNumero)) + ",")
        else
            cMsg += (Alltrim(str(nNumero)) + ".")
        endif
    next

    FwAlertInfo("Os numeros impares são: " + cMsg)

return


