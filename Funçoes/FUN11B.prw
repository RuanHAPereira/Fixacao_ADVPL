#INCLUDE "Totvs.ch"

//?Testado e ok.
//? Versao com utilizaÁ„o de ASCAN e Array multidimensional.
/*/{Protheus.doc} FUN11
Data com mùs por extenso. Construa uma funùùo que receba uma data no formato DD/MM/AAAA
e devolva uma string no formato D de mesPorExtenso de AAAA. Opcionalmente, valide a data
e retorne NULL caso a data seja invùlida.
@type function
@author Ruan Henrique 
@since 12/21/2023
/*/

User Function FUN11B()

    Local aArea      := GetArea()
    Local cData      := ''
    Local cDataExten := ''

    cData := FwInputBox("Digite a data no formato DD/MM/AAAA: ")
    cDataExten := FormatDt(cData)

    If cDataExten <> ""
        FwAlertInfo("Data formatada: " + cDataExten)
    Else
        FwAlertInfo("Data inv·lida. Digite no formato DD/MM/AAAA.")
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

    Local aMeses := {{"01", "Janeiro"},;
                    {"02", "Fevereiro"},;
                    {"03", "MarÁo"},;
                    {"04", "Abril"},;
                    {"05", "Maio"},;
                    {"06", "Junho"},;
                    {"07", "Julho"},;
                    {"08", "Agosto"},;
                    {"09", "Setembro"},;
                    {"10", "Outubro"},;
                    {"11", "Novembro"},;
                    {"12", "Dezembro"}}

    Local cMesExtenso := ""
    Local nIndex := 0

    nIndex := ASCAN(aMeses, {|x| x[1] == AllTrim(Str(nMes))})

    If nIndex > 0
        cMesExtenso := aMeses[nIndex][2]
    EndIf

Return cMesExtenso

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
