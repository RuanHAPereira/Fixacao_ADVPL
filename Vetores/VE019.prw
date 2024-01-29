#INCLUDE "totvs.ch"

//! RETIRADA O ARRAY DE PERCENTUAIS
/*/{Protheus.doc} VE019
Uma empresa de pesquisas precisa tabular os resultados da seguinte enquete feita a um grande quantidade de 
organizações:
"Qual o melhor Sistema Operacional para uso em servidores?"

As possíveis respostas são:

1- Windows Server
2- Unix
3- Linux
4- Netware
5- Mac OS
6- Outro
Você foi contratado para desenvolver um programa que leia o resultado da enquete e informe ao final o 
resultado da mesma. O programa deverá ler os valores até ser informado o valor 0, que encerra a entrada dos 
dados. Não deverão ser aceitos valores além dos válidos para o programa (0 a 6). Os valores referentes a cada 
uma das opções devem ser armazenados num vetor. Após os dados terem sido completamente informados, o programa 
deverá calcular a percentual de cada um dos concorrentes e informar o vencedor da enquete. 
O formato da saída foi dado pela empresa, e é o seguinte:
Sistema Operacional     Votos   %
-------------------     -----   ---
Windows Server           1500   17%
Unix                     3500   40%
Linux                    3000   34%
Netware                   500    5%
Mac OS                    150    2%
Outro                     150    2%
-------------------     -----
Total                    8800

O Sistema Operacional mais votado foi o Unix, com 3500 votos, correspondendo a 40% dos votos.

@type function
@author Ruan Henrique
@since 11/30/2023
/*/

User Function VE019()

    Local aVotos := {}
    Local nTotalVotos := 0
    Local nVoto := 0
    Local nCont := 0

    // Inicializa o array com zeros para cada opção
    For nCont := 1 To 6
        AAdd(aVotos, 0)
    Next

    Do While .T.
        FwAlertInfo("Vote com o número equivalente ao Sistema Operacional:" + CRLF +;
        "1 - Windows Server" + CRLF + "2 - Unix" + CRLF + "3 - Linux" + CRLF +;
        "4 - Netware" + CRLF + "5 - Mac OS" + CRLF + "6 - Outro" + CRLF + "0 - Encerrar")

        nVoto := Val(FwInputBox("Digite o número correspondente ao Sistema Operacional (0 para encerrar): "))

        If nVoto == 0
            Exit
        EndIf

        If nVoto >= 1 .And. nVoto <= 6
        
            aVotos[nVoto]++
            nTotalVotos++
        Else
            FwAlertInfo("Número inválido. Por favor, digite um número de 0 a 6.")
        EndIf
    EndDo

    Result(aVotos, nTotalVotos)

Return

Static Function Result(aVotos, nTotalVotos)

    Local nCont := 0
    Local nPercentual := 0
    Local nVencedor := 1
    Local cResult := ""

    cResult += "Resultado da votação:" + CRLF + CRLF

    For nCont := 1 To Len(aVotos)
        If aVotos[nCont] > 0
            nPercentual := (aVotos[nCont] / nTotalVotos) * 100
            cResult += "Sistema Operacional " + SO(nCont) + ": " + AllTrim(Str(nPercentual, 6, 2)) + "%" + CRLF +;
                        "Total de votos: " + AllTrim(Str(aVotos[nCont])) + CRLF + CRLF
        EndIf
    Next

    For nCont := 2 To Len(aVotos)
        If aVotos[nCont] > aVotos[nVencedor]
            nVencedor := nCont
        EndIf
    Next

    cResult += "O Sistema Operacional mais votado foi o " + SO(nVencedor) + ", com " +;
                AllTrim(Str(aVotos[nVencedor])) + " votos, correspondendo a " +;
                AllTrim(Str((aVotos[nVencedor] / nTotalVotos) * 100, 6, 2)) + "% dos votos."

    FwAlertInfo(cResult)

Return

Static Function SO(nOpcao)

    Local cMsg := ""

    Do Case
        Case nOpcao == 1
            cMsg := "Windows Server"
        Case nOpcao == 2
            cMsg := "Unix"
        Case nOpcao == 3
            cMsg := "Linux"
        Case nOpcao == 4
            cMsg := "Netware"
        Case nOpcao == 5
            cMsg := "Mac OS"
        Case nOpcao == 6
            cMsg := "Outro"
        Otherwise
            cMsg := "Desconhecido"
    EndCase

Return(cMsg)

