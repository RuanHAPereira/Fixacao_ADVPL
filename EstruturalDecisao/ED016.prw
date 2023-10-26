#include 'Totvs.ch'

/*/{Protheus.doc} ED016
Fa�a um programa que calcule as ra�zes de uma equa��o do segundo grau, na forma ax2 + bx + c. 
O programa dever� pedir os valores de a, b e c e fazer as consist�ncias, informando ao usu�rio nas seguintes situa��es:
Se o usu�rio informar o valor de A igual a zero, a equa��o n�o � do segundo grau e o programa n�o deve fazer pedir os demais valores, 
sendo encerrado;
Se o delta calculado for negativo, a equa��o n�o possui raizes reais. Informe ao usu�rio e encerre o programa;
Se o delta calculado for igual a zero a equa��o possui apenas uma raiz real; informe-a ao usu�rio;
Se o delta for positivo, a equa��o possui duas raiz reais; informe-as ao usu�rio;
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

    // Solicita os valores de a, b e c ao usu�rio
    nA := Val(FwInputBox("Digite o valor de A: "))

    //!Valida se o valor ser� igual a 0, se for o programa encerra.
    IF nA == 0
        FwAlertError("A equa��o n�o � do segundo grau. Programa encerrado.")
        lRet = .F.
    ENDIF

    if lRet = .T.
        nB := Val(FwInputBox("Digite o valor de B: "))
        nC := Val(FwInputBox("Digite o valor de C: "))

        //! Calculando o delta
        nDelta := nB^2 - 4 * nA * nC

        // Verifica o valor do delta
        IF nDelta < 0
            FwAlertError("A equa��o n�o possui ra�zes reais. Programa encerrado.")
            lRet = .F.
            
        ELSEIF nDelta == 0
            nRaiz1 := -nB / (2 * nA)
            FwAlertInfo("A equa��o possui uma raiz real: " + Alltrim(Str(nRaiz1)))
        ELSE

            //? SQRT(nRadicand) -> fun��o que calcula o valor do radicando(Indica o resultado da multiplica��o do n�mero que estamos procurando por ele mesmo.)
            nRaiz1 := (-nB + Sqrt(nDelta)) / (2 * nA)
            nRaiz2 := (-nB - Sqrt(nDelta)) / (2 * nA)
            FwAlertSuccess("A equa��o possui duas ra�zes reais:" + CRLF;
            + "Raiz 1: " + Alltrim(Str(nRaiz1)) + CRLF;
            + "Raiz 2: " + Alltrim(Str(nRaiz2)))

        ENDIF
    endif
    
return(lRet)
