#include 'Totvs.ch'

/*/{Protheus.doc} ER001
Faça um programa que peça uma nota, entre zero e dez. 
Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.
@type function
@author Ruan Henrique
@since 10/26/2023
/*/

user function ER001()
    
    local nNota := 0

    do while .T.
        nNota := val(FwInputBox("Digite uma nota entre 0 e 10: "))

        if nNota >= 0 .and. nNota <= 10
           exit
        else
            FwAlertInfo("Nota inválida! Digite uma nota entre 0 e 10.")
        endif
    enddo

    FwAlertInfo("Nota válida: " + Alltrim(STR(nNota)))


return
