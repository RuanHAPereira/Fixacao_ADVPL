#include 'Totvs.ch'

/*/{Protheus.doc} ER040
Foi feita uma estat�stica em cinco cidades brasileiras para coletar dados sobre acidentes de tr�nsito. 
Foram obtidos os seguintes dados:
C�digo da cidade;
N�mero de ve�culos de passeio (em 1999);
N�mero de acidentes de tr�nsito com v�timas (em 1999). Deseja-se saber:
- Qual o maior e menor �ndice de acidentes de tr�nsito e a que cidade pertence;
- Qual a m�dia de ve�culos nas cinco cidades juntas;
- Qual a m�dia de acidentes de tr�nsito nas cidades com menos de 2.000 ve�culos de passeio.
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
        nCodigo := Val(FwInputBox("Digite o c�digo da cidade " + AllTrim(Str(nCont)) + ": "))
        nVeiculos := Val(FwInputBox("Digite o n�mero de ve�culos de passeio (em 1999) na cidade " + AllTrim(Str(nCont)) + ": "))
        nAcidentes := Val(FwInputBox("Digite o n�mero de acidentes de tr�nsito com v�timas (em 1999) na cidade " + AllTrim(Str(nCont)) + ": "))

        // Calcula o �ndice de acidentes
        nIndice := nAcidentes / nVeiculos

        // Atualiza o menor �ndice
        if nCont == 1 .or. nIndice < nMenorIndice
            nMenorIndice := nIndice
            nCidadeMenor := nCodigo
        endif

        // Atualiza o maior �ndice
        if nCont == 1 .or. nIndice > nMaiorIndice
            nMaiorIndice := nIndice
            nCidadeMaior := nCodigo
        endif

        // Atualiza os totais para a m�dia
        nTotalVeiculos := nTotalVeiculos + nVeiculos
        nTotalAcidentes := nTotalAcidentes + nAcidentes

        // Conta cidades com menos de 2.000 ve�culos
        if nVeiculos < 2000
            nMediaAcidentes := nMediaAcidentes + nAcidentes
            nCity2000 := nCity2000 + 1
        endif
    next

    nMediaVeiculos := nTotalVeiculos / 5

    // Verifica se h� cidades com menos de 2.000 ve�culos para evitar divis�o por zero
    if nCity2000 > 0
        nMedia2000 := nMediaAcidentes / nCity2000
    endif

    FwAlertInfo("Menor �ndice de acidentes: Cidade " + AllTrim(Str(nCidadeMenor)) + ", �ndice: " + AllTrim(Str(nMenorIndice)))
    FwAlertInfo("Maior �ndice de acidentes: Cidade " + AllTrim(Str(nCidadeMaior)) + ", �ndice: " + AllTrim(Str(nMaiorIndice)))
    FwAlertInfo("M�dia de ve�culos nas cinco cidades juntas: " + AllTrim(Str(nMediaVeiculos)))
    FwAlertInfo("M�dia de acidentes nas cidades com menos de 2.000 ve�culos de passeio: " + AllTrim(Str(nMedia2000)))

return
