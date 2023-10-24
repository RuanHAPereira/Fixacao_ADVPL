#include 'Totvs.ch'

/*/{Protheus.doc} ED024
Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual operação ele deseja realizar. 
O resultado da operação deve ser acompanhado de uma frase que diga se o número é:
par ou ímpar;
positivo ou negativo;
inteiro ou decimal.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED024()
    
    local nNumero1 := 0
    local nNumero2 := 0
    local cOperacao := ""
    local cMsg1 := ''
    local cMsg2 := ''
    local cMsg3 := ''
    local nResultado := 0

    nNumero1 := val(FwInputbox("Informe o primeiro número: "))
    nNumero2 := val(FwInputbox("Informe o segundo número: "))

    cOperacao := FwInputbox("Escolha a operação desejada (+, -, *, /): ")

    do case
        case cOperacao == "+"
            nResultado := nNumero1 + nNumero2
        case cOperacao == "-"
            nResultado := nNumero1 - nNumero2
        case cOperacao == "*"
            nResultado := nNumero1 * nNumero2
        case cOperacao == "/"
            nResultado := nNumero1 / nNumero2
        OTHERWISE
            FwAlertError("Operação inválida.")
    endcase

    if MOD(nResultado, 2) == 0
        cMsg1 := "par"
    else
        cMsg1 := "ímpar"
    endif

    if nResultado == 0
        cMsg2 := "neutro"
    elseif nResultado > 0
        cMsg2 := "positivo"
    else
        cMsg2 := "negativo"
    endif

    if nResultado - ROUND(nResultado, 0) == 0
        cMsg3 := "inteiro."
    else
        cMsg3 := "decimal."
    endif

    FwAlertInfo("O resultado da operação é : " + Alltrim(Str(nResultado)) + CRLF;
    + "É um numero " + Alltrim(cMsg1) + ", " + Alltrim(cMsg2) + " e " + Alltrim(cMsg3))

return
