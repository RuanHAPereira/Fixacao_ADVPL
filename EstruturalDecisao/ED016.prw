#include 'Totvs.ch'

/*/{Protheus.doc} ED016
Faça um programa que calcule as raízes de uma equação do segundo grau, na forma ax2 + bx + c. 
O programa deverá pedir os valores de a, b e c e fazer as consistências, informando ao usuário nas seguintes situações:
Se o usuário informar o valor de A igual a zero, a equação não é do segundo grau e o programa não deve fazer pedir os demais valores, 
sendo encerrado;
Se o delta calculado for negativo, a equação não possui raizes reais. Informe ao usuário e encerre o programa;
Se o delta calculado for igual a zero a equação possui apenas uma raiz real; informe-a ao usuário;
Se o delta for positivo, a equação possui duas raiz reais; informe-as ao usuário;
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED016()

    local nA := 0
    local nB := 0
    local nC := 0
    local nDelta := 0
    local nRaiz1 := 0
    local nRaiz2 := 0
    local lRet := .T.

    // Solicita os valores de a, b e c ao usuário
    nA := Val(FwInputBox("Digite o valor de A: "))

    //!Valida se o valor será igual a 0, se for o programa encerra.
    IF nA == 0
        FwAlertError("A equação não é do segundo grau. Programa encerrado.")
        lRet = .F.
    ENDIF

    if lRet = .T.
        nB := Val(FwInputBox("Digite o valor de B: "))
        nC := Val(FwInputBox("Digite o valor de C: "))

        //! Calculando o delta
        nDelta := nB^2 - 4 * nA * nC

        // Verifica o valor do delta
        IF nDelta < 0
            FwAlertError("A equação não possui raízes reais. Programa encerrado.")
            lRet = .F.
            
        ELSEIF nDelta == 0
            nRaiz1 := -nB / (2 * nA)
            FwAlertInfo("A equação possui uma raiz real: " + Alltrim(Str(nRaiz1)))
        ELSE

            //? SQRT(nRadicand) -> função que calcula o valor do radicando(Indica o resultado da multiplicação do número que estamos procurando por ele mesmo.)
            nRaiz1 := (-nB + Sqrt(nDelta)) / (2 * nA)
            nRaiz2 := (-nB - Sqrt(nDelta)) / (2 * nA)
            FwAlertSuccess("A equação possui duas raízes reais:" + CRLF;
            + "Raiz 1: " + Alltrim(Str(nRaiz1)) + CRLF;
            + "Raiz 2: " + Alltrim(Str(nRaiz2)))

        ENDIF
    endif
    
return(lRet)
