#include "totvs.ch"

//? Testado e ok.
//? ALTEREI ESSE.
/*/{Protheus.doc} FUN06
Fa�a um programa que converta da nota��o de 24 horas para a nota��o de 12 horas. Por exemplo, o programa deve 
converter 14:25 em 2:25 P.M. A entrada � dada em dois inteiros. Deve haver pelo menos duas fun��es: uma para 
fazer a convers�o e uma para a sa�da. Registre a informa��o A.M./P.M. como um valor �A� para A.M. e �P� para P.M. 
Assim, a fun��o para efetuar as convers�es ter� um par�metro formal para registrar se � A.M. ou P.M. Inclua um loop 
que permita que o usu�rio repita esse c�lculo para novos valores de entrada todas as vezes que desejar.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

User Function FUN06()

    Local aArea    := GetArea()
    Local nMinutos := 0
    Local nHora    := 0
    Local cRepetir := ''

    Do While .T.
        nHora := Val(FwInputBox("Digite a hora (formato 24 horas): "))
        nMinutos := Val(FwInputBox("Digite os minutos: "))

        //? Verifica se a hora e os minutos est�o dentro dos limites v�lidos
        If nHora >= 0 .And. nHora <= 23 .And. nMinutos >= 0 .And. nMinutos <= 59
            //? Converte e exibe a sa�da
            ExibeSaida(Conversao(nHora, nMinutos))
        Else
            //? Mensagem de erro para entrada inv�lida
            FwAlertInfo("Hora ou minutos fornecidos s�o inv�lidos. Por favor, tente novamente.")
            loop  // Volta para o in�cio do loop para nova entrada
        EndIf

        //? Pergunta se o usu�rio deseja repetir o c�lculo
        cRepetir := Upper(FwInputBox("Deseja converter outra hora? (S/N)"))
        If cRepetir <> "S"
            Exit
        EndIf
    EndDo

    RestArea(aArea)
Return

Static Function Conversao(nHora, nMinutos)

    Local cPeriodo := ""

    cPeriodo := "A"
    If nHora >= 12
        cPeriodo := "P"
    EndIf

    If nHora > 12
        nHora := nHora - 12
    EndIf

    Return {nHora, nMinutos, cPeriodo}

Return

Static Function ExibeSaida(aResultado)

    FwAlertInfo("Hora convertida: " + AllTrim(Str(aResultado[1])) + ":" + AllTrim(Str(aResultado[2])) + " " + aResultado[3] + ".")

Return
