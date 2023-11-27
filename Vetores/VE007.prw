#include 'totvs.ch'

/*/{Protheus.doc} VE007
Faça um Programa que leia um vetor de 5 números inteiros, mostre a soma, a multiplicação e os números.
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
        nNum := Val(FwInputBox("Digite o número inteiro " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aNumeros, nNum)
    next

    for nCont := 1 to Len(aNumeros)
        nSoma := nSoma + aNumeros[nCont]
        nProduto := nProduto * aNumeros[nCont]
        cMsg += "Número " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo(cMsg,"Números digitados:")
    FwAlertInfo(AllTrim(Str(nSoma)), "Soma dos números:")
    FwAlertInfo(AllTrim(Str(nProduto)), "Produto dos números:")

return
