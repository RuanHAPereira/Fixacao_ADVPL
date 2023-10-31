#include 'Totvs.ch'

/*/{Protheus.doc} ER005
Altere o programa anterior permitindo ao usu�rio informar as popula��es e as 
taxas de crescimento iniciais. Valide a entrada e permita repetir a opera��o.
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
    local cResposta := "S" //? inicio como S para que passe pelo la�o a primeira vez.

    do while cResposta == "S" //? aqui se a resposta for S vai recome�ar as perguntas.

        nPopulaA := val(FwInputBox("Informe a popula��o inicial do pa�s A: "))
        
        nTaxaA := val(FwInputBox("Informe a taxa de crescimento anual do pa�s A: "))

        nPopulaB := val(FwInputBox("Informe a popula��o inicial do pa�s B: "))

        nTaxaB := val(FwInputBox("Informe a taxa de crescimento anual do pa�s B: "))

        do while nPopulaA <= nPopulaB
            nPopulaA := nPopulaA * (1 + nTaxaA)
            nPopulaB := nPopulaB * (1 + nTaxaB)
            nAnos := nAnos + 1
        enddo

        FwAlertInfo("N�mero de anos necess�rios: " + Alltrim(Str(nAnos)))
        nAnos := 0 

        cResposta := upper(FwInputBox("Deseja fazer outra opera��o? (S/N): "))
        
    enddo 

return
