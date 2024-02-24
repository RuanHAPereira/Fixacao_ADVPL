#include "totvs.ch"

/*/{Protheus.doc} C009PeR
Classe Ponto e Retangulo: Faça um programa completo utilizando funções e classes que:

Possua uma classe chamada Ponto, com os atributos x e y.
Possua uma classe chamada Retangulo, com os atributos largura e altura.
Possua uma função para imprimir os valores da classe Ponto
Possua uma função para encontrar o centro de um Retângulo.
Você deve criar alguns objetos da classe Retangulo.
Cada objeto deve ter um vértice de partida, por exemplo, o vértice inferior esquerdo do retângulo, que deve ser um objeto da classe Ponto.
A função para encontrar o centro do retângulo deve retornar o valor para um objeto do tipo ponto que indique os valores de x e y para o centro do objeto.
O valor do centro do objeto deve ser mostrado na tela
Crie um menu para alterar os valores do retângulo e imprimir o centro deste retângulo.
@type function
@author Ruan Henrique
@since 2/19/2024
/*/
User Function C009PeR()

    Local oCentro
    Local oVertice
    Local oRetangulo
    Local nX := Val(FwInputBox("Digite o valor X do vértice inferior esquerdo do retângulo:"))
    Local nY := Val(FwInputBox("Digite o valor Y do vértice inferior esquerdo do retângulo:"))
    Local nLargura := Val(FwInputBox("Digite a largura do retângulo:"))
    Local nAltura  := Val(FwInputBox("Digite a altura do retângulo:"))

    oVertice := Ponto():New(nX, nY)

    //? Criar o objeto Retangulo com os valores fornecidos pelo usuário
    oRetangulo := PontRetan():New(nLargura, nAltura, oVertice)

    FwAlertInfo("Valores do Retângulo:" + CRLF +;
                "Vértice Inferior Esquerdo: (" + Str(nX) + ", " + Str(nY) + ")" + CRLF +;
                "Largura: " + Str(nLargura) + CRLF +;
                "Altura: " + Str(nAltura), "Retângulo")

    oCentro := oRetangulo:Centro()
    oCentro:Imprimir()

Return
