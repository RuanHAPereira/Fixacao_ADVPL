#include 'Totvs.ch'

/*/{Protheus.doc} ED026
Um posto est� vendendo combust�veis com a seguinte tabela de descontos:
�lcool:
at� 20 litros, desconto de 3% por litro
acima de 20 litros, desconto de 5% por litro
Gasolina:
at� 20 litros, desconto de 4% por litro
acima de 20 litros, desconto de 6% por litro Escreva um algoritmo que leia o n�mero de litros vendidos, 
o tipo de combust�vel (codificado da seguinte forma: A-�lcool, G-gasolina), calcule e imprima o valor a ser 
pago pelo cliente sabendo-se que o pre�o do litro da gasolina � R$ 2,50 o pre�o do litro do �lcool � R$ 1,90.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED026()

    local nLitros        := 0
    local cCombustivel   := ""
    local nPrecoGasolina := 2.50
    local nPrecoAlcool   := 1.90
    local nDesconto      := 0
    local nTotalPagar    := 0

    cCombustivel := UPPER(FwInputBox("Digite o tipo de combust�vel (A para �lcool, G para gasolina): "))
    nLitros := val(FwInputBox("Digite o n�mero de litros vendidos: "))
    
    if cCombustivel == "A"
        if nLitros <= 20
            nDesconto := 0.03 //? desconto de 3% at� 20 litros de ALCOOL
        else
            nDesconto := 0.05 //? desconto de 5% acima de 20 litros ALCOOL
        endif
        nTotalPagar := nLitros * (nPrecoAlcool - (nPrecoAlcool * nDesconto))

    elseif cCombustivel == "G"
        if nLitros <= 20
            nDesconto := 0.04 //? desconto de 4% at� 20 litros de GASOLINA
        else
            nDesconto := 0.06 //? desconto de 6% acima de 20 litros de GASOLINA
        endif
        nTotalPagar := nLitros * (nPrecoGasolina - (nPrecoGasolina * nDesconto))
    else
        Alert("Tipo de combust�vel inv�lido. Use 'A' para �lcool ou 'G' para gasolina.")
    endif

    FwAlertInfo("O valor a ser pago pelo cliente �: R$" + Alltrim(Str(nTotalPagar)))
    
return
