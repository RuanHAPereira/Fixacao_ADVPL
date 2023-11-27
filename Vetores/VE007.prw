#include 'totvs.ch'

/*/{Protheus.doc} VE007
Fa�a um Programa que leia um vetor de 5 n�meros inteiros, mostre a soma, a multiplica��o e os n�meros.
@type function
@author Ruan Henrique
@since 11/26/2023
/*/

user function VE007()

    local aNumeros := {}
    local nCont    := 0
    local nSoma    := 0
    local nProduto := 1
    local cMsg     := ""

    for nCont := 1 to 5
        nNum := Val(FwInputBox("Digite o n�mero inteiro " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aNumeros, nNum)
    next

    for nCont := 1 to Len(aNumeros)
        nSoma := nSoma + aNumeros[nCont]
        nProduto := nProduto * aNumeros[nCont]
        cMsg += "N�mero " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo(cMsg,"N�meros digitados:")
    FwAlertInfo(AllTrim(Str(nSoma)), "Soma dos n�meros:")
    FwAlertInfo(AllTrim(Str(nProduto)), "Produto dos n�meros:")

return
