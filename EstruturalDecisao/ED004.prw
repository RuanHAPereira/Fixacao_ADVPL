#include 'Totvs.ch'

/*/{Protheus.doc} ED004
Faça um Programa que verifique se uma letra digitada é vogal ou consoante.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED004()

    local cLetra := ''

    cLetra := FwInputBox("Digite uma letra do alfabeto: ")

    cLetra := UPPER( cLetra )

    if cLetra == "A" .or. cLetra == "E" .or. cLetra == "I" .or. cLetra == "O" .or. cLetra == "U"
        FwAlertInfo("Essa letra é vogal!")
    else
        FwAlertInfo("É uma consoante")
    endif
  
return
