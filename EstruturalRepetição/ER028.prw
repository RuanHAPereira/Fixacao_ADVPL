#include 'Totvs.ch'

/*/{Protheus.doc} ER028
Fa�a um programa que calcule o valor total investido por um colecionador 
em sua cole��o de CDs e o valor m�dio gasto em cada um deles. O usu�rio dever� informar a 
quantidade de CDs e o valor para em cada um.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER028()

    local nCDs         := 0
    local nValorCD     := 0
    local nTotalInvest := 0
    local nMediaInvest := 0
    local nCont        := 0

    nCDs := Val(FwInputBox("Digite a quantidade de CDs na cole��o: "))

    for nCont := 1 to nCDs
        nValorCD := Val(FwInputBox("Digite o valor gasto no CD " + AllTrim(Str(nCont)) + ": "))
        nTotalInvest := nTotalInvest + nValorCD
    next

    if nCDs > 0
        nMediaInvest := nTotalInvest / nCDs
        FwAlertInfo("O valor total investido na cole��o de CDs �: " + AllTrim(Str(nTotalInvest)))
        FwAlertInfo("O valor m�dio gasto em cada CD �: " + AllTrim(Str(nMediaInvest)))
    else
        FwAlertError("Nenhum CD foi inserido.")
    endif

return
