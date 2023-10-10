#include 'Totvs.ch'

user function ES002()

    local cMsg := ""

    cMsg := FwInputBox("Informe um numero: ", cMsg)

    Alert("O numero informado foi " + CVALTOCHAR( cMsg ))

return
