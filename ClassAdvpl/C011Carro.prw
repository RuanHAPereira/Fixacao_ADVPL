#include "totvs.ch"

User Function C011Carro()

    Local oCarro
    Local nConsumo    := Val(FwInputBox("Digite o consumo do carro (km/l): "))
    Local nAbastecido := Val(FwInputBox("Digite a quantidade de combustível abastecida (litros): "))
    Local nDistancia  := Val(FwInputBox("Digite a distância que deseja percorrer (km): "))

    oCarro := Carro(nConsumo)
    oCarro:adicionarGasolina(nAbastecido)

    FwAlertInfo("Autonomia do carro: " + Transform(nConsumo * nAbastecido, "99990.99") + " km")
    FwAlertInfo("Você abasteceu " + Transform(nAbastecido, "99990.99") + " litros.")

    oCarro:andar(nDistancia)
    FwAlertInfo("Combustível restante no tanque: " + Transform(oCarro:obterGasolina(), "99990.99") + " litros.")

Return
