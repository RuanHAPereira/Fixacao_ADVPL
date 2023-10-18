#include 'Totvs.ch'

/*/{Protheus.doc} ED014
Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre, 
e calcule a sua média. A atribuição de conceitos obedece à tabela abaixo:
  Média de Aproveitamento  Conceito
  Entre 9.0 e 10.0        A
  Entre 7.5 e 9.0         B
  Entre 6.0 e 7.5         C
  Entre 4.0 e 6.0         D
  Entre 4.0 e zero        E

O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO” se o conceito for A, B ou C ou 
“REPROVADO” se o conceito for D ou E.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED014()

    local nNota1    := 0
    local nNota2    := 0
    local nMedia    := 0
    local cConceito := ""
    local cMsg      := ""

    nNota1 := val(FwInputBox("Digite a primeira nota: "))
    nNota2 := val(FwInputBox("Digite a segunda nota: "))

    nMedia := (nNota1 + nNota2) / 2

    IF nMedia >= 9.0
        cConceito := "A"
    ELSEIF nMedia >= 7.5
        cConceito := "B"
    ELSEIF nMedia >= 6.0
        cConceito := "C"
    ELSEIF nMedia >= 4.0
        cConceito := "D"
    ELSE
        cConceito := "E"
    ENDIF

    // Verifica se o aluno está APROVADO ou REPROVADO
    IF cConceito == "A" .OR. cConceito == "B" .OR. cConceito == "C"
        cMsg := "APROVADO!!"
    ELSE
        cMsg := "REPROVADO!!"
    ENDIF

    FwAlertInfo("Nota 1: " + Alltrim(Str(nNota1)) + CRLF;
    + "Nota 2: " + Alltrim(Str(nNota2)) + CRLF;
    + "Média: " + Alltrim(Str(nMedia)) + CRLF;
    + "Conceito: " + Alltrim(cConceito) + CRLF;
    + "Resultado: " + Alltrim(cMsg))

return
