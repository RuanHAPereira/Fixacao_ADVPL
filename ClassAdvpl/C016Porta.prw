#include "totvs.ch"

/*/{Protheus.doc} C016Porta
Crie uma "porta escondida" no programa do programa do bichinho virtual que mostre os valores exatos dos 
atributos do objeto. Consiga isto mostrando o objeto quando uma op��o secreta, n�o listada no menu, for 
informada na escolha do usu�rio. Dica: acrescente um m�todo especial str() � classe Bichinho.
@type function
@author Ruan Henrique
@since 2/23/2024
/*/

User Function C016Porta()

    Local oPorta
    Local nQuantidadeComida := 0
    Local nTempoBrincadeira := 0
    Local cOpcao := ''

    oPorta := PortaEscondida():New("Bichinho", 50, 80, 3)

    FwAlertInfo("Nome: " + oPorta:Nome() + CRLF + ;
                "Fome: " + Str(oPorta:Fome()) + CRLF + ;
                "Sa�de: " + Str(oPorta:Saude()) + CRLF + ;
                "Idade: " + Str(oPorta:Idade()) + CRLF + ;
                "Humor: " + Str(oPorta:Humor()), "Bichinho Virtual")

    nQuantidadeComida := Val(FwInputBox("Digite a quantidade de comida fornecida:"))
    nTempoBrincadeira := Val(FwInputBox("Digite o tempo de brincadeira (em horas):"))
    
    oPorta:ForneceComida(nQuantidadeComida)
    oPorta:Brinca(nTempoBrincadeira)

    cOpcao := FwInputBox("Digite a palavra secreta:")
    If Upper(cOpcao) == "SEGREDO"
        FwAlertInfo("Valores exatos do Bichinho:" + CRLF + oPorta:str(), "Porta Escondida")
    else
        FwAlertInfo("Voc� n�o conseguir� ver o status do bichinho :/", "Errou a palavra secreta...")
    endif
Return
