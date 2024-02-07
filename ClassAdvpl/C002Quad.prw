#include "totvs.ch"

User Function C002Quad()

    Local oQuadrado
    Local nNovoLado
    Local nLadoInicial := 10

    oQuadrado := Quadrado():New(nLadoInicial)

    FwAlertInfo("O lado inicial do quadrado é: " + ALLtrim(Str(oQuadrado:RetornarLado())), "Quadrado")

    DO WHILE .T.
        nNovoLado := Val(FwInputBox("Digite o novo tamanho do lado do quadrado:"))

        IF nNovoLado > 0
            EXIT
        ELSE
            FwAlertInfo("Valor inválido. Insira um valor positivo para o lado do quadrado.", "Erro")
        ENDIF
    ENDDO

    oQuadrado:MudarLado(nNovoLado)

    FwAlertInfo("O lado do quadrado foi alterado para: " + Alltrim(Str(oQuadrado:RetornarLado())), "Quadrado")

    oQuadrado:CalcularArea()

Return
