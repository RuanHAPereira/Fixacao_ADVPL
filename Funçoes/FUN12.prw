#INCLUDE "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN12
Embaralha palavra. Construa uma função que receba uma string como parâmetro e devolva outra string com os caracteres
embaralhados.
@type function
@author Ruan Henrique
@since 12/21/2023
/*/

User Function FUN12()

    local aArea      := GetArea()
    local cEmbaralha := ""
    local cPalavra   := ""
    
    // Solicita ao usuário que digite uma palavra
    cPalavra := FwInputBox("Digite uma palavra para embaralhar:")

    // Verifica se a palavra não está vazia
    If !Empty(cPalavra)
        cEmbaralha := Embaralhar(cPalavra)

        FwAlertInfo("Palavra original: " + cPalavra)
        FwAlertInfo("Palavra embaralhada: " + cEmbaralha)
    Else
        FwAlertInfo("Palavra inválida.")
    EndIf

    RestArea(aArea)
Return

Static Function Embaralhar(cPalavra)
    local nTamanho := Len(cPalavra)
    local cEmbaralha := ""
    local aIndices := {}
    local nIndex := 0
    local nAleatorio := 0
    local nTemp := 0

    // Converte a palavra para caixa baixa
    cPalavra := Lower(cPalavra)

    // Gera uma sequência de índices
    for nIndex := 1 to nTamanho
        aAdd(aIndices, nIndex)
    next


    // Embaralha os índices (algoritmo de Fisher-Yates)
    for nIndex := nTamanho to 2 step -1
        nAleatorio := Random(1, nIndex)
        nTemp := aIndices[nIndex]
        aIndices[nIndex] := aIndices[nAleatorio]
        aIndices[nAleatorio] := nTemp
    next

    // Monta a palavra embaralhada
    for nIndex := 1 to nTamanho
        cEmbaralha += SubStr(cPalavra, aIndices[nIndex], 1)
    next

return(cEmbaralha)
