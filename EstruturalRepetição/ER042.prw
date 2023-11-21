#include 'Totvs.ch'

/*/{Protheus.doc} ER042
Faça um programa que leia uma quantidade indeterminada de números positivos 
e conte quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
A entrada de dados deverá terminar quando for lido um número negativo.
@type function
@author Ruan Henrique 
@since 11/17/2023
/*/

user function ER042()

    local nNumero  := 0
    local nInterv1 := 0
    local nInterv2 := 0
    local nInterv3 := 0
    local nInterv4 := 0

    do while .T.

        nNumero := Val(FwInputBox("Digite um número positivo (ou negativo para encerrar): "))

        // Verifica se é negativo para encerrar o loop
        if nNumero < 0
            exit
        endif

        // Classifica o número nos intervalos
        if nNumero >= 0 .and. nNumero <= 25
            nInterv1 := nInterv1 + 1
        elseif nNumero >= 26 .and. nNumero <= 50
            nInterv2 := nInterv2 + 1
        elseif nNumero >= 51 .and. nNumero <= 75
            nInterv3 := nInterv3 + 1
        elseif nNumero >= 76 .and. nNumero <= 100
            nInterv4 := nInterv4 + 1
        else
            
        endif
    enddo

    FwAlertInfo("Quantidade de números no intervalo [0-25]: " + AllTrim(Str(nInterv1)))
    FwAlertInfo("Quantidade de números no intervalo [26-50]: " + AllTrim(Str(nInterv2)))
    FwAlertInfo("Quantidade de números no intervalo [51-75]: " + AllTrim(Str(nInterv3)))
    FwAlertInfo("Quantidade de números no intervalo [76-100]: " + AllTrim(Str(nInterv4)))

return
