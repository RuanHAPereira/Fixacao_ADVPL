#include 'Totvs.ch'

/*/{Protheus.doc} ER020
Altere o programa de c�lculo do fatorial, permitindo ao usu�rio calcular o fatorial v�rias vezes e 
limitando o fatorial a n�meros inteiros positivos e menores que 16.
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
        FwAlertInfo("Digite um n�mero inteiro, de 1 a 15.")
        nNumero := Val(FwInputBox("Digite um n�mero inteiro: "))

        if UPPER(cOpc) == 'N'
            lRet := .F.
        elseif nNumero < 1 .or. nNumero > 15
            FwAlertInfo("Por favor, digite um n�mero inteiro positivo no intervalo de 1 a 15.")
        else
            Do While nCont <= nNumero
                nFatorial := nFatorial * nCont
                nCont := nCont + 1
            EndDo
            FwAlertInfo("Fatorial de " + AllTrim(Str(nNumero)) + "! = " + (AllTrim(Str(nFatorial))))

            nFatorial := 1 
            nCont := 1
        Endif

        cOpc := UPPER(FwInputBox("Deseja fazer uma nova opera��o? S/N"))
    EndDo

    return(lRet)


