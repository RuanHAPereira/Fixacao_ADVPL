#include 'Totvs.ch'

user function ES002()

    local nMsg := 0
    
    nMsg := FwInputBox("Informe um numero: ")

    Alert("O numero informado foi " + CVALTOCHAR( nMsg ))

return
