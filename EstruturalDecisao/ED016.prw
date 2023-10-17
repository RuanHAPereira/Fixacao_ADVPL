#include 'Totvs.ch'

user function ED016()

    local nA := 0
    local nB := 0
    local nC := 0
    local nDelta := 0
    local nRaiz1 := 0
    local nRaiz2 := 0

    // Solicita os valores de a, b e c ao usuário
    nA := Val(FwInputBox("Digite o valor de A: "))

    //!Valida se o valor será igual a 0, se for o programa encerra.
    IF nA == 0
        Alert("A equação não é do segundo grau. Programa encerrado.")
    ENDIF

    nB := Val(FwInputBox("Digite o valor de B: "))
    nC := Val(FwInputBox("Digite o valor de C: "))

    //! Calculando o delta
    nDelta := nB^2 - 4 * nA * nC

    // Verifica o valor do delta
    IF nDelta < 0
        Alert("A equação não possui raízes reais. Programa encerrado.")
        
    ELSEIF nDelta == 0
        nRaiz1 := -nB / (2 * nA)
        FwAlertInfo("A equação possui uma raiz real: " + Alltrim(Str(nRaiz1)))
    ELSE

        nRaiz1 := (-nB + Sqrt(nDelta)) / (2 * nA)
        nRaiz2 := (-nB - Sqrt(nDelta)) / (2 * nA)
        FwAlertSuccess("A equação possui duas raízes reais:" + CRLF;
        + "Raiz 1: " + Alltrim(Str(nRaiz1)) + CRLF;
        + "Raiz 2: " + Alltrim(Str(nRaiz2)))

    ENDIF

return
