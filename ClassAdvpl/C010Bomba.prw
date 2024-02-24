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
            FwAlertInfo("Op��o inv�lida. Por favor, escolha uma op��o v�lida.", "Erro")
        EndIf
    EndDo

    Do While .T.

        MsgInfo("Digite 1 - Gasolina" + CRLF + "Digite 2 - �lcool", "Escolha o combust�vel.")
        nOpcCombu := Val(FwInputBox("Escolha o tipo de combust�vel:"))

        If nOpcCombu == 1
            cCombustivel := "Gasolina"
            Exit
        ElseIf nOpcCombu == 2
            cCombustivel := "�lcool"
            Exit
        Else
            FwAlertInfo("Op��o inv�lida. Por favor, escolha uma op��o v�lida.", "Erro")
        EndIf
    EndDo

    If nOpcAbast == 1

        nValor := Val(FwInputBox("Digite o valor a ser abastecido:"))
        If nValor <= 0
            FwAlertInfo("Valor inv�lido. Por favor, digite um valor v�lido.", "Erro")
            
        EndIf
        oBomba:PorValor(nValor)
    ElseIf nOpcAbast == 2

        nLitros := Val(FwInputBox("Digite a quantidade em litros de combust�vel:"))
        If nLitros <= 0
            FwAlertInfo("Quantidade inv�lida. Por favor, digite uma quantidade v�lida.", "Erro")
            
        EndIf
        oBomba:PorLitro(nLitros)
    EndIf

    If Upper(cCombustivel) == "�LCOOL"
        oBomba:AlteraCombu("�lcool")
        oBomba:AlterarValor(4.90) 
    ElseIf Upper(cCombustivel) == "GASOLINA"
        oBomba:AlteraCombu("Gasolina")
        oBomba:AlterarValor(5.89) 
    EndIf

    FwAlertInfo("Quantidade de combust�vel restante na bomba: " + Alltrim(Str(oBomba:QtdCombust(), 7 ,2)) + " litros.", "Estado Atual")
Return
