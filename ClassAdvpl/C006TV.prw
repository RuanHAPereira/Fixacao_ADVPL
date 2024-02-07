#include "totvs.ch"

User Function C006TV()

    Local oTV := TV():New()
    Local aOpcoes := {{1, "Alterar canal"},;
                     {2, "Aumentar volume"},;
                     {3, "Diminuir volume"},;
                     {4, "Mostrar status"},;
                     {5, "Sair"}}
    Local nOpcao := 0
    Local nCont := 0
    Local nNovoCanal := 0
    Local lRet := .T.
    Local cMsg := ''

    For nCont := 1 To Len(aOpcoes)
        cMsg += Alltrim(Str(aOpcoes[nCont][1])) + " - " + aOpcoes[nCont][2] + CRLF
    Next

    FwAlertInfo(cMsg, "Guia do controle da TV")

    While lRet
        nOpcao := Val(FwInputBox("Selecione uma opção:" + CRLF + ;
                                  "1 - " + Alltrim(Str(aOpcoes[1][1])) + " - " + aOpcoes[1][2] + CRLF + ;
                                  "2 - " + Alltrim(Str(aOpcoes[2][1])) + " - " + aOpcoes[2][2] + CRLF + ;
                                  "3 - " + Alltrim(Str(aOpcoes[3][1])) + " - " + aOpcoes[3][2] + CRLF + ;
                                  "4 - " + Alltrim(Str(aOpcoes[4][1])) + " - " + aOpcoes[4][2] + CRLF + ;
                                  "5 - " + Alltrim(Str(aOpcoes[5][1])) + " - " + aOpcoes[5][2] + CRLF))

        If nOpcao == 1  //? Alterar canal
            nNovoCanal := Val(FwInputBox("Digite o número do novo canal:"))
            oTV:AlterarCanal(nNovoCanal)
        ElseIf nOpcao == 2  //? Aumentar volume
            oTV:AumentarVolume()
        ElseIf nOpcao == 3  //? Diminuir volume
            oTV:DiminuirVolume()
        ElseIf nOpcao == 4  //? Mostrar status
            oTV:MostrarStatus()
        ElseIf nOpcao == 5  //? Sair
            lRet := .F.
        Else
            FwAlertInfo("Opção inválida.", "Erro")
        EndIf
    EndDo

Return
