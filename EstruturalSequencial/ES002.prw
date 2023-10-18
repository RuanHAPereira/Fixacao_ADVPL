#include 'Totvs.ch'

/*/{Protheus.doc} ES002
Fa�a um Programa que pe�a um n�mero e ent�o mostre a mensagem O n�mero informado foi [n�mero].
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES002()

    local nMsg := 0
    
    nMsg := FwInputBox("Informe um numero: ")

    Alert("O numero informado foi " + CVALTOCHAR( nMsg ))

return
