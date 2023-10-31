#include 'Totvs.ch'

/*/{Protheus.doc} ES16
Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho em metros quadrados da área a ser pintada. 
Considere que a cobertura da tinta é de 1 litro para cada 3 metros quadrados e que a tinta é vendida em latas de 18 litros,
que custam R$ 80,00. Informe ao usuário a quantidades de latas de tinta a serem compradas e o preço total.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES16()

    local nArea        := 0
    local nLatasTinta  := 0
    local nLitrosTinta := 0
    local nPrecoTotal  := 0

    nArea := val(FwInputbox("Informe a area, em metros quadrados, que será pintada: "))

    nLitrosTinta = nArea / 3 
  
    nLatasTinta = nLitrosTinta / 18

    // Calcula o preço total
    nPrecoTotal = nLatasTinta * 80

    // Exibe as informações
    FwAlertInfo("Quantidade de latas de tinta necessárias: " + Alltrim(STR(nLatasTinta)))
    FwAlertInfo("Preço total: R$ " + Alltrim(STR(nPrecoTotal)))

return
