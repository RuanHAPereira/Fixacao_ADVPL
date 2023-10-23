#include 'Totvs.ch'

/*/{Protheus.doc} ED020
Fa�a um Programa para leitura de tr�s notas parciais de um aluno. O programa deve calcular a
m�dia alcan�ada por aluno e presentar:
A mensagem "Aprovado", se a m�dia for maior ou igual a 7, com a respectiva m�dia alcan�ada;
A mensagem "Reprovado", se a m�dia for menor do que 7, com a respectiva m�dia alcan�ada;
A mensagem "Aprovado com Distin��o", se a m�dia for igual a 10.
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
        FwAlertSuccess("Aprovado com Distin��o. M�dia: " + alltrim(str(nMedia)))
    ELSEIF nMedia >= 7
        FwAlertInfo("Aprovado. M�dia: " + alltrim(Str(nMedia)))
    ELSE
        FwAlertError("Reprovado. M�dia: " + alltrim(Str(nMedia)))
    ENDIF

return
