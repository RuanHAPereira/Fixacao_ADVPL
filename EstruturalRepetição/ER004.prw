#include 'Totvs.ch'

/*/{Protheus.doc} ER004
Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de 
crescimento de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5%. 
Faça um programa que calcule e escreva o número de anos necessários para que a população do país A 
ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER004()

    local nAnos := 0
    local nPopulacaoA := 169000
    local nPopulacaoB := 230000
    local nTaxaAumentoA := 0.03
    local nTaxaAumentoB := 0.015

    do while nPopulacaoA <= nPopulacaoB
        nPopulacaoA := nPopulacaoA * (1 + nTaxaAumentoA)
        nPopulacaoB := nPopulacaoB * (1 + nTaxaAumentoB)
        nAnos := nAnos + 1
    enddo

    FwAlertInfo("Número de anos necessários:" + Alltrim(Str(nAnos)) + " anos.")

return
