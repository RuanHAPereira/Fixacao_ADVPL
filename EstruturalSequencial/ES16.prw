#include 'Totvs.ch'

/*/{Protheus.doc} ES16
Fa�a um programa para uma loja de tintas. O programa dever� pedir o tamanho em metros quadrados da �rea a ser pintada. 
Considere que a cobertura da tinta � de 1 litro para cada 3 metros quadrados e que a tinta � vendida em latas de 18 litros,
que custam R$ 80,00. Informe ao usu�rio a quantidades de latas de tinta a serem compradas e o pre�o total.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES16()

    local nArea        := 0
    local nLatasTinta  := 0
    local nLitrosTinta := 0
    local nPrecoTotal  := 0

    nArea := val(FwInputbox("Informe a area, em metros quadrados, que ser� pintada: "))

    nLitrosTinta = nArea / 3 
  
    nLatasTinta = nLitrosTinta / 18

    // Calcula o pre�o total
    nPrecoTotal = nLatasTinta * 80

    // Exibe as informa��es
    FwAlertInfo("Quantidade de latas de tinta necess�rias: " + Alltrim(STR(nLatasTinta)))
    FwAlertInfo("Pre�o total: R$ " + Alltrim(STR(nPrecoTotal)))

return
