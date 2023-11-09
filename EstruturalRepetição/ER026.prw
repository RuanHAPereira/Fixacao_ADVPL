#include 'Totvs.ch'

/*/{Protheus.doc} ER026
Numa elei��o existem tr�s candidatos. Fa�a um programa que pe�a o n�mero total de eleitores. 
Pe�a para cada eleitor votar e ao final mostrar o n�mero de votos de cada candidato.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER026()

    local nEleitores  := 0
    local nChapa1 := 0 
    local nChapa2 := 0
    local nChapa3 := 0
    local nCont   := 0
    local nVoto   := 0

    nEleitores := Val(FwInputBox("Digite o n�mero total de eleitores: "))

    for nCont := 1 to nEleitores
        nVoto := Val(FwInputBox("Eleitor " + alltrim(str(nCont)) + ", vote em um candidato (1, 2 ou 3): "))

        do case
            case nVoto == 1
             nChapa1 := nChapa1 + 1
            case nVoto == 2
                nChapa2 := nChapa2 + 1
            case nVoto == 3
                nChapa3 := nChapa3 + 1
            OTHERWISE
                FwAlertInfo("Op��o inv�lida. Vote novamente.")
                nCont := nCont - 1 // Para permitir que o eleitor vote novamente
        endcase
    next

    FwAlertInfo("Resultado da elei��o:")
    FwAlertInfo("Candidato 1: " + alltrim(str(nChapa1)) + " votos.")
    FwAlertInfo("Candidato 2: " + alltrim(str(nChapa2)) + " votos.")
    FwAlertInfo("Candidato 3: " + alltrim(str(nChapa3)) + " votos.")

return
