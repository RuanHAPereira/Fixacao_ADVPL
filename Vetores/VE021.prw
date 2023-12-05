#INCLUDE "totvs.ch"

//! FAZER EM OUTRO MOMENTO
/*/{Protheus.doc} ComparativoConsumo
Fa�a um programa que carregue uma lista com os modelos de cinco carros (exemplo de modelos: 
FUSCA, GOL, VECTRA etc). Carregue uma outra lista com o consumo desses carros, isto �, quantos 
quil�metros cada um desses carros faz com um litro de combust�vel. Calcule e mostre:
O modelo do carro mais econ�mico;
Quantos litros de combust�vel cada um dos carros cadastrados consome para percorrer uma dist�ncia 
de 1000 quil�metros e quanto isto custar�, considerando um que a gasolina custe R$ 2,25 o litro. 
Abaixo segue uma tela de exemplo. O disposi��o das informa��es deve ser o mais pr�xima poss�vel ao exemplo. Os dados s�o fict�cios e podem mudar a cada execu��o do programa.
Comparativo de Consumo de Combust�vel

Ve�culo 1
Nome: fusca
Km por litro: 7
Ve�culo 2
Nome: gol
Km por litro: 10
Ve�culo 3
Nome: uno
Km por litro: 12.5
Ve�culo 4
Nome: Vectra
Km por litro: 9
Ve�culo 5
Nome: Peugeout
Km por litro: 14.5

Relat�rio Final
 1 - fusca           -    7.0 -  142.9 litros - R$ 321.43
 2 - gol             -   10.0 -  100.0 litros - R$ 225.00
 3 - uno             -   12.5 -   80.0 litros - R$ 180.00
 4 - vectra          -    9.0 -  111.1 litros - R$ 250.00
 5 - peugeout        -   14.5 -   69.0 litros - R$ 155.17
O menor consumo � do peugeout.
@type function
@author Ruan Henrique
@since 11/30/2023
/*/
user function VE021()

    local aModelos      := {"Fusca", "Gol", "Uno", "Vectra", "Peugeout"}
    local aConsumo      := {7, 10, 12.5, 9, 14.5}
    local aRelatorio    := {}
    local nCont         := 0
    local nIndVeiculo   := 0
    //local nMenorConsumo := aConsumo[1]
    local nIndMenor     := 1
    local nDistancia    := 1000
    local nLitros       := 0
    local nCusto        := 0
    local nCustoGasolina:= 2.25

    // Solicita ao usu�rio que digite o ve�culo
    local cVeiculo := FwInputBox("Digite o modelo do ve�culo que voc� utiliza:")

    // Encontra o �ndice do ve�culo digitado
    for nCont := 1 to Len(aModelos)
        if Upper(aModelos[nCont]) == Upper(cVeiculo)
            nIndVeiculo := nCont
            break
        endif
    next

    // Se o ve�culo n�o estiver na lista, informa ao usu�rio e encerra o programa
    if nIndVeiculo == 0
        FwAlertInfo("Ve�culo n�o encontrado na lista.")
        return
    endif

    // Preenche o relat�rio apenas com o ve�culo escolhido
    AAdd(aRelatorio, {"Ve�culo " + AllTrim(Str(nIndVeiculo)), aModelos[nIndVeiculo], aConsumo[nIndVeiculo], 0, 0})

    // Calcula o consumo para 1000 km e o custo
    nLitros := nDistancia / aConsumo[nIndVeiculo]
    nCusto := nLitros * nCustoGasolina
    aRelatorio[1][4] := nLitros
    aRelatorio[1][5] := nCusto

    // Apresenta o relat�rio final
    FwAlertInfo("Comparativo de Consumo de Combust�vel para " + cVeiculo + CRLF)

    for nCont := 1 to Len(aRelatorio)
        FwAlertInfo(AllTrim(Str(nCont)) + " - " + aRelatorio[nCont][2] + " - " +;
                    AllTrim(Str(aRelatorio[nCont][3], 10, 2)) + " litros - R$ " +;
                    AllTrim(Str(aRelatorio[nCont][4], 10, 2)))
    next

    FwAlertInfo("O menor consumo � do " + aModelos[nIndMenor] + ".")

return


