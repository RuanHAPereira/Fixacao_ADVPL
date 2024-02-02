#INCLUDE "Totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} STRI06
Data por extenso. Faça um programa que solicite a data de nascimento (dd/mm/aaaa) do usuário 
e imprima a data com o nome do mês por extenso.
@type function
@author Ruan Henrique
@since 12/21/2023
/*/

User Function STRI06()

    Local aArea      := GetArea()
    Local cDataNasc  := ""
    Local cDataExten := ""

    // Solicita a data de nascimento ao usuário
    cDataNasc := FwInputBox("Digite a data de nascimento (dd/mm/aaaa): ")

    // Formata a data e verifica se é válida
    cDataExten := FormatDt(cDataNasc)

    If cDataExten <> ""
        // Exibe a data formatada
        FwAlertInfo("Você nasceu em " + cDataExten)
    Else
        FwAlertInfo("Data inválida. Digite no formato DD/MM/AAAA.")
    EndIf

    RestArea(aArea)
Return

Static Function ValidaData(cData)

    Local nDia := 0
    Local nMes := 0
    Local nAno := 0
    Local lRet := .F.

    // Verifica o formato da data
    If Len(cData) == 10 .And. SubStr(cData, 3, 1) == "/" .And. SubStr(cData, 6, 1) == "/"
        nDia := Val(SubStr(cData, 1, 2))
        nMes := Val(SubStr(cData, 4, 2))
        nAno := Val(SubStr(cData, 7, 4))

        // Verifica se a data é válida
        If nDia >= 1 .And. nDia <= 31 .And. nMes >= 1 .And. nMes <= 12 .And. nAno >= 1000
            lRet := .T.
        EndIf
    EndIf

Return(lRet)

Static Function FormatMes(nMes)

    Local aMeses := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}

    Return aMeses[nMes]

Return

Static Function FormatDt(cData)

    Local nDia := 0
    Local nMes := 0
    Local nAno := 0
    Local cMesExtenso := ""

    // Verifica se a data é válida
    If ValidaData(cData)
        nDia := Val(SubStr(cData, 1, 2))
        nMes := Val(SubStr(cData, 4, 2))
        nAno := Val(SubStr(cData, 7, 4))

        // Obtém o nome do mês por extenso
        cMesExtenso := FormatMes(nMes)

        // Retorna a data formatada
        Return AllTrim(Str(nDia)) + " de " + cMesExtenso + " de " + AllTrim(Str(nAno))
    Else
        // Retorna null se a data for inválida
        Return 'null'
    EndIf

Return(cData)
