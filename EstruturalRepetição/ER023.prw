#include 'Totvs.ch'

/*/{Protheus.doc} ER023
Fa�a um programa que mostre todos os primos entre 1 e N sendo N um n�mero inteiro fornecido pelo usu�rio. 
O programa dever� mostrar tamb�m o n�mero de divis�es que ele executou para encontrar os n�meros primos. 
Ser�o avaliados o funcionamento, o estilo e o n�mero de testes (divis�es) executados.
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
                // nCont n�o � primo
                BREAK
            endif
            nDivisor := nDivisor + 1
        enddo

        IF nDivisor > nCont / 2
            // nCont � primo
            FwAlertInfo("Numeros primos: " + alltrim(str(nCont)))
        endif
    next

    FwAlertInfo("N�mero total de divis�es: " + alltrim(str(nDivisoes)))

return


