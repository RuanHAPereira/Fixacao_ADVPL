#include "totvs.ch"

/*/{Protheus.doc} VE017
Em uma competição de salto em distância cada atleta tem direito a cinco saltos.
O resultado do atleta será determinado pela média dos cinco valores restantes.
Você deve fazer um programa que receba o nome e as cinco distâncias alcançadas
pelo atleta em seus saltos e depois informe o nome, os saltos e a média dos saltos.
O programa deve ser encerrado quando não for informado o nome do atleta.
A saída do programa deve ser conforme o exemplo abaixo:
Atleta: Rodrigo Curvêllo

Primeiro Salto: 6.5 m
Segundo Salto: 6.1 m
Terceiro Salto: 6.2 m
Quarto Salto: 5.4 m
Quinto Salto: 5.3 m

Resultado final:
Atleta: Rodrigo Curvêllo
Saltos: 6.5 - 6.1 - 6.2 - 5.4 - 5.3
Média dos saltos: 5.9 m
@type function
@author Seu Nome
@since 11/25/2023
/*/

user function VE017()

    local cNome   := ""
    local nSalto  := 0.0
    local aSaltos := {}
    local nCont   := 1
    local nMedia  := 0.0
    local cPrompt := ""
    local cMsg    := ''

    cNome := FwInputBox("Digite o nome do atleta:")

    while !Empty(cNome)
        for nCont := 1 to 5
                cPrompt := "Digite a distância do " + alltrim(Str(nCont)) + "º salto (em metros): "
            nSalto := Val(FwInputBox(cPrompt))
            AAdd(aSaltos, nSalto)
        next

        

        for nCont := 1 to 5
            cMsg += "Salto " + alltrim(Str(nCont)) + ": " + AllTrim(Str(aSaltos[nCont])) + CRLF
        next

        nMedia := (aSaltos[1] + aSaltos[2] + aSaltos[3] + aSaltos[4] + aSaltos[5]) / 5

        FwAlertInfo("Atleta: " + cNome + CRLF + cMsg + CRLF +;
        "Média dos saltos: " + AllTrim(Str(nMedia)) + " m", "Resultado")

        cNome := FwInputBox("Digite o nome do próximo atleta (ou deixe em branco para encerrar):")
    enddo

    FwAlertInfo("Programa encerrado.")
    
return
