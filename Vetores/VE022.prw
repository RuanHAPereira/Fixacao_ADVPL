#INCLUDE "totvs.ch"

/*/{Protheus.doc} LevantamentoSuporte
Sua organização acaba de contratar um estagiário para trabalhar no Suporte de Informática, com a intenção de fazer um 
levantamento nas sucatas encontradas nesta área. A primeira tarefa dele é testar todos os cerca de 200 mouses que se encontram lá, 
testando e anotando o estado de cada um deles, para verificar o que se pode aproveitar deles.
Foi requisitado que você desenvolva um programa para registrar este levantamento. O programa deverá receber um número indeterminado 
de entradas, cada uma contendo: um número de identificação do mouse o tipo de defeito:
necessita da esfera;
necessita de limpeza; a.necessita troca do cabo ou conector; a.quebrado ou inutilizado Uma identificação igual a zero encerra o programa.
Ao final o programa deverá emitir o seguinte relatório:
Quantidade de mouses: 100

Situação                        Quantidade              Percentual
1- necessita da esfera                  40                     40%
2- necessita de limpeza                 30                     30%
3- necessita troca do cabo ou conector  15                     15%
4- quebrado ou inutilizado              15                     15%

@type function
@author Ruan Henrique
@since 11/30/2023
/*/

User Function VE022()

    Local aMouses      := {}
    Local nQtdMouse    := 0
    Local nQtdEsfera   := 0
    Local nQtdLimpeza  := 0
    Local nQtdTroca    := 0
    Local nQtdQuebrado := 0
    Local cSituacao    := ""
    Local nPercentual  := 0

    Do While .T.
        FwAlertInfo("Informe a seguir qual defeito a partir de seu código:" + CRLF +;
        "1 - necessita da esfera" + CRLF +;
        "2 - necessita de limpeza" + CRLF + "3 - necessita troca do cabo ou conector" + CRLF +;
        "4 - quebrado ou inutilizado" + CRLF + "0 - para encerrar")
        
        cSituacao := FwInputBox("Digite o tipo de defeito do mouse: ")

        If cSituacao == "0"
            Exit
        EndIf

        nQtdMouse := Val(FwInputBox("Digite a quantidade de mouses com esse defeito: "))

        AAdd(aMouses, {cSituacao, nQtdMouse})

        If cSituacao == "1"
            nQtdEsfera += nQtdMouse
        ElseIf cSituacao == "2"
            nQtdLimpeza += nQtdMouse
        ElseIf cSituacao == "3"
            nQtdTroca += nQtdMouse
        ElseIf cSituacao == "4"
            nQtdQuebrado += nQtdMouse
        else
            FwAlertError("Número inválido.")
        EndIf
    EndDo

    // Calcula o percentual
    nPercentual := 100 / (nQtdEsfera + nQtdLimpeza + nQtdTroca + nQtdQuebrado)

    FwAlertInfo("Quantidade de mouses com defeito:" + CRLF +;
                "1- Esfera   : " + AllTrim(Str(nQtdEsfera)) + " mouses, corresponde a " + AllTrim(Str(nQtdEsfera * nPercentual, 6, 1)) + "% dos defeitos." + CRLF +;
                "2- Limpeza  : " + AllTrim(Str(nQtdLimpeza)) + "  mouses, corresponde a  " + AllTrim(Str(nQtdLimpeza * nPercentual, 6, 1)) + "% dos defeitos." + CRLF +;
                "3- Troca    : " + AllTrim(Str(nQtdTroca)) + "  mouses, corresponde a  " + AllTrim(Str(nQtdTroca * nPercentual, 6, 1)) + "% dos defeitos." + CRLF +;
                "4- Quebrado : " + AllTrim(Str(nQtdQuebrado)) + "  mouses, corresponde a  " + AllTrim(Str(nQtdQuebrado * nPercentual, 6, 1)) + "% dos defeitos." + CRLF + CRLF +;
                "Total de mouses informados: " + AllTrim(Str(nQtdEsfera + nQtdLimpeza + nQtdTroca + nQtdQuebrado)), "Relatório de Mouses")

Return
