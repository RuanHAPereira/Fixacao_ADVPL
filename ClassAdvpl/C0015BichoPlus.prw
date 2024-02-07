#include "totvs.ch"

User Function C0015BichoPlus()

    Local cContinua := "S"
    Local cNome := "Totver"
    Local nTempoBrincadeira := 0
    Local nComidaFornecida := 0
    Local oBichinho := BichinhoPP():New(cNome)

    Do While .T.
        nTempoBrincadeira := Val(FwInputBox("Digite por quanto tempo voc� ir� brincar com o bichinho (em minutos):"))
        nComidaFornecida := Val(FwInputBox("Digite a quantidade de comida que voc� ir� fornecer ao bichinho:"))

        // Exibe os valores iniciais do bichinho
        FwAlertInfo("Nome: " + oBichinho:Nome() + ", Fome: " + Alltrim(Str(oBichinho:Fome())) + ", Sa�de: " + Alltrim(Str(oBichinho:Saude())) + ", Idade: " + Alltrim(Str(oBichinho:Idade())), "Bichinho Virtual")

        // Simula a alimenta��o do bichinho e brincadeira
        oBichinho:AltComidaForn(nComidaFornecida)
        oBichinho:AltTempoBrinc(nTempoBrincadeira)

        // Exibe os valores atualizados do bichinho ap�s alimenta��o e brincadeira
        FwAlertInfo("Ap�s alimenta��o e brincadeira - Fome: " + Alltrim(Str(oBichinho:Fome())) + ", Sa�de: " + Alltrim(Str(oBichinho:Saude())), "Bichinho Virtual")

        // Pergunta ao usu�rio se deseja continuar
        cContinua := FwInputBox("Deseja brincar novamente com o bichinho? (S/N)")
        If cContinua == "N"
            Exit
        EndIf
    EndDo

    // Exibe os valores finais do bichinho
    FwAlertInfo("Valores finais - Fome: " + Alltrim(Str(oBichinho:Fome())) + ", Sa�de: " + Alltrim(Str(oBichinho:Saude())), "Bichinho Virtual")

Return
