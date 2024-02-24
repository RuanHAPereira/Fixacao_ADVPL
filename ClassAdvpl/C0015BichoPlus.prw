#include "totvs.ch"

/*/{Protheus.doc} C0015BichoPlus
Classe Bichinho Virtual++: Melhore o programa do bichinho virtual, permitindo que o usu�rio especifique 
quanto de comida ele fornece ao bichinho e por quanto tempo ele brinca com o bichinho. Fa�a com que estes 
valores afetem qu�o rapidamente os n�veis de fome e t�dio caem
@type function
@author Ruan Henrique
@since 2/23/2024
/*/

User Function C0015BichoPlus()

    Local oBichinhoPP
    Local nQuantidadeComida := Val(FwInputBox("Digite a quantidade de comida fornecida:"))
    Local nTempoBrincadeira := Val(FwInputBox("Digite o tempo de brincadeira (em horas):"))

    oBichinhoPP := BichinhoPP():New("Bichinho", 50, 80, 3)

    FwAlertInfo("Nome: " + oBichinhoPP:Nome() + CRLF + ;
                "Fome: " + Str(oBichinhoPP:Fome()) + CRLF + ;
                "Sa�de: " + Str(oBichinhoPP:Saude()) + CRLF + ;
                "Idade: " + Str(oBichinhoPP:Idade()) + CRLF + ;
                "Humor: " + Str(oBichinhoPP:Humor()), "Bichinho Virtual")

    oBichinhoPP:ForneceComida(nQuantidadeComida)
    oBichinhoPP:Brinca(nTempoBrincadeira)

    FwAlertInfo("Nome: " + oBichinhoPP:Nome() + CRLF + ;
                "Fome: " + Str(oBichinhoPP:Fome()) + CRLF + ;
                "Sa�de: " + Str(oBichinhoPP:Saude()) + CRLF + ;
                "Idade: " + Str(oBichinhoPP:Idade()) + CRLF + ;
                "Humor: " + Str(oBichinhoPP:Humor()), "Bichinho Virtual")

Return
