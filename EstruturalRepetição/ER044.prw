#include 'Totvs.ch'

/*/{Protheus.doc} ER044
Em uma eleição presidencial existem quatro candidatos. Os votos são informados por meio de código.
Os códigos utilizados são:
1 , 2, 3, 4 - Votos para os respectivos candidatos (você deve montar a tabela ex: 1 - Jose/ 2- João/etc) 
5 - Voto Nulo 
6 - Voto em Branco 
Faça um programa que calcule e mostre: 
O total de votos para cada candidato; 
O total de votos nulos; 
O total de votos em branco; 
A percentagem de votos nulos sobre o total de votos; 
A percentagem de votos em branco sobre o total de votos. 
Para finalizar o conjunto de votos tem-se o valor zero.
@type function
@author Ruan Henrique
@since 11/17/2023
/*/

user function ER044()

    local cNome1       := ''
    local cNome2       := ''
    local cNome3       := ''
    local cNome4       := ''
    local nVoto        := 0
    local nTotalVotos  := 0
    local nTotalC1     := 0
    local nTotalC2     := 0
    local nTotalC3     := 0
    local nTotalC4     := 0
    local nTotalNulos   := 0
    local nTotalBrancos := 0
    local nNulosPerc    := 0.0
    local nBrancoPerc   := 0.0

    do while .T.

        nVoto := Val(FwInputBox("Digite o código do candidato (ou 0 para encerrar): "))

        if nVoto == 0
            exit
        endif

        if nVoto >= 1 .and. nVoto <= 4
            if nVoto == 1
                cNome1 := "Carlos"
                nTotalC1 := nTotalC1 + 1
            elseif nVoto == 2
                cNome2 := "Ana"
                nTotalC2 := nTotalC2 + 1
            elseif nVoto == 3
                cNome3 := "João"
                nTotalC3 := nTotalC3 + 1
            elseif nVoto == 4
                nTotalC4 := nTotalC4 + 1
                cNome4 := "Maria"
            endif
        elseif nVoto == 5
            nTotalNulos := nTotalNulos + 1
        elseif nVoto == 6
            nTotalBrancos := nTotalBrancos + 1
        else
            FwAlertError("Código de voto inválido. Tente novamente.")
        endif

        // Atualiza o total geral de votos
        nTotalVotos := nTotalVotos + 1
    enddo

    // Calcula as percentagens
    if nTotalVotos > 0
        nNulosPerc := (nTotalNulos / nTotalVotos) * 100
        nBrancoPerc := (nTotalBrancos / nTotalVotos) * 100
    endif

    // Exibe os resultados
    FwAlertInfo("Total de votos para cada candidato:")
    FwAlertInfo("Candidato 1: " + cNome1 + AllTrim(Str(nTotalC1)) + " votos.")
    FwAlertInfo("Candidato 2: " + cNome2 + AllTrim(Str(nTotalC2)) + " votos.")
    FwAlertInfo("Candidato 3: " + cNome3 + AllTrim(Str(nTotalC3)) + " votos.")
    FwAlertInfo("Candidato 4: " + cNome4 + AllTrim(Str(nTotalC4)) + " votos.")
    FwAlertInfo("Total de votos nulos: " + AllTrim(Str(nTotalNulos)))
    FwAlertInfo("Total de votos em branco: " + AllTrim(Str(nTotalBrancos)))
    FwAlertInfo("Percentual de votos nulos sobre o total de votos: " + Transform(nNulosPerc, "999.99") + "%")
    FwAlertInfo("Percentual de votos em branco sobre o total de votos: " + Transform(nBrancoPerc, "999.99") + "%")

return
