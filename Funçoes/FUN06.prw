#include "totvs.ch"

//? Testado e ok.
//? ALTEREI ESSE.
/*/{Protheus.doc} FUN06
Faça um programa que converta da notação de 24 horas para a notação de 12 horas. Por exemplo, o programa deve 
converter 14:25 em 2:25 P.M. A entrada é dada em dois inteiros. Deve haver pelo menos duas funções: uma para 
fazer a conversão e uma para a saída. Registre a informação A.M./P.M. como um valor ‘A’ para A.M. e ‘P’ para P.M. 
Assim, a função para efetuar as conversões terá um parâmetro formal para registrar se é A.M. ou P.M. Inclua um loop 
que permita que o usuário repita esse cálculo para novos valores de entrada todas as vezes que desejar.
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

        //? Verifica se a hora e os minutos estão dentro dos limites válidos
        If nHora >= 0 .And. nHora <= 23 .And. nMinutos >= 0 .And. nMinutos <= 59
            //? Converte e exibe a saída
            ExibeSaida(Conversao(nHora, nMinutos))
        Else
            //? Mensagem de erro para entrada inválida
            FwAlertInfo("Hora ou minutos fornecidos são inválidos. Por favor, tente novamente.")
            loop  // Volta para o início do loop para nova entrada
        EndIf

        //? Pergunta se o usuário deseja repetir o cálculo
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
