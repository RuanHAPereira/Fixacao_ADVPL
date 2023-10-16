#include 'Totvs.ch'

user function ES17()

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
