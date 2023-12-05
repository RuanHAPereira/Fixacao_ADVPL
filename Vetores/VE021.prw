#INCLUDE "totvs.ch"

//! FAZER EM OUTRO MOMENTO
/*/{Protheus.doc} ComparativoConsumo
Faça um programa que carregue uma lista com os modelos de cinco carros (exemplo de modelos: 
FUSCA, GOL, VECTRA etc). Carregue uma outra lista com o consumo desses carros, isto é, quantos 
quilômetros cada um desses carros faz com um litro de combustível. Calcule e mostre:
O modelo do carro mais econômico;
Quantos litros de combustível cada um dos carros cadastrados consome para percorrer uma distância 
de 1000 quilômetros e quanto isto custará, considerando um que a gasolina custe R$ 2,25 o litro. 
Abaixo segue uma tela de exemplo. O disposição das informações deve ser o mais próxima possível ao exemplo. Os dados são fictícios e podem mudar a cada execução do programa.
Comparativo de Consumo de Combustível

Veículo 1
Nome: fusca
Km por litro: 7
Veículo 2
Nome: gol
Km por litro: 10
Veículo 3
Nome: uno
Km por litro: 12.5
Veículo 4
Nome: Vectra
Km por litro: 9
Veículo 5
Nome: Peugeout
Km por litro: 14.5

Relatório Final
 1 - fusca           -    7.0 -  142.9 litros - R$ 321.43
 2 - gol             -   10.0 -  100.0 litros - R$ 225.00
 3 - uno             -   12.5 -   80.0 litros - R$ 180.00
 4 - vectra          -    9.0 -  111.1 litros - R$ 250.00
 5 - peugeout        -   14.5 -   69.0 litros - R$ 155.17
O menor consumo é do peugeout.
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

    // Solicita ao usuário que digite o veículo
    local cVeiculo := FwInputBox("Digite o modelo do veículo que você utiliza:")

    // Encontra o índice do veículo digitado
    for nCont := 1 to Len(aModelos)
        if Upper(aModelos[nCont]) == Upper(cVeiculo)
            nIndVeiculo := nCont
            break
        endif
    next

    // Se o veículo não estiver na lista, informa ao usuário e encerra o programa
    if nIndVeiculo == 0
        FwAlertInfo("Veículo não encontrado na lista.")
        return
    endif

    // Preenche o relatório apenas com o veículo escolhido
    AAdd(aRelatorio, {"Veículo " + AllTrim(Str(nIndVeiculo)), aModelos[nIndVeiculo], aConsumo[nIndVeiculo], 0, 0})

    // Calcula o consumo para 1000 km e o custo
    nLitros := nDistancia / aConsumo[nIndVeiculo]
    nCusto := nLitros * nCustoGasolina
    aRelatorio[1][4] := nLitros
    aRelatorio[1][5] := nCusto

    // Apresenta o relatório final
    FwAlertInfo("Comparativo de Consumo de Combustível para " + cVeiculo + CRLF)

    for nCont := 1 to Len(aRelatorio)
        FwAlertInfo(AllTrim(Str(nCont)) + " - " + aRelatorio[nCont][2] + " - " +;
                    AllTrim(Str(aRelatorio[nCont][3], 10, 2)) + " litros - R$ " +;
                    AllTrim(Str(aRelatorio[nCont][4], 10, 2)))
    next

    FwAlertInfo("O menor consumo é do " + aModelos[nIndMenor] + ".")

return


