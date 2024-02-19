#include "Totvs.ch"

User Function STRI12B()

    Local cTelefone        := ""
    Local cTelCorreto      := "" 
    Local cMensagem        := ""  

    cTelefone := FwInputBox("Digite o n�mero de telefone (com ou sem tra�o separador): ")

    cTelefone := StrTran(cTelefone, "-", "")

    If Len(cTelefone) = 7
        cTelCorreto := "3" + cTelefone  ///? Acrescenta o '3' na frente do n�mero
        cMensagem := "Telefone possui 7 d�gitos. Vou acrescentar o d�gito '3' na frente." + CRLF + ;
                      "Telefone corrigido sem formata��o: " + cTelCorreto + CRLF + ;
                      "Telefone corrigido com formata��o: " + SubStr(cTelCorreto, 1, 4) + "-" + SubStr(cTelCorreto, 5, 4)
    Else
        cMensagem := "O n�mero de telefone digitado n�o precisa de corre��o."
    EndIf

    FwAlertInfo(cMensagem)

Return
