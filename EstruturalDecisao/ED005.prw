#include 'Totvs.ch'

/*/{Protheus.doc} ED005
Fa�a um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a m�dia alcan�ada por aluno e apresentar:
A mensagem "Aprovado", se a m�dia alcan�ada for maior ou igual a sete;
A mensagem "Reprovado", se a m�dia for menor do que sete;
A mensagem "Aprovado com Distin��o", se a m�dia for igual a dez.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED005()

    local nNota1 := 0 
    local nNota2 := 0
    local nMedia := 0

    nNota1 := val(FwInputBox("Digite a primeira nota: "))
    nNota2 := val(FwInputBox("Digite a segunda nota: "))

    nMedia = (nNota1 + nNota2)/2

    if nMedia == 10
        FwAlertSuccess("APROVADO COM DISTIN��O, sua media � de " + Alltrim(Str(nMedia)) + "pontos!" )
    elseif nMedia < 7
        FwAlertError("REPROVADO, sua media � de " + Alltrim(Str(nMedia)) + "pontos!")
    else 
        FwAlertInfo("APROVADO!!! Sua nota � " + Alltrim(Str(nMedia)) + "pontos!")
    endif
    
return
