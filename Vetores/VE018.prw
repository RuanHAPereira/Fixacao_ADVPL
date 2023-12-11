#include "totvs.ch"

/*/{Protheus.doc} VE018
Uma grande emissora de televis�o quer fazer uma enquete entre os seus telespectadores para saber qual o 
melhor jogador ap�s cada jogo. Para isto, faz-se necess�rio o desenvolvimento de um programa, que ser� 
utilizado pelas telefonistas, para a computa��o dos votos. Sua equipe foi contratada para desenvolver 
este programa, utilizando a linguagem de programa��o C++. Para computar cada voto, a telefonista digitar� 
um n�mero, entre 1 e 23, correspondente ao n�mero da camisa do jogador. Um n�mero de jogador igual zero, 
indica que a vota��o foi encerrada. Se um n�mero inv�lido for digitado, o programa deve ignor�-lo, mostrando 
uma breve mensagem de aviso, e voltando a pedir outro n�mero. Ap�s o final da vota��o, o programa dever� exibir:
O total de votos computados;
Os n�meos e respectivos votos de todos os jogadores que receberam votos;
O percentual de votos de cada um destes jogadores;
O n�mero do jogador escolhido como o melhor jogador da partida, juntamente com o n�mero de votos e o 
percentual de votos dados a ele.
Observe que os votos inv�lidos e o zero final n�o devem ser computados como votos. O resultado aparece 
ordenado pelo n�mero do jogador. O programa deve fazer uso de arrays. O programa dever� executar o c�lculo do 
percentual de cada jogador atrav�s de uma fun��o. Esta fun��o receber� dois par�metros: o n�mero de votos 
de um jogador e o total de votos. A fun��o calcular� o percentual e retornar� o valor calculado. 
Abaixo segue uma tela de exemplo. O disposi��o das informa��es deve ser o mais pr�xima poss�vel ao exemplo. 
Os dados s�o fict�cios e podem mudar a cada execu��o do programa. Ao final, o programa deve ainda gravar os 
dados referentes ao resultado da vota��o em um arquivo texto no disco, obedecendo a mesma disposi��o 
apresentada na tela.
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
@since 11/30/2023
/*/

user function VE018()

    local aVotos      := {} 
    local nTotalVotos := 0  
    local nCamisa     := 0
    //local nCont       := 0
    local nIdx        := 0
   // local lEncontrado := .F.

    do while .T.
        nCamisa := Val(FwInputBox("N�mero da camisa do jogador (0 = fim): "))

        if nCamisa == 0
            exit
        endif

        if nCamisa >= 1 .and. nCamisa <= 23
            nIdx := AScan(aVotos, {nCamisa, 0}, .F., .T.)
            
            if nIdx > 0
                aVotos[nIdx][2]++
            else
                AAdd(aVotos, {nCamisa, 1})
            endif
            
            nTotalVotos++
        else
            FwAlertInfo("N�mero da camisa inv�lido. Tente novamente!")
        endif
    enddo

    FwAlertInfo("Resultado da vota��o:" + CRLF + Enquete(aVotos, nTotalVotos))

return


static function Enquete(aVotos, nTotalVotos)

    local nMelhorJogador := 1
    local nMelhorVotos := aVotos[1][2]
    local nPercentual := 0
    local nJogador := 0
    local cResult := "Foram computados " + AllTrim(Str(nTotalVotos)) + " votos." + CRLF + CRLF + "Jogadores que receberam votos:" + CRLF

    for nJogador := 1 to Len(aVotos)
        if aVotos[nJogador][2] > 0
            nPercentual := (aVotos[nJogador][2] / nTotalVotos) * 100
            cResult += "Camisa " + AllTrim(Str(aVotos[nJogador][1])) + ": " + AllTrim(Str(aVotos[nJogador][2])) + " votos, " + AllTrim(Str(nPercentual, 6, 2)) + "%" + CRLF
        endif
    next

    // Encontrar o melhor jogador
    for nJogador := 2 to Len(aVotos)
        if aVotos[nJogador][2] > nMelhorVotos
            nMelhorJogador := nJogador
            nMelhorVotos := aVotos[nJogador][2]
        endif
    next

    cResult += CRLF + "O melhor jogador foi o jogador de camisa " + AllTrim(Str(aVotos[nMelhorJogador][1])) +;
    ", com " + AllTrim(Str(nMelhorVotos)) + " votos, correspondendo a " + AllTrim(Str((nMelhorVotos / nTotalVotos) * 100, 6, 2)) +;
    "% do total de votos."

return cResult

