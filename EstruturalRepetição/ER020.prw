#include 'Totvs.ch'

/*/{Protheus.doc} ER020
Altere o programa de cálculo do fatorial, permitindo ao usuário calcular o fatorial várias vezes e 
limitando o fatorial a números inteiros positivos e menores que 16.
@type function
@author Ruan Henrique
@since 11/1/2023
/*/

user function ER020()
    local nNumero   := 0
    local nFatorial := 1
    local nCont     := 1
    local lRet      := .T.
    local cOpc      := 'S'

    Do While UPPER(cOpc) == 'S'
        FwAlertInfo("Digite um número inteiro, de 0 a 15.")
        nNumero := Val(FwInputBox("Digite um número inteiro: "))

        if UPPER(cOpc) == 'N'
            lRet := .F.
        elseif nNumero < 0 .or. nNumero > 15
            FwAlertInfo("Por favor, digite um número inteiro positivo no intervalo de 0 a 15.")
        else
            Do While nCont <= nNumero
                nFatorial := nFatorial * nCont
                nCont := nCont + 1
            EndDo
            FwAlertInfo("Fatorial de " + AllTrim(Str(nNumero)) + "! = " + (AllTrim(Str(nFatorial))))

            nFatorial := 1 
            nCont := 1
        Endif

        cOpc := UPPER(FwInputBox("Deseja finalizar? S/N"))
    EndDo

    return(lRet)


