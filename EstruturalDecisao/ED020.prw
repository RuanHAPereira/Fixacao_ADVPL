#include 'Totvs.ch'

/*/{Protheus.doc} ED020
Faça um Programa para leitura de três notas parciais de um aluno. O programa deve calcular a
média alcançada por aluno e presentar:
A mensagem "Aprovado", se a média for maior ou igual a 7, com a respectiva média alcançada;
A mensagem "Reprovado", se a média for menor do que 7, com a respectiva média alcançada;
A mensagem "Aprovado com Distinção", se a média for igual a 10.
@type function
@author Ruan Henrique
@since 10/20/2023
/*/
user function ED020()
    
    local nNota1 := 0
    local nNota2 := 0
    local nNota3 := 0
    local nMedia := 0

    nNota1 := val(FwInputBox("Informe a primeira nota: "))
    nNota2 := val(FwInputBox("Informe a segunda nota: "))   
    nNota3 := val(FwInputBox("Informe a terceira nota: "))
   
    nMedia = (nNota1 + nNota2 + nNota3) / 3

    IF nMedia == 10
        FwAlertSuccess("Aprovado com Distinção. Média: " + alltrim(str(nMedia)))
    ELSEIF nMedia >= 7
        FwAlertInfo("Aprovado. Média: " + alltrim(Str(nMedia)))
    ELSE
        FwAlertError("Reprovado. Média: " + alltrim(Str(nMedia)))
    ENDIF

return
