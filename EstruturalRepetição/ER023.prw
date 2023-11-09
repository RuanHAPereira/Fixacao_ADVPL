#include 'Totvs.ch'

/*/{Protheus.doc} ER023
Faça um programa que mostre todos os primos entre 1 e N sendo N um número inteiro fornecido pelo usuário. 
O programa deverá mostrar também o número de divisões que ele executou para encontrar os números primos. 
Serão avaliados o funcionamento, o estilo e o número de testes (divisões) executados.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/
user function ER023()

    local nNumero := 0
    local nCont := 0
    local nDivisoes := 0
    local nDivisor := 0

    nNumero := Val(FwInputBox("Digite o valor de N: "))

    for nCont := 2 to nNumero
        //nDivisor := 2
        do while nDivisor <= nCont / 2
            nDivisoes := nDivisoes + 1
            IF Mod(nCont, nDivisor) == 0
                // nCont não é primo
                BREAK
            endif
            nDivisor := nDivisor + 1
        enddo

        IF nDivisor > nCont / 2
            // nCont é primo
            FwAlertInfo("Numeros primos: " + alltrim(str(nCont)))
        endif
    next

    FwAlertInfo("Número total de divisões: " + alltrim(str(nDivisoes)))

return


