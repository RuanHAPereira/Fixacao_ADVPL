#include 'Totvs.ch'

/*/{Protheus.doc} ER012
Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número inteiro entre 1 a 10. 
O usuário deve informar de qual numero ele deseja ver a tabuada. 
A saída deve ser conforme o exemplo abaixo:
Tabuada de 5:
5 X 1 = 5
5 X 2 = 10
...
5 X 10 = 50
@type function
@author Ruan Henrique
@since 10/31/2023

/*/
user function ER012()

    Local nNumero := 0
    Local nCont := 0
    local cMsg := ''
    local lRet := .T.

    nNumero := Val(FwInputBox("Digite o número para gerar a tabuada (1 a 10): "))

    
    If nNumero < 1 .or. nNumero > 10
        FwAlertInfo("Por favor, insira um número entre 1 e 10.")
        lRet := .F.
    EndIf

    if lRet == .T.

        FwAlertInfo("Tabuada de " + AllTrim(Str(nNumero)) + ":")

        For nCont := 1 to 10
            cMsg += (AllTrim(Str(nNumero)) + " X " + AllTrim(Str(nCont)) + " = " + AllTrim(Str(nNumero * nCont)) + CRLF)
        Next

        FwAlertInfo(cMsg , "TABUADA")
    endif

Return(lRet)

