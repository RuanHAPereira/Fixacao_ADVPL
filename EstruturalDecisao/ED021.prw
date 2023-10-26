#include 'Totvs.ch'

/*/{Protheus.doc} ED021
Faça um Programa para um caixa eletrônico. O programa deverá perguntar ao usuário a valor do saque
e depois informar quantas notas de cada valor serão fornecidas. As notas disponíveis serão
as de 1, 5, 10, 50 e 100 reais.
O valor mínimo é de 10 reais e o máximo de 600 reais. O programa não deve se preocupar com a 
quantidade de notas existentes
na máquina.
Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece duas notas de 100, uma nota de 50, 
uma nota de 5 e uma nota de 1;
Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece três notas de 100, uma nota de 50, 
quatro notas de 10, uma nota de 5 e quatro notas de 1.
@type function
@author Ruan Henrique
@since 10/23/2023
/*/
user function ED021()

    local nSaque := 0
    local nValorMinimo := 10
    local nValorMaximo := 600
    local nNotas100    := 0
    local nNotas50     := 0
    local nNotas10     := 0
    local nNotas5      := 0
    local nNotas1      := 0

    FwAlertInfo("Bem-vindo ao Caixa Eletrônico!")
    
    nSaque := val(FwInputBox("Digite o valor que deseja sacar (entre 10 e 600 reais): "))
        
    if nSaque >= nValorMinimo .and. nSaque <= nValorMaximo
        Alert("Notas fornecidas para sacar" + Alltrim(Str(nSaque)) + "reais:")
    else
        Alert("Valor inválido. O valor deve estar entre 10 e 600 reais.")
    endif

    nNotas100 := INT(nSaque / 100)
    nSaque := nSaque - (nNotas100 * 100)

    nNotas50 := INT(nSaque / 50)
    nSaque := nSaque - (nNotas50 * 50)

    nNotas10 := INT(nSaque / 10)
    nSaque := nSaque - (nNotas10 * 10)

    nNotas5 := INT(nSaque / 5)
    nSaque := nSaque - (nNotas5 * 5)

    nNotas1 := nSaque

    if nNotas100 > 0
        FwAlertInfo(Alltrim(Str(nNotas100)) + "nota(s) de 100 reais.")
    endif

    if nNotas50 > 0
        FwAlertInfo(Alltrim(Str(nNotas50)) + "nota(s) de 50 reais.")
    endif

    if nNotas10 > 0
        FwAlertInfo(Alltrim(Str(nNotas10)) + "nota(s) de 10 reais.")
    endif

    if nNotas5 > 0
        FwAlertInfo(Alltrim(Str(nNotas5)) + "nota(s) de 5 reais.")
    endif

    if nNotas1 > 0
        FwAlertInfo(Alltrim(Str(nNotas1)) + "nota(s) de 1 real.")
    endif

    FwAlertInfo("Retire o dinheiro e tenha um bom dia!")

return
