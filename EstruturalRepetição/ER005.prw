#include 'Totvs.ch'

/*/{Protheus.doc} ER005
Altere o programa anterior permitindo ao usuário informar as populações e as 
taxas de crescimento iniciais. Valide a entrada e permita repetir a operação.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER005()

    local nAnos     := 0
    local nPopulaA  := 0
    local nPopulaB  := 0
    local nTaxaA    := 0 
    local nTaxaB    := 0
    local cResposta := "S" //? inicio como S para que passe pelo laço a primeira vez.

    do while cResposta == "S" //? aqui se a resposta for S vai recomeçar as perguntas.

        nPopulaA := val(FwInputBox("Informe a população inicial do país A: "))
        
        nTaxaA := val(FwInputBox("Informe a taxa de crescimento anual do país A: "))

        nPopulaB := val(FwInputBox("Informe a população inicial do país B: "))

        nTaxaB := val(FwInputBox("Informe a taxa de crescimento anual do país B: "))

        do while nPopulaA <= nPopulaB
            nPopulaA := nPopulaA * (1 + nTaxaA)
            nPopulaB := nPopulaB * (1 + nTaxaB)
            nAnos := nAnos + 1
        enddo

        FwAlertInfo("Número de anos necessários: " + Alltrim(Str(nAnos)))
        nAnos := 0 

        cResposta := upper(FwInputBox("Deseja fazer outra operação? (S/N): "))
        
    enddo 

return
