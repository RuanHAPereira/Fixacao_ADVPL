#include 'Totvs.ch'

/*/{Protheus.doc} ER001
Fa�a um programa que pe�a uma nota, entre zero e dez. 
Mostre uma mensagem caso o valor seja inv�lido e continue pedindo at� que o usu�rio informe um valor v�lido.
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
            FwAlertInfo("Nota inv�lida! Digite uma nota entre 0 e 10.")
        endif
    enddo

    FwAlertInfo("Nota v�lida: " + Alltrim(STR(nNota)))


return
