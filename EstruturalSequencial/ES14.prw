#include 'Totvs.ch'

/*/{Protheus.doc} ES14
Jo�o Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o rendimento di�rio de seu trabalho.
Toda vez que ele traz um peso de peixes maior que o estabelecido pelo regulamento de pesca do estado de 
S�o Paulo (50 quilos) deve pagar uma multa de R$ 4,00 por quilo excedente. Jo�o precisa que voc� fa�a um programa
que leia a vari�vel peso (peso de peixes) e calcule o excesso. Gravar na vari�vel excesso a quantidade de quilos
al�m do limite e na vari�vel multa o valor da multa que Jo�o dever� pagar. Imprima os dados do programa com as mensagens adequadas.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES14()
  
    local nPeso    := 0
    local nExcesso := 0 
    local nMulta   := 0 

    nPeso := Val(FwInputBox("Informe o peso de peixes em kg: "))

    nExcesso := nPeso - 50

    //? Entra no If se exceder o peso de 50 quilos

    IF nExcesso > 0

        nMulta = nExcesso * 4

        FwAlertInfo("Excesso de peso: " + Alltrim(Str(nExcesso)) + " quilos")
        FwAlertInfo("Multa a ser paga: R$ " + Alltrim(Str(nMulta)))
    ELSE
        FwAlertInfo("N�o h� excesso de peso. Nenhuma multa ser� aplicada.")
    ENDIF

return
