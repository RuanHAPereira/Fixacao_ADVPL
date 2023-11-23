#include 'Totvs.ch'

/*/{Protheus.doc} ER046
Em uma competição de salto em distância cada atleta tem direito a cinco saltos. 
No final da série de saltos de cada atleta, o melhor e o pior resultados são eliminados. 
O seu resultado fica sendo a média dos três valores restantes. 
Você deve fazer um programa que receba o nome e as cinco distâncias alcançadas pelo atleta 
em seus saltos e depois informe a média dos saltos conforme a descrição acima informada 
(retirar o melhor e o pior salto e depois calcular a média). 
Faça uso de variáveis para armazenar os saltos. 
Os saltos são informados na ordem da execução, portanto não são ordenados. 
O programa deve ser encerrado quando não for informado o nome do atleta. 
A saída do programa deve ser conforme o exemplo abaixo:
Atleta: Rodrigo Curvêllo

Primeiro Salto: 6.5 m
Segundo Salto: 6.1 m
Terceiro Salto: 6.2 m
Quarto Salto: 5.4 m
Quinto Salto: 5.3 m

Melhor salto:  6.5 m
Pior salto: 5.3 m
Média dos demais saltos: 5.9 m

Resultado final:
Rodrigo Curvêllo: 5.9 m
@type function
@author Ruan Henrique
@since 11/17/2023
/*/

user function ER046()

    local cNome   := ""
    local nSalto1 := 0
    local nSalto2 := 0
    local nSalto3 := 0
    local nSalto4 := 0
    local nSalto5 := 0
    local nMelhorSalto := 0
    local nPiorSalto   := 0
    local nMedia       := 0

    cNome := FwInputBox("Digite o nome do atleta (ou pressione Enter para encerrar): ")

    do while !Empty(cNome)

        nSalto1 := Val(FwInputBox("Digite a distância do primeiro salto (em metros): "))
        nSalto2 := Val(FwInputBox("Digite a distância do segundo salto (em metros): "))
        nSalto3 := Val(FwInputBox("Digite a distância do terceiro salto (em metros): "))
        nSalto4 := Val(FwInputBox("Digite a distância do quarto salto (em metros): "))
        nSalto5 := Val(FwInputBox("Digite a distância do quinto salto (em metros): "))

        //? Encontrar o melhor salto
        nMelhorSalto := Max(nSalto1, Max(nSalto2, Max(nSalto3, Max(nSalto4, nSalto5))))

        //? Encontrar o pior salto
        nPiorSalto := Min(nSalto1, Min(nSalto2, Min(nSalto3, Min(nSalto4, nSalto5))))

        nMedia := (nSalto1 + nSalto2 + nSalto3 + nSalto4 + nSalto5 - nMelhorSalto - nPiorSalto) / 3

        FwAlertInfo("Atleta: " + cNome)
        FwAlertInfo("Primeiro Salto: " + AllTrim(Str(nSalto1)) + " m")
        FwAlertInfo("Segundo Salto: " + AllTrim(Str(nSalto2)) + " m")
        FwAlertInfo("Terceiro Salto: " + AllTrim(Str(nSalto3)) + " m")
        FwAlertInfo("Quarto Salto: " + AllTrim(Str(nSalto4)) + " m")
        FwAlertInfo("Quinto Salto: " + AllTrim(Str(nSalto5)) + " m")
        FwAlertInfo("")
        FwAlertInfo("Melhor salto: " + AllTrim(Str(nMelhorSalto)) + " m")
        FwAlertInfo("Pior salto: " + AllTrim(Str(nPiorSalto)) + " m")
        FwAlertInfo("Média dos demais saltos: " + AllTrim(Str(nMedia)) + " m")
        FwAlertInfo("")
        FwAlertInfo("Resultado final:")
        FwAlertInfo(cNome + ": " + AllTrim(Str(nMedia)) + " m")

        cNome := FwInputBox("Digite o nome do próximo atleta (ou pressione Enter para encerrar): ")
    enddo

return
