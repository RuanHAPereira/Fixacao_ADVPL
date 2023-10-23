#include 'Totvs.ch'

/*/{Protheus.doc} ED004B
Fa�a um Programa que verifique se uma letra digitada � vogal ou consoante.
Varia��o utilizando o Operador Contido "$"
@type function
@author Ruan Henrique
@since 10/23/2023
/*/

user function ED004B()

    local cLetra := ''
    local cPalavra := "AEIOU"

    cLetra := (FwInputBox("Digite uma letra do alfabeto: "))
   
    if UPPER(cLetra) $ (cPalavra)
        FwAlertInfo("Essa letra � vogal!")
    else
        FwAlertInfo("� uma consoante")
    endif
  
return
