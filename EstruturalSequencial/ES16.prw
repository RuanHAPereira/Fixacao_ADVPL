#include 'Totvs.ch'

user function ES17()

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
