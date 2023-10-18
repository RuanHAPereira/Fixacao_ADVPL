#include 'Totvs.ch'

/*/{Protheus.doc} ES002
Faça um Programa que peça um número e então mostre a mensagem O número informado foi [número].
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES002()

    local nMsg := 0
    
    nMsg := FwInputBox("Informe um numero: ")

    Alert("O numero informado foi " + CVALTOCHAR( nMsg ))

return
