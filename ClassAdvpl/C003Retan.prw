#include "totvs.ch"

User Function C003Retan()

    Local oRetangulo
    Local nComprimento := 0
    Local nLargura := 0
    Local nArea := 0
    Local nPerimetro := 0
    Local nAreaPiso := 1.5 // Área de cada piso em metros quadrados
    Local nAreaRodape := 0.2 // Área de cada rodapé em metros quadrados
    Local nQtdRodapes := 0
    Local nQtdPisos := 0

    nComprimento := Val(FwInputBox("Informe o comprimento do local em metros:"))
    nLargura := Val(FwInputBox("Informe a largura do local em metros:"))

    oRetangulo := Retangulo():New(nComprimento, nLargura)

    nArea := oRetangulo:CalcularArea()
    nPerimetro := oRetangulo:CalcularPerimetro()

    //? Calcula a quantidade de pisos necessários
    nQtdPisos := nArea / nAreaPiso

    //? Calcula a quantidade de rodapés necessários
    nQtdRodapes := nPerimetro / nAreaRodape

    FwAlertInfo("Quantidade de pisos necessários: " + Str(nQtdPisos) + CRLF;
    + "Quantidade de rodapés necessários: " + Str(nQtdRodapes), "Pisos e Rodapés")

Return
