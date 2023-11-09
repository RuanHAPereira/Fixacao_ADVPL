#include 'Totvs.ch'

/*/{Protheus.doc} ER025
Faça um programa que peça para n pessoas a sua idade, 
ao final o programa devera verificar se a média de idade da turma varia entre 0 e 25,26 e 60 e maior que 60; 
e então, dizer se a turma é jovem, adulta ou idosa, conforme a média calculada.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER025()

    local nQuantidade := 0
    local nIdade      := 0
    local nSomaIdades := 0
    local nMediaIdade := 0
    local nCont       := 0

    nQuantidade := Val(FwInputBox("Digite a quantidade de pessoas: "))

    for nCont := 1 to nQuantidade
        nIdade := Val(FwInputBox("Digite a idade da pessoa " + alltrim(str(nCont)) + ": "))
        nSomaIdades := nSomaIdades + nIdade
    next

    if nQuantidade > 0
        nMediaIdade := nSomaIdades / nQuantidade

        if nMediaIdade >= 0 .and. nMediaIdade <= 25
            FwAlertInfo("A média de idade da turma é " + alltrim(str(nMediaIdade)) + ". A turma é jovem.")
        elseif nMediaIdade >= 26 .and. nMediaIdade <= 60
            FwAlertInfo("A média de idade da turma é " + alltrim(str(nMediaIdade)) + ". A turma é adulta.")
        else
            FwAlertInfo("A média de idade da turma é " + alltrim(str(nMediaIdade)) + ". A turma é idosa.")
        endif
    else
        FwAlertInfo("Nenhuma idade foi inserida.")
    endif

return
