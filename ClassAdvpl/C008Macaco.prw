#include "totvs.ch"

User Function C008Macaco()

    Local oMacaco1
    Local oMacaco2
    Local cAlimento1 := ''
    Local cAlimento2 := ''

    oMacaco1 := Macaco():New("Macaco1")
    oMacaco2 := Macaco():New("Macaco2")

    cAlimento1 := FwInputBox("Digite o alimento para o macaco 1:")
    oMacaco1:Comer(cAlimento1)

    cAlimento2 := FwInputBox("Digite o alimento para o macaco 2:")
    oMacaco2:Comer(cAlimento2)

    oMacaco1:Digerir()

    oMacaco2:Digerir()

Return
