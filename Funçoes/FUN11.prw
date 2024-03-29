#INCLUDE "Totvs.ch"

//?Testado e ok.
/*/{Protheus.doc} FUN11
Data com m�s por extenso. Construa uma fun��o que receba uma data no formato DD/MM/AAAA
e devolva uma string no formato D de mesPorExtenso de AAAA. Opcionalmente, valide a data
e retorne NULL caso a data seja inv�lida.
@type function
@author Ruan Henrique 
@since 12/21/2023
/*/

User Function FUN11()

    Local aArea      := GetArea()
    Local cData      := ''
    Local cDataExten := ''

    cData := FwInputBox("Digite a data no formato DD/MM/AAAA: ")
    cDataExten := FormatDt(cData)

    If cDataExten <> ""
        FwAlertInfo("Data formatada: " + cDataExten)
    Else
        FwAlertInfo("Data inv�lida. Digite no formato DD/MM/AAAA.")
    EndIf

    RestArea(aArea)
Return

Static Function ValidaData(cData)

    Local nDia := 0
    Local nMes := 0
    Local nAno := 0
    local lRet := .F.

    If Len(cData) == 10 .And. SubStr(cData, 3, 1) == "/" .And. SubStr(cData, 6, 1) == "/"
        nDia := Val(SubStr(cData, 1, 2))
        nMes := Val(SubStr(cData, 4, 2))
        nAno := Val(SubStr(cData, 7, 4))

        If nDia >= 1 .And. nDia <= 31 .And. nMes >= 1 .And. nMes <= 12 .And. nAno >= 1000
            lRet := .T.
        EndIf
    EndIf

Return(lRet)

Static Function FormatMes(nMes)
    
    Local aMeses  := {"Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    Local aMesesM := {  {1, "Janeiro"},;
                        {11,"Novembro"},;
                        {9, "Setembro"},;
                        {4, "Abril"},;
                        {10,"Outubro"},;
                        {8, "Agosto"},;
                        {7, "Julho"},;
                        {3, "Mar�o"},;
                        {5, "Maio"},;
                        {6, "Junho"},;
                        {12, "Dezembro"}}

    // Retornar o nome do m�s usando a fun��o ASCAN para procurar o m�s no array multidimensional aMesesM
    // Feveiro n�o estar� na lista - Motivo: � m�s de carnaval.

Return aMeses[nMes]

Static Function FormatDt(cData)

    Local nDia := 0
    Local nMes := 0
    Local nAno := 0
    Local cMesExtenso := ""

    If ValidaData(cData)
        nDia := Val(SubStr(cData, 1, 2))
        nMes := Val(SubStr(cData, 4, 2))
        nAno := Val(SubStr(cData, 7, 4))

        cMesExtenso := FormatMes(nMes)

        FwAlertInfo(AllTrim(Str(nDia)) + " de " + cMesExtenso + " de " + AllTrim(Str(nAno)))
    Else
        FwAlertInfo('null') 

    EndIf

Return(cData)
