#include "totvs.ch"

/*/{Protheus.doc} C009PeR
Classe Ponto e Retangulo: Fa�a um programa completo utilizando fun��es e classes que:

Possua uma classe chamada Ponto, com os atributos x e y.
Possua uma classe chamada Retangulo, com os atributos largura e altura.
Possua uma fun��o para imprimir os valores da classe Ponto
Possua uma fun��o para encontrar o centro de um Ret�ngulo.
Voc� deve criar alguns objetos da classe Retangulo.
Cada objeto deve ter um v�rtice de partida, por exemplo, o v�rtice inferior esquerdo do ret�ngulo, que deve ser um objeto da classe Ponto.
A fun��o para encontrar o centro do ret�ngulo deve retornar o valor para um objeto do tipo ponto que indique os valores de x e y para o centro do objeto.
O valor do centro do objeto deve ser mostrado na tela
Crie um menu para alterar os valores do ret�ngulo e imprimir o centro deste ret�ngulo.
@type function
@author Ruan Henrique
@since 2/19/2024
/*/
User Function C009PeR()

    Local oCentro
    Local oVertice
    Local oRetangulo
    Local nX := Val(FwInputBox("Digite o valor X do v�rtice inferior esquerdo do ret�ngulo:"))
    Local nY := Val(FwInputBox("Digite o valor Y do v�rtice inferior esquerdo do ret�ngulo:"))
    Local nLargura := Val(FwInputBox("Digite a largura do ret�ngulo:"))
    Local nAltura  := Val(FwInputBox("Digite a altura do ret�ngulo:"))

    oVertice := Ponto():New(nX, nY)

    //? Criar o objeto Retangulo com os valores fornecidos pelo usu�rio
    oRetangulo := PontRetan():New(nLargura, nAltura, oVertice)

    FwAlertInfo("Valores do Ret�ngulo:" + CRLF +;
                "V�rtice Inferior Esquerdo: (" + Str(nX) + ", " + Str(nY) + ")" + CRLF +;
                "Largura: " + Str(nLargura) + CRLF +;
                "Altura: " + Str(nAltura), "Ret�ngulo")

    oCentro := oRetangulo:Centro()
    oCentro:Imprimir()

Return
