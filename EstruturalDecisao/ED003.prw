#include 'Totvs.ch'

user function ED003()

    local cSexo := ''

    cSexo := FwInputBox("Informe seu sexo, utilize M ou F: ")

    if cSexo == "M"
        FwAlertInfo("Sexo MASCULINO!")
    elseif cSexo == "F"
        FwAlertInfo("Sexo FEMININO!")
    else
        FwAlertError("Caractere inválido!")
    endif

return
