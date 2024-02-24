#include "totvs.ch"

// User Function para testar a classe Fazenda
User Function C017Fazenda()

    Local oFazenda 
    Local cOpcao  := ""
    Local nComida := 0
    Local nTempo  := 0

    oFazenda := Fazenda():New()
    oFazenda:CriarBichinhos(5)

    Do While .T.
        cOpcao := FwInputBox("Escolha uma opção:" + CRLF + ;
                                    "1. Alimentar todos os bichinhos" + CRLF + ;
                                    "2. Brincar com todos os bichinhos" + CRLF + ;
                                    "3. Ouvir todos os bichinhos" + CRLF + ;
                                    "4. Sair")

        If cOpcao == "1"
            nComida := Val(FwInputBox("Digite a quantidade de comida para alimentar os bichinhos:"))
            oFazenda:AlimentarBichinhos(nComida)
        ElseIf cOpcao == "2"
            nTempo := Val(FwInputBox("Digite o tempo para brincar com os bichinhos:"))
            oFazenda:BrincarComBichinhos(nTempo)
        ElseIf cOpcao == "3"
            oFazenda:OuvirBichinhos()
        ElseIf cOpcao == "4"
            Exit
        Else
            FwAlertInfo("Opção inválida. Escolha uma opção válida.", "Erro")
        EndIf
    EndDo

Return
