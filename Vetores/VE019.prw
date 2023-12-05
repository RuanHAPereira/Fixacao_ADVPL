#INCLUDE "totvs.ch"

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

#INCLUDE "totvs.ch"

user function VE019()

    local aVotos      := {}
    local nTotalVotos := 0
    local nVoto       := 0
    local nCont       := 0

    // Inicializa o array com zeros
    for nCont := 1 to 6
        AAdd(aVotos, 0)
    next

    do while .T.
        FwAlertInfo("Vote com o numero equivalente ao SO." + CRLF +;
        "1 - Windows Server" + CRLF + "2 - Unix" + CRLF + "3 - Linux" + CRLF +;
        "4 - Netware" + CRLF + "5 - Mac OS" + CRLF + "6 - Outros" + CRLF + "0 - Sair")

        nVoto := Val(FwInputBox("Digite o número correspondente ao melhor Sistema Operacional(0 para encerrar): "))

        if nVoto == 0
            exit
        endif

        if nVoto >= 1 .and. nVoto <= 6
            aVotos[nVoto]++
            nTotalVotos++
        else
            FwAlertInfo("Número inválido. Por favor, digite um número de 0 a 6.")
        endif
    enddo

    FwAlertInfo(Result(aVotos, nTotalVotos))

return

static function Result(aVotos, nTotalVotos)

    local nCont       := 0
    local nPercentual := 0
    local nVencedor   := 1
    local cResult     := ""

    cResult += "Sistema Operacional   Votos   %" + CRLF
    cResult += "---------------------  -----  ---" + CRLF

    for nCont := 1 to Len(aVotos)
        if aVotos[nCont] > 0
            nPercentual := (aVotos[nCont] / nTotalVotos) * 100
            cResult += SO(nCont) + AllTrim(Str(aVotos[nCont])) + "   " + AllTrim(Str(nPercentual, 6, 2)) + "%" + CRLF

            // Verifica o vencedor
            if aVotos[nCont] > aVotos[nVencedor]
                nVencedor := nCont
            endif
        endif
    next

    cResult += "---------------------  -----" + CRLF
    cResult += "Total                  " + AllTrim(Str(nTotalVotos)) + CRLF + CRLF
    cResult += "O Sistema Operacional mais votado foi o " + SO(nVencedor) + ", com " +;
    AllTrim(Str(aVotos[nVencedor])) + " votos, correspondendo a " + AllTrim(Str(nPercentual, 6, 2)) + "% dos votos."

return(cResult)

static function SO(nOpcao)

    local cMsg := ''

    // Função para retornar o nome do Sistema Operacional de acordo com a opção
    do case
        case nOpcao == 1
            cMsg := "Windows Server"
        case nOpcao == 2
            cMsg := "Unix"
        case nOpcao == 3
            cMsg := "Linux"
        case nOpcao == 4
            cMsg := "Netware"
        case nOpcao == 5
            cMsg := "Mac OS"
        case nOpcao == 6
            cMsg := "Outro"
        otherwise
            cMsg := "Desconhecido"
    endcase

return(cMsg)


