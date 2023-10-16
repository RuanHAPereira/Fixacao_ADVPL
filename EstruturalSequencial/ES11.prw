#include 'Totvs.ch'

user function ES11()

    local nNumInt1    := 0
    local nNumInt2    := 0 
    local nNumReal    := 0
    local nResultado1 := 0 
    local nResultado2 := 0
    local nResultado3 := 0

    nNumInt1 := Val(FwInputBox("Digite o primeiro número inteiro: "))
    nNumInt2 := Val(FwInputBox("Digite o segundo número inteiro: "))
    nNumReal := Val(FwInputBox("Digite um número real: "))

    nResultado1 := (nNumInt1 * 2) * (nNumInt2 / 2)
    nResultado2 := (nNumInt1 * 3) + nNumReal
    nResultado3 := nNumReal ^ 3

    FwAlertInfo("O produto do dobro do primeiro com metade do segundo é:" + Alltrim(Str(nResultado1))) 
    FwAlertInfo("A soma do triplo do primeiro com o terceiro é:" + Alltrim(Str(nResultado2)))
    FwAlertInfo("O terceiro elevado ao cubo é:" + Alltrim(Str(nResultado3)))

return
