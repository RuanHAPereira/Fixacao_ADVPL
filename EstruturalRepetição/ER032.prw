#include 'Totvs.ch'

/*/{Protheus.doc} ER032
Fa�a um programa que calcule o fatorial de um n�mero inteiro fornecido pelo usu�rio. Ex.: 5!=5.4.3.2.1=120. 
A sa�da deve ser conforme o exemplo abaixo:
Fatorial de: 5
5! =  5 . 4 . 3 . 2 . 1 = 120
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER032()

    local nNum      := 0
    local nFatorial := 1
    local nCont     := 0
    local cMsg      := 0

    nNum := Val(FwInputBox("Digite um n�mero para calcular o fatorial: "))
    cMsg := AllTrim(Str(nNum)) + "! = "

    for nCont := nNum to 1 step -1
        nFatorial := nFatorial * nCont
        cMsg := cMsg + AllTrim(Str(nCont))
        if nCont > 1
            cMsg := cMsg + " . "
        endif
    next

    FwAlertInfo(cMsg + " = " + AllTrim(Str(nFatorial)))

return
