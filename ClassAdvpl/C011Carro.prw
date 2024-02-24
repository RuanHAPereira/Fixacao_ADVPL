#include "totvs.ch"

User Function C011Carro()

    Local oCarro
    Local nConsumo    := Val(FwInputBox("Digite o consumo do carro (km/l): "))
    Local nAbastecido := Val(FwInputBox("Digite a quantidade de combust�vel abastecida (litros): "))
    Local nDistancia  := Val(FwInputBox("Digite a dist�ncia que deseja percorrer (km): "))

    oCarro := Carro(nConsumo)
    oCarro:adicionarGasolina(nAbastecido)

    FwAlertInfo("Autonomia do carro: " + Transform(nConsumo * nAbastecido, "99990.99") + " km")
    FwAlertInfo("Voc� abasteceu " + Transform(nAbastecido, "99990.99") + " litros.")

    oCarro:andar(nDistancia)
    FwAlertInfo("Combust�vel restante no tanque: " + Transform(oCarro:obterGasolina(), "99990.99") + " litros.")

Return
