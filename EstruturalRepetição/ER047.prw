#include 'Totvs.ch'

/*/{Protheus.doc} ER047
Em uma competi��o de gin�stica, cada atleta recebe votos de sete jurados. 
A melhor e a pior nota s�o eliminadas. A sua nota fica sendo a m�dia dos votos restantes. 
Voc� deve fazer um programa que receba o nome do ginasta e as notas dos sete jurados 
alcan�adas pelo atleta em sua apresenta��o e depois informe a sua m�dia, 
conforme a descri��o acima informada (retirar o melhor e o pior salto e depois calcular a m�dia com as notas restantes). 
As notas n�o s�o informadas ordenadas. 
Um exemplo de sa�da do programa deve ser conforme o exemplo abaixo:

Atleta: Aparecido Parente
Nota: 9.9
Nota: 7.5
Nota: 9.5
Nota: 8.5
Nota: 9.0
Nota: 8.5
Nota: 9.7

Resultado final:
Atleta: Aparecido Parente
Melhor nota: 9.9
Pior nota: 7.5
M�dia: 9,04

@type function
@author Ruan Henrique
@since 11/20/2023
/*/

user function ER047()

    local cNome  := ""
    local nNota1 := 0
    local nNota2 := 0
    local nNota3 := 0
    local nNota4 := 0
    local nNota5 := 0
    local nNota6 := 0
    local nNota7 := 0
    local nMelhorNota := 0
    local nPiorNota   := 0
    local nMedia      := 0

    cNome := FwInputBox("Digite o nome do ginasta (ou pressione Enter para encerrar): ")

    do while !Empty(cNome)

        nNota1 := Val(FwInputBox("Digite a nota do primeiro jurado: "))
        nNota2 := Val(FwInputBox("Digite a nota do segundo jurado: "))
        nNota3 := Val(FwInputBox("Digite a nota do terceiro jurado: "))
        nNota4 := Val(FwInputBox("Digite a nota do quarto jurado: "))
        nNota5 := Val(FwInputBox("Digite a nota do quinto jurado: "))
        nNota6 := Val(FwInputBox("Digite a nota do sexto jurado: "))
        nNota7 := Val(FwInputBox("Digite a nota do s�timo jurado: "))

        nMelhorNota := Max(nNota1, Max(nNota2, Max(nNota3, Max(nNota4, Max(nNota5, Max(nNota6, nNota7))))))

        nPiorNota := Min(nNota1, Min(nNota2, Min(nNota3, Min(nNota4, Min(nNota5, Min(nNota6, nNota7))))))

        nMedia := (nNota1 + nNota2 + nNota3 + nNota4 + nNota5 + nNota6 + nNota7 - nMelhorNota - nPiorNota) / 5

        FwAlertInfo("Atleta: " + cNome + CRLF +;
        "Melhor nota: " + AllTrim(Str(nMelhorNota)) + CRLF+;
        "Pior nota: " + AllTrim(Str(nPiorNota)) + CRLF +;
        "M�dia: " + Transform(nMedia, "999,999.99"))

        cNome := FwInputBox("Digite o nome do pr�ximo ginasta (ou pressione Enter para encerrar): ")
    enddo

return
