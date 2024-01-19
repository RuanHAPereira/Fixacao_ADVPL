#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI12
Valida e corrige número de telefone. Faça um programa que leia um número de telefone, e corrija o número no caso deste conter somente 7 dígitos, 
acrescentando o '3' na frente. O usuário pode informar o número com ou sem o traço separador.

Valida e corrige número de telefone
Telefone: 461-0133
Telefone possui 7 dígitos. Vou acrescentar o digito três na frente.
Telefone corrigido sem formatação: 34610133
Telefone corrigido com formatação: 3461-0133
@type function
@author Ruan Henrique
@since 1/17/2024
/*/

user function STRI12()

    local cTelefone  := ""
    local cTelNum    := ""
    local cTelCerto  := ""
    local cTelFormat := ""
    local i := 0

    // Solicita ao usuário um número de telefone
    cTelefone := FwInputBox("Digite o número de telefone: ")

    // Remove caracteres não numéricos manualmente
    for i := 1 to Len(cTelefone)
        if Substr(cTelefone, i, 1) >= "0" .and. Substr(cTelefone, i, 1) <= "9"
            cTelNum += Substr(cTelefone, i, 1)
        endif
    next

    // Verifica se o telefone tem 7 dígitos
    if Len(cTelNum) == 7
        // Acrescenta '3' na frente do número
        cTelCerto := "3" + cTelNum

        // Formata o número corrigido
        cTelFormat := SubStr(cTelCerto, 1, 4) + "-" + SubStr(cTelCerto, 5)

        // Exibe os resultados
        FwAlertInfo("Telefone possui 7 dígitos. Vou acrescentar o digito três na frente.")
        FwAlertInfo("Telefone corrigido sem formatação: " + cTelCerto)
        FwAlertInfo("Telefone corrigido com formatação: " + cTelFormat)
    else
        // Mantém o número original
        cTelFormat := SubStr(cTelNum, 1, 4) + "-" + SubStr(cTelNum, 5)
        FwAlertInfo("Telefone válido: " + cTelFormat)
    endif
return
