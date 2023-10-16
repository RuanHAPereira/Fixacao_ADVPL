#include 'Totvs.ch'

static cStatic:= ("OI")

user function ES001()

    local cMsg := ''
    Private cVariavel := "Barra Mansa"
    
    cMsg := FwInputBox('Escreva algo: ')

    FwAlertInfo("O que vc escreveu foi: " + cMsg)

    Qualquer("TENHA UM OTIMO DIA!", TIME(), cMsg)
    Qualquer2()
    U_Teste()

return

static function Qualquer(cTexto, cHora, cX)

    FwAlertInfo(cTexto + SPACE( 2 ) + "São" + cHora )
    FwAlertInfo(cX)
    FwAlertInfo(cVariavel)

return

static function Qualquer2()

    FwAlertInfo(cVariavel)
    FwAlertInfo(cStatic)

return
