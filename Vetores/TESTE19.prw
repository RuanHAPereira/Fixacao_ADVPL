#INCLUDE "TOTVS.CH"

User Function TESTE19()

    Local aVotos      := {}  
    Local nTotalVotos := 0   
    Local nVoto       := 0   
    Local nCont       := 0  

    For nCont := 1 To 6
        AAdd(aVotos, {Sistem(nCont), 0, 0, nCont})
    Next

    Do While .T.
        FwAlertInfo("Vote com o número equivalente ao Sistema Operacional:" + CRLF +;
        "1 - Windows Server" + CRLF + "2 - Unix" + CRLF + "3 - Linux" + CRLF +;
        "4 - Netware" + CRLF + "5 - Mac OS" + CRLF + "6 - Outro" + CRLF + "0 - Encerrar")

        nVoto := Val(FwInputBox("Digite o número correspondente ao Sistema Operacional (0 para encerrar): "))

        If nVoto == 0
            Exit
        EndIf

        nCont := aScan(aVotos, {|linha| linha[4] == nVoto})

        If nCont > 0
            aVotos[nCont][2]++
            nTotalVotos++
        Else
            FwAlertInfo("Número inválido. Por favor, digite um número de 0 a 6.")
        EndIf
    EndDo

    For nCont := 1 To Len(aVotos)
        If aVotos[nCont][2] > 0
            aVotos[nCont][3] := (aVotos[nCont][2] / nTotalVotos) * 100
        EndIf
    Next

    Result(aVotos, nTotalVotos)

Return

Static Function Result(aVotos, nTotalVotos)

    Local nCont       := 0   
    Local nVencedor   := 1   
    Local cResult     := ""  

    cResult += "Resultado da votação:" + CRLF + CRLF

    For nCont := 1 To Len(aVotos)
        If aVotos[nCont][2] > 0
            cResult += "Sistema Operacional " + aVotos[nCont][1] + ": " + AllTrim(Str(aVotos[nCont][3], 6, 2)) + "%" + CRLF +;
                        "Total de votos: " + AllTrim(Str(aVotos[nCont][2])) + CRLF + CRLF
        EndIf
    Next

    For nCont := 2 To Len(aVotos)
        If aVotos[nCont][2] > aVotos[nVencedor][2]
            nVencedor := nCont
        EndIf
    Next

    cResult += "O Sistema Operacional mais votado foi o " + aVotos[nVencedor][1] + ", com " +;
                AllTrim(Str(aVotos[nVencedor][2])) + " votos, correspondendo a " +;
                AllTrim(Str(aVotos[nVencedor][3], 6, 2)) + "% dos votos."

    FwAlertInfo(cResult)

Return

Static Function Sistem(nOpcao)

    Local cMsg := ""

    Do Case
        Case nOpcao == 1
            cMsg := "Windows Server"
        Case nOpcao == 2
            cMsg := "Unix"
        Case nOpcao == 3
            cMsg := "Linux"
        Case nOpcao == 4
            cMsg := "Netware"
        Case nOpcao == 5
            cMsg := "Mac OS"
        Case nOpcao == 6
            cMsg := "Outro"
        Otherwise
            cMsg := "Desconhecido"
    EndCase

Return(cMsg)
