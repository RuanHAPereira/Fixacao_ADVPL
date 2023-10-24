#include 'Totvs.ch'

/*/{Protheus.doc} ED021
Fa�a um Programa para um caixa eletr�nico. O programa dever� perguntar ao usu�rio a valor do saque
e depois informar quantas notas de cada valor ser�o fornecidas. As notas dispon�veis ser�o as de 1, 5, 10, 50 e 100 reais.
O valor m�nimo � de 10 reais e o m�ximo de 600 reais. O programa n�o deve se preocupar com a quantidade de notas existentes
na m�quina.
Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece duas notas de 100, uma nota de 50, 
uma nota de 5 e uma nota de 1;
Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece tr�s notas de 100, uma nota de 50, 
quatro notas de 10, uma nota de 5 e quatro notas de 1.
@type function
@author Ruan Henrique
@since 10/23/2023
/*/
user function ED021()

    local nSaque := 0
    local nNota100 := 0
    local nNota50 := 0
    local nNota10 := 0
    local nNota5 := 0
    local nNota1 := 0

    FwAlertInfo("Bem-vindo ao Caixa Eletr�nico!")

    DO WHILE nSaque < 10 .OR. nSaque > 600
        nSaque:= val(FwInputBox("Informe o valor do saque (entre 10 e 600 reais): "))
    ENDDO



return
