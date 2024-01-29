#INCLUDE "totvs.ch"

/*/{Protheus.doc} TESTE22
Sua organização acaba de contratar um estagiário para trabalhar no Suporte de Informática, com a intenção de fazer um 
levantamento nas sucatas encontradas nesta área. A primeira tarefa dele é testar todos os cerca de 200 mouses que se 
encontram lá, testando e anotando o estado de cada um deles, para verificar o que se pode aproveitar deles.
Foi requisitado que você desenvolva um programa para registrar este levantamento. O programa deverá receber um número 
indeterminado de entradas, cada uma contendo: um número de identificação do mouse o tipo de defeito:
necessita da esfera;
necessita de limpeza; a.necessita troca do cabo ou conector; a.quebrado ou inutilizado Uma identificação igual a zero
encerra o programa. Ao final o programa deverá emitir o seguinte relatório:
Quantidade de mouses: 100

Situação                        Quantidade              Percentual
1- necessita da esfera                  40                     40%
2- necessita de limpeza                 30                     30%
3- necessita troca do cabo ou conector  15                     15%
4- quebrado ou inutilizado              15                     15%
@type function
@author Ruan Henrique
@since 1/22/2024
/*/

User Function TESTE22()

    Local aCondicao  := {{1, "Necessita da esfera:", 0, 0},;
                        {2, "Necessita de limpeza:", 0, 0},;
                        {3, "Necessita troca do cabo ou conector:", 0, 0},;
                        {4, "Quebrado ou inutilizado:", 0, 0},;
                        {5, "Novissimo:", 0, 0}}
    Local nIndex     := 0
    Local nCodigo    := 0
    Local nQtd       := 0
    Local nTotMouses := 0
    Local cRelatorio := "" 
    local cMsg := ArrTokStr(aCondicao, "" + CRLF)

    cMsg := StrTran(cMsg, ",0,0}", "")
    cMsg := StrTran(cMsg, "{", "")
    cMsg := StrTran(cMsg, ",", "-")
    cMsg := StrTran(cMsg, '"', "")

    FwAlertInfo(cMsg + CRLF + "0-Encerrar")

    Do While .T.
        nCodigo := Val(FwInputBox("Código do defeito (0 para encerrar): "))

        If nCodigo == 0
            Exit
        EndIf

        //? Encontrar o índice correspondente ao tipo de defeito
        nIndex := aScan(aCondicao, {|x| x[1] == nCodigo})

        If nIndex > 0
            //? Solicitar a quantidade de mouses com defeito
            nQtd := Val(FwInputBox("Quantidade de mouses com defeito: "))
            //? Incrementar a quantidade
            aCondicao[nIndex][3] += nQtd
            //? Atualizar o total de mouses
            nTotMouses += nQtd
        Else
            FwAlertError("Código de defeito inválido.")
        EndIf
    EndDo

    cRelatorio := "Quantidade de mouses: " + AllTrim(Str(nTotMouses)) + CRLF + CRLF

    For nIndex := 1 To Len(aCondicao)
    
        aCondicao[nIndex][4] := (aCondicao[nIndex][3] / nTotMouses) * 100

        cRelatorio += AllTrim(aCondicao[nIndex][2]) + Replicate(" ", 32 - Len(aCondicao[nIndex][2])) +;
                    AllTrim(Str(aCondicao[nIndex][3])) + Replicate(" ", 25 - Len(AllTrim(Str(aCondicao[nIndex][3])))) +;
                    "correspondendo a " + AllTrim(Str(aCondicao[nIndex][4], 15, 2)) + "%" + CRLF
    Next

    FwAlertInfo(cRelatorio, "Relatório de Mouses")

Return
