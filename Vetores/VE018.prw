#include "totvs.ch"

/*/{Protheus.doc} VE018
Uma grande emissora de televis�o quer fazer uma enquete entre os seus telespectadores para saber qual o melhor jogador ap�s cada jogo. Para isto, faz-se necess�rio o desenvolvimento de um programa, que ser� utilizado pelas telefonistas, para a computa��o dos votos. Sua equipe foi contratada para desenvolver este programa, utilizando a linguagem de programa��o C++. Para computar cada voto, a telefonista digitar� um n�mero, entre 1 e 23, correspondente ao n�mero da camisa do jogador. Um n�mero de jogador igual zero, indica que a vota��o foi encerrada. Se um n�mero inv�lido for digitado, o programa deve ignor�-lo, mostrando uma breve mensagem de aviso, e voltando a pedir outro n�mero. Ap�s o final da vota��o, o programa dever� exibir:
O total de votos computados;
Os n�meos e respectivos votos de todos os jogadores que receberam votos;
O percentual de votos de cada um destes jogadores;
O n�mero do jogador escolhido como o melhor jogador da partida, juntamente com o n�mero de votos e o percentual de votos dados a ele.
Observe que os votos inv�lidos e o zero final n�o devem ser computados como votos. O resultado aparece ordenado pelo n�mero do jogador. O programa deve fazer uso de arrays. O programa dever� executar o c�lculo do percentual de cada jogador atrav�s de uma fun��o. Esta fun��o receber� dois par�metros: o n�mero de votos de um jogador e o total de votos. A fun��o calcular� o percentual e retornar� o valor calculado. Abaixo segue uma tela de exemplo. O disposi��o das informa��es deve ser o mais pr�xima poss�vel ao exemplo. Os dados s�o fict�cios e podem mudar a cada execu��o do programa. Ao final, o programa deve ainda gravar os dados referentes ao resultado da vota��o em um arquivo texto no disco, obedecendo a mesma disposi��o apresentada na tela.
Enquete: Quem foi o melhor jogador?

N�mero do jogador (0=fim): 9
N�mero do jogador (0=fim): 10
N�mero do jogador (0=fim): 9
N�mero do jogador (0=fim): 10
N�mero do jogador (0=fim): 11
N�mero do jogador (0=fim): 10
N�mero do jogador (0=fim): 50
Informe um valor entre 1 e 23 ou 0 para sair!
N�mero do jogador (0=fim): 9
N�mero do jogador (0=fim): 9
N�mero do jogador (0=fim): 0

Resultado da vota��o:

Foram computados 8 votos.

Jogador Votos           %
9               4               50,0%
10              3               37,5%
11              1               12,5%
O melhor jogador foi o n�mero 9, com 4 votos, correspondendo a 50% do total de votos.
@type function
@author Ruan Henrique
@since 12/14/2023
/*/

User Function VE018()

    local aVotos         := {}
    local nTotalVotos    := 0
    local nVoto          := 0
    local nCont          := 0
    local nMelhorJogador := 0
    local nMelhorVotos   := 0
    local nMelhorPer     := 0
    local nPercentual    := 0
    local cResultado     := ""

    Do While .T.
        nVoto := Val(FwInputBox("N�mero do jogador (0=fim): "))

        If nVoto == 0
            Exit
        EndIf

        //? Verifica se o voto � v�lido (entre 1 e 23)
        If nVoto >= 1 .And. nVoto <= 23
            nCont := aScan(aVotos, {|linha| linha[1] == nVoto})

            If nCont > 0
                //? Se encontrou, incrementa os votos
                aVotos[nCont][2]++
            Else
                //? Se n�o encontrou, adiciona ao array bidimensional
                AAdd(aVotos, {nVoto, 1})
            EndIf

            nTotalVotos++
        Else
            FwAlertInfo("Informe um valor entre 1 e 23 ou 0 para sair!")
            Loop
        EndIf
    EndDo

    cResultado += "Resultado da vota��o:" + CRLF + CRLF
    cResultado += "Foram computados " + AllTrim(Str(nTotalVotos)) + " votos." + CRLF + CRLF

    //? Exibe os votos e percentuais de cada jogador
    For nCont := 1 To Len(aVotos)
        nPercentual := (aVotos[nCont][2] / nTotalVotos) * 100
        cResultado += "Jogador " + AllTrim(Str(aVotos[nCont][1])) + " recebeu " + AllTrim(Str(aVotos[nCont][2])) + " votos, correspondendo a " + Str(nPercentual, 6, 1) + "% do total de votos." + CRLF;

        //? Verifica o melhor jogador
        If aVotos[nCont][2] > nMelhorVotos
            nMelhorJogador  := aVotos[nCont][1]
            nMelhorVotos    := aVotos[nCont][2]
            nMelhorPer      := (aVotos[nCont][2] / nTotalVotos) * 100
        EndIf
    Next

    cResultado += CRLF + "O melhor jogador foi o n�mero " + AllTrim(Str(nMelhorJogador)) + ", com " +;
                  AllTrim(Str(nMelhorVotos)) + " votos, correspondendo a " + Str(nMelhorPer, 6, 1) + "% do total de votos."

    FwAlertInfo(cResultado)

Return
