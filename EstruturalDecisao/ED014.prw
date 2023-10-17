#include 'Totvs.ch'

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
        cMsg := FwAlertSuccess("APROVADO")
    ELSE
        cMsg := FwAlertError("REPROVADO")
    ENDIF

    FwAlertInfo("Nota 1: " + Alltim(Str(nNota1)) + CRLF;
    + "Nota 2: " + Alltrim(Str(nNota2)) + CRLF;
    + "Média: " + Alltrim(Str(nMedia)) + CRLF;
    + "Conceito: " + Alltrim(Str(cConceito)) + CRLF;
    + "Resultado: " + Alltrim(Str(cMsg)))

return
