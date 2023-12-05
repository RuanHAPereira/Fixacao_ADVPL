#INCLUDE "totvs.ch"

//! FAZER EM OUTRO MOMENTO
/*/{Protheus.doc} LevantamentoSuporte
Sua organiza��o acaba de contratar um estagi�rio para trabalhar no Suporte de Inform�tica, com a inten��o de fazer um 
levantamento nas sucatas encontradas nesta �rea. A primeira tarefa dele � testar todos os cerca de 200 mouses que se encontram l�, 
testando e anotando o estado de cada um deles, para verificar o que se pode aproveitar deles.
Foi requisitado que voc� desenvolva um programa para registrar este levantamento. O programa dever� receber um n�mero indeterminado 
de entradas, cada uma contendo: um n�mero de identifica��o do mouse o tipo de defeito:
necessita da esfera;
necessita de limpeza; a.necessita troca do cabo ou conector; a.quebrado ou inutilizado Uma identifica��o igual a zero encerra o programa.
Ao final o programa dever� emitir o seguinte relat�rio:
Quantidade de mouses: 100

Situa��o                        Quantidade              Percentual
1- necessita da esfera                  40                     40%
2- necessita de limpeza                 30                     30%
3- necessita troca do cabo ou conector  15                     15%
4- quebrado ou inutilizado              15                     15%

@type function
@author Ruan Henrique
@since 11/30/2023
/*/
/*
user function LevantamentoSuporte()

    local nIdentificacao := 0
    local aDefeitos      := {}
    local nTotalMouses   := 0
    local nPercentual    := 0
    local nCont          := 0
    local cSituacao      := ""

    // Inicializa o array de defeitos com zeros
    for nCont := 1 to 4
        AAdd(aDefeitos, 0)
    next

    do while .T.
        nIdentificacao := Val(FwInputBox("Digite o n�mero de identifica��o do mouse (0 para encerrar): "))

        if nIdentificacao == 0
            exit
        endif

        cSituacao := FwInputBox("Digite o tipo de defeito (1 - necessita da esfera, 2 - necessita de limpeza, 3 - necessita troca do cabo ou conector, 4 - quebrado ou inutilizado): ")

        do case cSituacao <> 0
            case == 1
                aDefeitos[1]++
            case == 2
                aDefeitos[2]++
            case == 3
                aDefeitos[3]++
            case == 4
                aDefeitos[4]++
            otherwise
                FwAlertInfo("Op��o inv�lida. Por favor, digite um n�mero de 1 a 4.")
            next
        endcase

        nTotalMouses++
    enddo

    // Exibe o relat�rio final
    FwAlertInfo("Quantidade de mouses: " + AllTrim(Str(nTotalMouses)) + CRLF)
    FwAlertInfo("Situa��o                        Quantidade              Percentual")

    for nCont := 1 to Len(aDefeitos)
        cSituacao := ""
        do case nCont
            case 1
                cSituacao := "necessita da esfera         "
            case 2
                cSituacao := "necessita de limpeza        "
            case 3
                cSituacao := "necessita troca do cabo ou conector"
            case 4
                cSituacao := "quebrado ou inutilizado     "
        endcase

        nPercentual := (aDefeitos[nCont] / nTotalMouses) * 100
        FwAlertInfo(AllTrim(Str(nCont)) + "- " + cSituacao + AllTrim(Str(aDefeitos[nCont])) + AllTrim(Str(nPercentual, 10, 2)) + "%")
    next

return*/


