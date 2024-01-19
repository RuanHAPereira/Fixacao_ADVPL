#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI12
Valida e corrige n�mero de telefone. Fa�a um programa que leia um n�mero de telefone, e corrija o n�mero no caso deste conter somente 7 d�gitos, 
acrescentando o '3' na frente. O usu�rio pode informar o n�mero com ou sem o tra�o separador.

Valida e corrige n�mero de telefone
Telefone: 461-0133
Telefone possui 7 d�gitos. Vou acrescentar o digito tr�s na frente.
Telefone corrigido sem formata��o: 34610133
Telefone corrigido com formata��o: 3461-0133
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

    // Solicita ao usu�rio um n�mero de telefone
    cTelefone := FwInputBox("Digite o n�mero de telefone: ")

    // Remove caracteres n�o num�ricos manualmente
    for i := 1 to Len(cTelefone)
        if Substr(cTelefone, i, 1) >= "0" .and. Substr(cTelefone, i, 1) <= "9"
            cTelNum += Substr(cTelefone, i, 1)
        endif
    next

    // Verifica se o telefone tem 7 d�gitos
    if Len(cTelNum) == 7
        // Acrescenta '3' na frente do n�mero
        cTelCerto := "3" + cTelNum

        // Formata o n�mero corrigido
        cTelFormat := SubStr(cTelCerto, 1, 4) + "-" + SubStr(cTelCerto, 5)

        // Exibe os resultados
        FwAlertInfo("Telefone possui 7 d�gitos. Vou acrescentar o digito tr�s na frente.")
        FwAlertInfo("Telefone corrigido sem formata��o: " + cTelCerto)
        FwAlertInfo("Telefone corrigido com formata��o: " + cTelFormat)
    else
        // Mant�m o n�mero original
        cTelFormat := SubStr(cTelNum, 1, 4) + "-" + SubStr(cTelNum, 5)
        FwAlertInfo("Telefone v�lido: " + cTelFormat)
    endif
return
