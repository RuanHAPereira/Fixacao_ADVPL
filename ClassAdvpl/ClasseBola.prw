#include "totvs.ch"

Class xBola

    data cCor
    data nCircunf
    data cMaterial

    method New() CONSTRUCTOR
    method TrocarCorMaterial()
    method MostraCor()

EndClass

Method New() Class xBola
    ::cCor := "Preta"
    ::nCircunf := 30
    ::cMaterial := "Ferro"
Return Self

Method TrocarCorMaterial() Class xBola

    Local cNovaCor := ""
    Local cNovoMaterial := ""

    cNovaCor := FwInputBox("Digite a nova cor da bola:")
    cNovoMaterial := FwInputBox("Digite o novo material da bola:")

    If !Empty(cNovaCor) && !Empty(cNovoMaterial)
        ::cCor := cNovaCor
        ::cMaterial := cNovoMaterial
        FwAlertInfo("A cor da bola foi alterada para: " + cNovaCor + CRLF + ;
                    "O material da bola foi alterado para: " + cNovoMaterial, "Aten��o")
    Else
        FwAlertInfo("Nenhuma cor ou material foram fornecidos. As caracter�sticas da bola n�o foram alteradas.", "Aten��o")
    EndIf
Return

Method MostraCor() Class xBola
    FwAlertInfo("A cor da bola �: " + Alltrim(::cCor) + CRLF + ;
                "O material da bola �: " + Alltrim(::cMaterial) + CRLF + ;
                "A circunfer�ncia da bola �: " + Alltrim(Str(::nCircunf)), "Aten��o")
Return
