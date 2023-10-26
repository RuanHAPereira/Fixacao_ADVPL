#include 'Totvs.ch'

/*/{Protheus.doc} ED009A
Faça um Programa que leia três números e mostre-os em ordem decrescente.
Variação do Exercicio sem usar a função ASORT().
@type function
@author Ruan Henrique
@since 10/23/2023
/*/

user function ED009B()

    local nNum1  := 0
    local nNum2  := 0
    local nNum3  := 0
    local nMaior := 0
    local nMedio := 0
    local nMenor := 0
    
    nNum1:= val(FwInputBox("Digite o primeiro número: "))
    nNum2:= val(FwInputBox("Digite o segundo número: "))
    nNum3:= val(FwInputBox("Digite o terceiro número: "))
    
    if nNum1 > nNum2
        nMaior := nNum1
        nMenor := nNum2
    else
        nMaior := nNum2
        nMenor := nNum1
    endif
    
    if nNum3 > nMaior
        nMedio := nMaior
        nMaior := nNum3
    elseif nNum3 < nMenor
        nMedio := nMenor
        nMenor := nNum3
    else
        nMedio := nNum3
    endif

    FwAlertInfo("Os números em ordem decrescente são: " + Alltrim(Str(nMaior)) + ", " + CRLF;
    + Alltrim(Str(nMedio)) + ", " +  Alltrim(Str(nMenor)))
return
