#INCLUDE "totvs.ch"

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

User Function VE021()

    Local aCarros := {}
    Local nCont := 0
    Local cNomeCarro := ""
    Local nConsumoCarro := 0
    Local nLitros := 0
    Local nIndMenor := 0

    Local cVeicEcon := ""
    Local nCusto := 0
    Local cRelatorio := ""

    // Loop para obter dados dos carros
    For nCont := 1 To 5
        cNomeCarro := FwInputBox("Digite o nome do carro " + AllTrim(Str(nCont)) + ": ")
        nConsumoCarro := Val(FwInputBox("Digite o consumo do carro " + AllTrim(Str(nCont)) + " (Km por litro): "))
        
        // Adiciona os dados aos arrays
        AAdd(aCarros, {cNomeCarro, nConsumoCarro})
    Next

    // Inicializa o menor consumo com o consumo do primeiro carro
    nIndMenor := 1

    // Loop para encontrar o veículo mais econômico
    For nCont := 2 To Len(aCarros)
        If aCarros[nCont][2] > aCarros[nIndMenor][2]
            nIndMenor := nCont
        EndIf
    Next


    // Monta a string do relatório
    For nCont := 1 To Len(aCarros)
        nLitros := (1000 / aCarros[nCont][2])
        nCusto := nLitros * 2.25
        cRelatorio += AllTrim(Str(nCont)) + " - " + AllTrim(aCarros[nCont][1]) + " - " + AllTrim(Str(aCarros[nCont][2], 5, 1)) + " - " +;
                    AllTrim(Str(nLitros, 5, 1)) + " litros - R$ " + AllTrim(Str(nCusto, 8, 2)) + CRLF
    Next

    // Obtém o nome do carro mais econômico
    cVeicEcon := aCarros[nIndMenor][1]

    // Adiciona o resultado ao relatório final
    cRelatorio += CRLF + "Relatório Final" + CRLF + "O menor consumo é do " + cVeicEcon + "."



    // Exibe o relatório
    FwAlertInfo(cRelatorio, "Comparativo de Consumo de Combustível")

Return


