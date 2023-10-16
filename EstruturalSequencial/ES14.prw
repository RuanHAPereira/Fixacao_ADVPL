#include 'Totvs.ch'

user function ES14()
  
    local nPeso    := 0
    local nExcesso := 0 
    local nMulta   := 0 

    nPeso := Val(FwInputBox("Informe o peso de peixes em kg: "))

    nExcesso := nPeso - 50

    //! Entra no If se exceder o peso de 50 quilos

    IF nExcesso > 0

        nMulta = nExcesso * 4

        FwAlertInfo("Excesso de peso: " + Alltrim(Str(nExcesso)) + " quilos")
        FwAlertInfo("Multa a ser paga: R$ " + Alltrim(Str(nMulta)))
    ELSE
        FwAlertInfo("Não há excesso de peso. Nenhuma multa será aplicada.")
    ENDIF

return
