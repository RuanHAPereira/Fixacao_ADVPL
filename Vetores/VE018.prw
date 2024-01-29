#include "totvs.ch"

/*/{Protheus.doc} VE018
Uma grande emissora de televisão quer fazer uma enquete entre os seus telespectadores para saber qual o melhor jogador após cada jogo. Para isto, faz-se necessário o desenvolvimento de um programa, que será utilizado pelas telefonistas, para a computação dos votos. Sua equipe foi contratada para desenvolver este programa, utilizando a linguagem de programação C++. Para computar cada voto, a telefonista digitará um número, entre 1 e 23, correspondente ao número da camisa do jogador. Um número de jogador igual zero, indica que a votação foi encerrada. Se um número inválido for digitado, o programa deve ignorá-lo, mostrando uma breve mensagem de aviso, e voltando a pedir outro número. Após o final da votação, o programa deverá exibir:
O total de votos computados;
Os númeos e respectivos votos de todos os jogadores que receberam votos;
O percentual de votos de cada um destes jogadores;
O número do jogador escolhido como o melhor jogador da partida, juntamente com o número de votos e o percentual de votos dados a ele.
Observe que os votos inválidos e o zero final não devem ser computados como votos. O resultado aparece ordenado pelo número do jogador. O programa deve fazer uso de arrays. O programa deverá executar o cálculo do percentual de cada jogador através de uma função. Esta função receberá dois parâmetros: o número de votos de um jogador e o total de votos. A função calculará o percentual e retornará o valor calculado. Abaixo segue uma tela de exemplo. O disposição das informações deve ser o mais próxima possível ao exemplo. Os dados são fictícios e podem mudar a cada execução do programa. Ao final, o programa deve ainda gravar os dados referentes ao resultado da votação em um arquivo texto no disco, obedecendo a mesma disposição apresentada na tela.
Enquete: Quem foi o melhor jogador?

Número do jogador (0=fim): 9
Número do jogador (0=fim): 10
Número do jogador (0=fim): 9
Número do jogador (0=fim): 10
Número do jogador (0=fim): 11
Número do jogador (0=fim): 10
Número do jogador (0=fim): 50
Informe um valor entre 1 e 23 ou 0 para sair!
Número do jogador (0=fim): 9
Número do jogador (0=fim): 9
Número do jogador (0=fim): 0

Resultado da votação:

Foram computados 8 votos.

Jogador Votos           %
9               4               50,0%
10              3               37,5%
11              1               12,5%
O melhor jogador foi o número 9, com 4 votos, correspondendo a 50% do total de votos.
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
        nVoto := Val(FwInputBox("Número do jogador (0=fim): "))

        If nVoto == 0
            Exit
        EndIf

        //? Verifica se o voto é válido (entre 1 e 23)
        If nVoto >= 1 .And. nVoto <= 23
            nCont := aScan(aVotos, {|linha| linha[1] == nVoto})

            If nCont > 0
                //? Se encontrou, incrementa os votos
                aVotos[nCont][2]++
            Else
                //? Se não encontrou, adiciona ao array bidimensional
                AAdd(aVotos, {nVoto, 1})
            EndIf

            nTotalVotos++
        Else
            FwAlertInfo("Informe um valor entre 1 e 23 ou 0 para sair!")
            Loop
        EndIf
    EndDo

    cResultado += "Resultado da votação:" + CRLF + CRLF
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

    cResultado += CRLF + "O melhor jogador foi o número " + AllTrim(Str(nMelhorJogador)) + ", com " +;
                  AllTrim(Str(nMelhorVotos)) + " votos, correspondendo a " + Str(nMelhorPer, 6, 1) + "% do total de votos."

    FwAlertInfo(cResultado)

Return
