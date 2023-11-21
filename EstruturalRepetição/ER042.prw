#include 'Totvs.ch'

/*/{Protheus.doc} ER042
Fa�a um programa que leia uma quantidade indeterminada de n�meros positivos 
e conte quantos deles est�o nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
A entrada de dados dever� terminar quando for lido um n�mero negativo.
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

        nNumero := Val(FwInputBox("Digite um n�mero positivo (ou negativo para encerrar): "))

        // Verifica se � negativo para encerrar o loop
        if nNumero < 0
            exit
        endif

        // Classifica o n�mero nos intervalos
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

    FwAlertInfo("Quantidade de n�meros no intervalo [0-25]: " + AllTrim(Str(nInterv1)))
    FwAlertInfo("Quantidade de n�meros no intervalo [26-50]: " + AllTrim(Str(nInterv2)))
    FwAlertInfo("Quantidade de n�meros no intervalo [51-75]: " + AllTrim(Str(nInterv3)))
    FwAlertInfo("Quantidade de n�meros no intervalo [76-100]: " + AllTrim(Str(nInterv4)))

return
