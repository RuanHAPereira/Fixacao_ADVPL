#include 'Totvs.ch'

user function ED004()

    local cLetra := ''

    cLetra := FwInputBox("Digite uma letra do alfabeto: ")

    cLetra := UPPER( cLetra )

    if cLetra == "A" .or. cLetra == "E" .or. cLetra == "I" .or. cLetra == "O" .or. cLetra == "U"
        FwAlertInfo("Essa letra � vogal!")
    else
        FwAlertInfo("� uma consoante")
    endif
  
return
