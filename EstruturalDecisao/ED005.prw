#include 'Totvs.ch'

/*/{Protheus.doc} ED005
Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a média alcançada por aluno e apresentar:
A mensagem "Aprovado", se a média alcançada for maior ou igual a sete;
A mensagem "Reprovado", se a média for menor do que sete;
A mensagem "Aprovado com Distinção", se a média for igual a dez.
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
        FwAlertSuccess("APROVADO COM DISTINÇÂO, sua media é de " + Alltrim(Str(nMedia)) + "pontos!" )
    elseif nMedia < 7
        FwAlertError("REPROVADO, sua media é de " + Alltrim(Str(nMedia)) + "pontos!")
    else 
        FwAlertInfo("APROVADO!!! Sua nota é " + Alltrim(Str(nMedia)) + "pontos!")
    endif
    
return
