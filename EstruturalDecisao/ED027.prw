#include 'Totvs.ch'

/*/{Protheus.doc} ED027
Uma fruteira está vendendo frutas com a seguinte tabela de preços:
                      Até 5 Kg           Acima de 5 Kg
Morango         R$ 2,50 por Kg          R$ 2,20 por Kg
Maçã            R$ 1,80 por Kg          R$ 1,50 por Kg
Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra ultrapassar R$ 25,00, 
receberá ainda um desconto de 10% sobre este total. Escreva um algoritmo para ler a quantidade (em Kg) de morangos 
e a quantidade (em Kg) de maças adquiridas e escreva o valor a ser pago pelo cliente.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED027()
    
    local nMorangos := 0
    local nMacas := 0
    local nTotalKg := 0
    local nValorTotal := 0
    local nDesconto := 0

    nMorangos := val(FwInputBox("Quantidade de Morangos (Kg): "))
    nMacas := val(FwInputBox("Quantidade de Maçãs (Kg): "))

    nTotalKg := nMorangos + nMacas

    if nTotalKg <= 5
        nValorTotal := (nMorangos * 2.50) + (nMacas * 1.80)
    else
        nValorTotal := (nMorangos * 2.20) + (nMacas * 1.50)
    endif

    if nTotalKg > 8 .or. nValorTotal > 25.00
        nDesconto := nValorTotal * 0.10
        nValorTotal := nValorTotal - nDesconto
    endif
    
    FwAlertInfo("Valor a ser pago pelo cliente: R$" + Alltrim(Str(nValorTotal)))

return
