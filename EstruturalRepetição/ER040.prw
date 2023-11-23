#include 'Totvs.ch'

/*/{Protheus.doc} ER040
Foi feita uma estatística em cinco cidades brasileiras para coletar dados sobre acidentes de trânsito. 
Foram obtidos os seguintes dados:
Código da cidade;
Número de veículos de passeio (em 1999);
Número de acidentes de trânsito com vítimas (em 1999). Deseja-se saber:
- Qual o maior e menor índice de acidentes de trânsito e a que cidade pertence;
- Qual a média de veículos nas cinco cidades juntas;
- Qual a média de acidentes de trânsito nas cidades com menos de 2.000 veículos de passeio.
@type function
@author Ruan Henrique
@since 11/16/2023
/*/
user function ER040()

    local nCodigo         := 0
    local nVeiculos       := 0
    local nAcidentes      := 0
    local nIndice         := 0
    local nTotalVeiculos  := 0
    local nTotalAcidentes := 0
    local nMediaVeiculos  := 0
    local nMediaAcidentes := 0
    local nMedia2000      := 0
    local nMenorIndice    := 0
    local nMaiorIndice    := 0
    local nCidadeMenor    := 0
    local nCidadeMaior    := 0
    local nCity2000       := 0
    local nCont           := 0
    
    for nCont := 1 to 5
        nCodigo := Val(FwInputBox("Digite o código da cidade " + AllTrim(Str(nCont)) + ": "))
        nVeiculos := Val(FwInputBox("Digite o número de veículos de passeio (em 1999) na cidade " + AllTrim(Str(nCont)) + ": "))
        nAcidentes := Val(FwInputBox("Digite o número de acidentes de trânsito com vítimas (em 1999) na cidade " + AllTrim(Str(nCont)) + ": "))

        // Calcula o índice de acidentes
        nIndice := nAcidentes / nVeiculos

        // Atualiza o menor índice
        if nCont == 1 .or. nIndice < nMenorIndice
            nMenorIndice := nIndice
            nCidadeMenor := nCodigo
        endif

        // Atualiza o maior índice
        if nCont == 1 .or. nIndice > nMaiorIndice
            nMaiorIndice := nIndice
            nCidadeMaior := nCodigo
        endif

        // Atualiza os totais para a média
        nTotalVeiculos := nTotalVeiculos + nVeiculos
        nTotalAcidentes := nTotalAcidentes + nAcidentes

        // Conta cidades com menos de 2.000 veículos
        if nVeiculos < 2000
            nMediaAcidentes := nMediaAcidentes + nAcidentes
            nCity2000 := nCity2000 + 1
        endif
    next

    nMediaVeiculos := nTotalVeiculos / 5

    // Verifica se há cidades com menos de 2.000 veículos para evitar divisão por zero
    if nCity2000 > 0
        nMedia2000 := nMediaAcidentes / nCity2000
    endif

    FwAlertInfo("Menor índice de acidentes: Cidade " + AllTrim(Str(nCidadeMenor)) + ", Índice: " + AllTrim(Str(nMenorIndice)))
    FwAlertInfo("Maior índice de acidentes: Cidade " + AllTrim(Str(nCidadeMaior)) + ", Índice: " + AllTrim(Str(nMaiorIndice)))
    FwAlertInfo("Média de veículos nas cinco cidades juntas: " + AllTrim(Str(nMediaVeiculos)))
    FwAlertInfo("Média de acidentes nas cidades com menos de 2.000 veículos de passeio: " + AllTrim(Str(nMedia2000)))

return
