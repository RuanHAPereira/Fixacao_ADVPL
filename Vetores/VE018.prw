#include "totvs.ch"

/*/{Protheus.doc} VE018
Uma grande emissora de televisão quer fazer uma enquete entre os seus telespectadores para saber qual o 
melhor jogador após cada jogo. Para isto, faz-se necessário o desenvolvimento de um programa, que será 
utilizado pelas telefonistas, para a computação dos votos. Sua equipe foi contratada para desenvolver 
este programa, utilizando a linguagem de programação C++. Para computar cada voto, a telefonista digitará 
um número, entre 1 e 23, correspondente ao número da camisa do jogador. Um número de jogador igual zero, 
indica que a votação foi encerrada. Se um número inválido for digitado, o programa deve ignorá-lo, mostrando 
uma breve mensagem de aviso, e voltando a pedir outro número. Após o final da votação, o programa deverá exibir:
O total de votos computados;
Os númeos e respectivos votos de todos os jogadores que receberam votos;
O percentual de votos de cada um destes jogadores;
O número do jogador escolhido como o melhor jogador da partida, juntamente com o número de votos e o 
percentual de votos dados a ele.
Observe que os votos inválidos e o zero final não devem ser computados como votos. O resultado aparece 
ordenado pelo número do jogador. O programa deve fazer uso de arrays. O programa deverá executar o cálculo do 
percentual de cada jogador através de uma função. Esta função receberá dois parâmetros: o número de votos 
de um jogador e o total de votos. A função calculará o percentual e retornará o valor calculado. 
Abaixo segue uma tela de exemplo. O disposição das informações deve ser o mais próxima possível ao exemplo. 
Os dados são fictícios e podem mudar a cada execução do programa. Ao final, o programa deve ainda gravar os 
dados referentes ao resultado da votação em um arquivo texto no disco, obedecendo a mesma disposição 
apresentada na tela.
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
        nCamisa := Val(FwInputBox("Número da camisa do jogador (0 = fim): "))

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
            FwAlertInfo("Número da camisa inválido. Tente novamente!")
        endif
    enddo

    FwAlertInfo("Resultado da votação:" + CRLF + Enquete(aVotos, nTotalVotos))

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

