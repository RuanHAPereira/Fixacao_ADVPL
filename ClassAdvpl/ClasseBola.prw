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
                    "O material da bola foi alterado para: " + cNovoMaterial, "Atenção")
    Else
        FwAlertInfo("Nenhuma cor ou material foram fornecidos. As características da bola não foram alteradas.", "Atenção")
    EndIf
Return

Method MostraCor() Class xBola
    FwAlertInfo("A cor da bola é: " + Alltrim(::cCor) + CRLF + ;
                "O material da bola é: " + Alltrim(::cMaterial) + CRLF + ;
                "A circunferência da bola é: " + Alltrim(Str(::nCircunf)), "Atenção")
Return
