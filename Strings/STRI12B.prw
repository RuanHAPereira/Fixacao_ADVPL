#include "Totvs.ch"

User Function STRI12B()

    Local cTelefone        := ""
    Local cTelCorreto      := "" 
    Local cMensagem        := ""  

    cTelefone := FwInputBox("Digite o número de telefone (com ou sem traço separador): ")

    cTelefone := StrTran(cTelefone, "-", "")

    If Len(cTelefone) = 7
        cTelCorreto := "3" + cTelefone  ///? Acrescenta o '3' na frente do número
        cMensagem := "Telefone possui 7 dígitos. Vou acrescentar o dígito '3' na frente." + CRLF + ;
                      "Telefone corrigido sem formatação: " + cTelCorreto + CRLF + ;
                      "Telefone corrigido com formatação: " + SubStr(cTelCorreto, 1, 4) + "-" + SubStr(cTelCorreto, 5, 4)
    Else
        cMensagem := "O número de telefone digitado não precisa de correção."
    EndIf

    FwAlertInfo(cMensagem)

Return
