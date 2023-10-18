#include 'Totvs.ch'

/*/{Protheus.doc} ES14
João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o rendimento diário de seu trabalho.
Toda vez que ele traz um peso de peixes maior que o estabelecido pelo regulamento de pesca do estado de 
São Paulo (50 quilos) deve pagar uma multa de R$ 4,00 por quilo excedente. João precisa que você faça um programa
que leia a variável peso (peso de peixes) e calcule o excesso. Gravar na variável excesso a quantidade de quilos
além do limite e na variável multa o valor da multa que João deverá pagar. Imprima os dados do programa com as mensagens adequadas.
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
        FwAlertInfo("Não há excesso de peso. Nenhuma multa será aplicada.")
    ENDIF

return
