#include 'totvs.ch'

/*/{Protheus.doc} VE015
Faça um programa que leia um número indeterminado de valores, correspondentes a notas,
encerrando a entrada de dados quando for informado um valor igual a -1
(que não deve ser armazenado). Após esta entrada de dados, faça:
Mostre a quantidade de valores que foram lidos;
Exiba todos os valores na ordem em que foram informados, um ao lado do outro;
Exiba todos os valores na ordem inversa à que foram informados, um abaixo do outro;
Calcule e mostre a soma dos valores;
Calcule e mostre a média dos valores;
Calcule e mostre a quantidade de valores acima da média calculada;
Calcule e mostre a quantidade de valores abaixo de sete;
Encerre o programa com uma mensagem;
@type function
@author Ruan Henrique
@since 11/28/2023
/*/

user function VE015()

    local aNotas      := {}
    local nNota       := 0
    local nSoma       := 0
    local nMedia      := 0.0
    local nAcimaMedia := 0
    local nAbaixoSete := 0
    local cMsg        := ""
    local cMsgOrdem   := ""
    local cInverso    := ""
    local nCont       := 0

    do while .T.
        nNota := Val(FwInputBox("Digite a nota (-1 para encerrar): "))
        if nNota == -1
            exit
        endif

        AAdd(aNotas, nNota)
        nSoma := nSoma + nNota
        nCont++
    enddo


    if Len(aNotas) > 0
        //? Mostra a quantidade de valores lidos
        cMsg := "Quantidade de valores lidos: " + AllTrim(Str(Len(aNotas)))
        FwAlertInfo(cMsg)

        //? Exibe os valores na ordem informada
        for nCont := 1 to Len(aNotas)
            cMsgOrdem += AllTrim(Str(aNotas[nCont]))
            if nCont < Len(aNotas)
                cMsgOrdem += ", "
            endif
        next
        FwAlertInfo("Valores informados (na ordem): " + cMsgOrdem)

        //? Exibe os valores na ordem inversa
        for nCont := Len(aNotas) to 1 step -1
            cInverso += AllTrim(Str(aNotas[nCont]))
            if nCont > 1
                cInverso += CRLF
            endif
        next
        FwAlertInfo("Valores informados (inverso):" + cInverso)

        nMedia := nSoma / Len(aNotas)
        FwAlertInfo("Soma dos valores: " + AllTrim(Str(nSoma)))
        FwAlertInfo("Média dos valores: " + AllTrim(Str(nMedia)))

        for nCont := 1 to Len(aNotas)
            if aNotas[nCont] > nMedia
                nAcimaMedia++
            endif
            if aNotas[nCont] < 7
                nAbaixoSete++
            endif
        next

        FwAlertInfo("Quantidade de valores acima da média: " + AllTrim(Str(nAcimaMedia)))
        FwAlertInfo("Quantidade de valores abaixo de sete: " + AllTrim(Str(nAbaixoSete)))
    else
        FwAlertInfo("Nenhum valor foi informado.")
    endif

    FwAlertInfo("Programa encerrado.")

return


