#include "totvs.ch"

User Function C010Bomba()

    Local oBomba 
    Local nOpcAbast    := 0
    Local nOpcCombu    := 0
    Local nValor       := 0
    Local nLitros      := 0
    Local cCombustivel := ""

    oBomba := Bomba():New("Gasolina", 5.89, 1000) //? aqui declaro tipo, valor e quantidade na bomba.

    Do While .T.

        MsgInfo("Digite 1 - Por valor" + CRLF + "Digite 2 - Por litro" , "Escolha como quer abastecer.")
        nOpcAbast := Val(FwInputBox("Escolha o tipo de abastecimento:"))

        If nOpcAbast == 1 .Or. nOpcAbast == 2
            Exit
        Else
            FwAlertInfo("Opção inválida. Por favor, escolha uma opção válida.", "Erro")
        EndIf
    EndDo

    Do While .T.

        MsgInfo("Digite 1 - Gasolina" + CRLF + "Digite 2 - Álcool", "Escolha o combustível.")
        nOpcCombu := Val(FwInputBox("Escolha o tipo de combustível:"))

        If nOpcCombu == 1
            cCombustivel := "Gasolina"
            Exit
        ElseIf nOpcCombu == 2
            cCombustivel := "Álcool"
            Exit
        Else
            FwAlertInfo("Opção inválida. Por favor, escolha uma opção válida.", "Erro")
        EndIf
    EndDo

    If nOpcAbast == 1

        nValor := Val(FwInputBox("Digite o valor a ser abastecido:"))
        If nValor <= 0
            FwAlertInfo("Valor inválido. Por favor, digite um valor válido.", "Erro")
            
        EndIf
        oBomba:PorValor(nValor)
    ElseIf nOpcAbast == 2

        nLitros := Val(FwInputBox("Digite a quantidade em litros de combustível:"))
        If nLitros <= 0
            FwAlertInfo("Quantidade inválida. Por favor, digite uma quantidade válida.", "Erro")
            
        EndIf
        oBomba:PorLitro(nLitros)
    EndIf

    If Upper(cCombustivel) == "ÁLCOOL"
        oBomba:AlteraCombu("Álcool")
        oBomba:AlterarValor(4.90) 
    ElseIf Upper(cCombustivel) == "GASOLINA"
        oBomba:AlteraCombu("Gasolina")
        oBomba:AlterarValor(5.89) 
    EndIf

    FwAlertInfo("Quantidade de combustível restante na bomba: " + Alltrim(Str(oBomba:QtdCombust(), 7 ,2)) + " litros.", "Estado Atual")
Return
