#include 'Totvs.ch'

/*/{Protheus.doc} ES11
Fa�a um Programa que pe�a 2 n�meros inteiros e um n�mero real. Calcule e mostre:
o produto do dobro do primeiro com metade do segundo .
a soma do triplo do primeiro com o terceiro.
o terceiro elevado ao cubo.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES11()

    local nNumInt1    := 0
    local nNumInt2    := 0 
    local nNumReal    := 0
    local nResultado1 := 0 
    local nResultado2 := 0
    local nResultado3 := 0

    nNumInt1 := Val(FwInputBox("Digite o primeiro n�mero inteiro: "))
    nNumInt2 := Val(FwInputBox("Digite o segundo n�mero inteiro: "))
    nNumReal := Val(FwInputBox("Digite um n�mero real: "))

    nResultado1 := (nNumInt1 * 2) * (nNumInt2 / 2)
    nResultado2 := (nNumInt1 * 3) + nNumReal
    nResultado3 := nNumReal ^ 3

    FwAlertInfo("O produto do dobro do primeiro com metade do segundo �:" + Alltrim(Str(nResultado1))) 
    FwAlertInfo("A soma do triplo do primeiro com o terceiro �:" + Alltrim(Str(nResultado2)))
    FwAlertInfo("O terceiro elevado ao cubo �:" + Alltrim(Str(nResultado3)))

return
