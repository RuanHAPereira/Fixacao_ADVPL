#include 'Totvs.ch'

/*/{Protheus.doc} ED003
Faça um Programa que verifique se uma letra digitada é "F" ou "M". Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED003()

    local cSexo := ''

    cSexo := UPPER(FwInputBox("Informe seu sexo, utilize M ou F: "))

    if cSexo == "M"
        FwAlertInfo("Sexo MASCULINO!")
    elseif cSexo == "F"
        FwAlertInfo("Sexo FEMININO!")
    else
        FwAlertError("Caractere inválido!")
    endif

return
