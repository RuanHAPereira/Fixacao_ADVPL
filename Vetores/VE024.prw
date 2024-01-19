#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} VE024
Fa�a um programa que simule um lan�amento de dados. 
Lance o dado 100 vezes e armazene os resultados em um vetor . 
Depois, mostre quantas vezes cada valor foi conseguido. Dica: use um vetor de contadores(1-6) e 
uma fun��o para gerar numeros aleat�rios, simulando os lan�amentos dos dados.
@type function
@author Ruan Henrique
@since 12/18/2023
/*/

User Function VE024()

    Local aContadores := {}
    Local nCont       := 0
    Local cMsg        := ""
    local nLances     := 100

    for nCont := 1 to nLances
        AADD(aContadores, RANDOMIZE( 1, 6 ))
    next 

        for nCont := 1 to nLances 
            if nCont < nLances 
                cMsg += CVALTOCHAR( aContadores[nCont]) + ", "
            else
                cMsg += CVALTOCHAR( aContadores[nCont]) + ". "
            endif
        next
    

    FwAlertInfo(cMsg, "Contem no Array!")
Return




