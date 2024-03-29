#include "totvs.ch"

/*/{Protheus.doc} VE016B
Uma empresa paga seus vendedores com base em comiss�es. 
O vendedor recebe $200 por semana mais 9 por cento de suas vendas brutas daquela semana. 
Escreva um programa (usando um array de contadores) que determine quantos vendedores receberam 
sal�rios nos seguintes intervalos de valores:
$200 - $299 
$300 - $399
$400 - $499
$500 - $599
$600 - $699
$700 - $799
$800 - $899
$900 - $999
$1000 em diante
Desafio: Crie ma f�rmula para chegar na posi��o da lista a partir do sal�rio, sem fazer v�rios ifs aninhados.
@type function
@author Ruan Henrique
@since 11/29/2023
/*/

User Function VE0016()

    Local nSalario    := 0
    Local nVendedores := 0
    Local aContadores := {}
    Local nVendaBruta := 0
    Local cFaixa      := ''
    Local nCont       := 0
    Local nPosicao    := 0
    Local nSemanas    := 0
    Local cMsg        := ''

    nSemanas := Val(FwInputBox("N�mero de semanas que o vendedor trabalhou no m�s: "))

    //? Inicializa o array de contadores
    For nCont := 1 To 10
        AAdd(aContadores, {})
    Next

    Do While .T.
        nVendaBruta := Val(FwInputBox("Digite o valor das vendas brutas (-1 para encerrar): "))
        If nVendaBruta == -1
            Exit
        EndIf

        //? Calcula o sal�rio semanal
        nSalario := 200 + (0.09 * nVendaBruta)

        //? Calcula o sal�rio mensal
        nSalario := nSalario * nSemanas

        //? Determina a posi��o da lista a partir do sal�rio
        nPosicao := Min(10, Int(nSalario / 100) + 1)

        AAdd(aContadores[nPosicao], 1)

        nVendedores++
    EndDo

    For nCont := 1 To 9
        cFaixa := "$" + AllTrim(Str(200 + (100 * (nCont - 1)))) + " - $" + AllTrim(Str(299 + (100 * (nCont - 1))))
        cMsg += cFaixa + ": " + AllTrim(Str(LEN(aContadores[nCont]))) + CRLF
    Next
    cMsg += "$1100 em diante: " + AllTrim(Str(LEN(aContadores[10]))) + CRLF

    FwAlertInfo("Quantidade de vendedores com sal�rios nos intervalos:" + CRLF + cMsg)
    FwAlertInfo("Total de vendedores: " + AllTrim(Str(nVendedores)), "Fim da opera��o.")

Return
