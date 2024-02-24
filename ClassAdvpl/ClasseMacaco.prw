#include "totvs.ch"

Class Macaco

    data cNome
    data aBucho

    method New(cNome) Constructor
    method Comer(cAlimento)
    method VerBucho()
    method Digerir()

EndClass

Method New(cNome) Class Macaco

    ::cNome := cNome
    ::aBucho := {}
    
Return Self

Method Comer(cAlimento) Class Macaco

    //? Validar se o alimento n�o � o nome de outro macaco (macaco canibal)
    If Upper(cAlimento) == "MACACO"
        FwAlertInfo("N�o � permitido alimentar um macaco com outro macaco.", "Erro")
    Else
        aAdd(::aBucho, cAlimento)
        FwAlertInfo("O macaco " + ::cNome + " comeu " + cAlimento + ".", "Alimenta��o")
    EndIf

Return

Method VerBucho() Class Macaco

    Local cBucho := ""
    Local nPos := 0

    For nPos := 1 To Len(::aBucho)
        cBucho += ::aBucho[nPos] + ", "
    Next
    cBucho := SubStr(cBucho, 1, Len(cBucho) - 2)

Return cBucho


Method Digerir() Class Macaco

    FwAlertInfo("O macaco " + ::cNome + " est� digerindo...", "Digest�o")
    //? Esvaziar o bucho ap�s a digest�o
    ::aBucho := {}
    FwAlertInfo("O macaco " + ::cNome + " digeriu tudo. Seu est�mago est� vazio.", "Estado do Est�mago")

Return

