#INCLUDE "totvs.ch"

/*/{Protheus.doc} TESTE22
Sua organiza��o acaba de contratar um estagi�rio para trabalhar no Suporte de Inform�tica, com a inten��o de fazer um 
levantamento nas sucatas encontradas nesta �rea. A primeira tarefa dele � testar todos os cerca de 200 mouses que se 
encontram l�, testando e anotando o estado de cada um deles, para verificar o que se pode aproveitar deles.
Foi requisitado que voc� desenvolva um programa para registrar este levantamento. O programa dever� receber um n�mero 
indeterminado de entradas, cada uma contendo: um n�mero de identifica��o do mouse o tipo de defeito:
necessita da esfera;
necessita de limpeza; a.necessita troca do cabo ou conector; a.quebrado ou inutilizado Uma identifica��o igual a zero
encerra o programa. Ao final o programa dever� emitir o seguinte relat�rio:
Quantidade de mouses: 100

Situa��o                        Quantidade              Percentual
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
        nCodigo := Val(FwInputBox("C�digo do defeito (0 para encerrar): "))

        If nCodigo == 0
            Exit
        EndIf

        //? Encontrar o �ndice correspondente ao tipo de defeito
        nIndex := aScan(aCondicao, {|x| x[1] == nCodigo})

        If nIndex > 0
            //? Solicitar a quantidade de mouses com defeito
            nQtd := Val(FwInputBox("Quantidade de mouses com defeito: "))
            //? Incrementar a quantidade
            aCondicao[nIndex][3] += nQtd
            //? Atualizar o total de mouses
            nTotMouses += nQtd
        Else
            FwAlertError("C�digo de defeito inv�lido.")
        EndIf
    EndDo

    cRelatorio := "Quantidade de mouses: " + AllTrim(Str(nTotMouses)) + CRLF + CRLF

    For nIndex := 1 To Len(aCondicao)
    
        aCondicao[nIndex][4] := (aCondicao[nIndex][3] / nTotMouses) * 100

        cRelatorio += AllTrim(aCondicao[nIndex][2]) + Replicate(" ", 32 - Len(aCondicao[nIndex][2])) +;
                    AllTrim(Str(aCondicao[nIndex][3])) + Replicate(" ", 25 - Len(AllTrim(Str(aCondicao[nIndex][3])))) +;
                    "correspondendo a " + AllTrim(Str(aCondicao[nIndex][4], 15, 2)) + "%" + CRLF
    Next

    FwAlertInfo(cRelatorio, "Relat�rio de Mouses")

Return
