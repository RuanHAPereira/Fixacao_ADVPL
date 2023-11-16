#include 'Totvs.ch'

/*/{Protheus.doc} ER036
Desenvolva um programa que faça a tabuada de um número qualquer inteiro que será digitado pelo usuário, 
mas a tabuada não deve necessariamente iniciar em 1 e terminar em 10, o valor inicial e final devem ser 
informados também pelo usuário, conforme exemplo abaixo:
Montar a tabuada de: 5
Começar por: 4
Terminar em: 7

Vou montar a tabuada de 5 começando em 4 e terminando em 7:
5 X 4 = 20
5 X 5 = 25
5 X 6 = 30
5 X 7 = 35
@type function
@author Ruan Henrique
@since 11/14/2023
/*/
user function ER036()

    local nNumero := 0
    local nInicio := 0
    local nFim    := 0
    local nCont   := 0
    local cMsg    := ""

    nNumero := Val(FwInputBox("Montar a tabuada de: "))
    nInicio := Val(FwInputBox("Começar por: "))
    nFim := Val(FwInputBox("Terminar em: "))

    FwAlertInfo("Vou montar a tabuada de " + AllTrim(Str(nNumero)) + " começando em " + AllTrim(Str(nInicio)) + " e terminando em " + AllTrim(Str(nFim)) + ":")

    if nInicio > nFim
        FwAlertInfo("Erro: O valor inicial deve ser menor ou igual ao valor final.")
    else
        nCont := nInicio

        do while nCont <= nFim
            cMsg += (AllTrim(Str(nNumero)) + " X " + AllTrim(Str(nCont)) + " = " + AllTrim(Str(nNumero * nCont)) + CRLF)
            nCont := nCont + 1
        enddo

        FwAlertInfo(cMsg, "TABUADA")
    endif

return
