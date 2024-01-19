#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI11
Jogo de Forca. Desenvolva um jogo da forca. O programa ter� uma lista de palavras lidas de um arquivo texto e escolher� uma aleatoriamente. 
O jogador poder� errar 6 vezes antes de ser enforcado.

Digite uma letra: A
-> Voc� errou pela 1� vez. Tente de novo!

Digite uma letra: O
A palavra �: _ _ _ _ O

Digite uma letra: E
A palavra �: _ E _ _ O

Digite uma letra: S
-> Voc� errou pela 2� vez. Tente de novo!
@type function
@author Ruan Henrique
@since 1/17/2024
/*/

user function STRI11()

    local aPalavras := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"}
    local cPalavra := aPalavras[Random(1, Len(aPalavras))]
    local cPalavraAdivinhada := Replicate("_", Len(cPalavra))
    local nTentativas := 6
    local cLetra := ""
    local lEncontrou := .F.
    local i := 0

    // Loop principal do jogo
    do while nTentativas > 0
        // Exibe a situa��o atual
        ExibirStatus(cPalavraAdivinhada, nTentativas)

        // Solicita ao usu�rio uma letra
        cLetra := Upper(FwInputBox("Digite uma letra: "))

        // Verifica se a entrada � v�lida
        if Len(cLetra) == 1 .and. cLetra >= "A" .and. cLetra <= "Z"
            lEncontrou := .F.

            // Verifica se a letra est� na palavra
            for i := 1 to Len(cPalavra)
                if Substr(cPalavra, i, 1) == cLetra
                    lEncontrou := .T.
                    // Atualiza a palavra adivinhada com a letra correta
                    cPalavraAdivinhada := Substr(cPalavraAdivinhada, 1, i - 1) + cLetra + Substr(cPalavraAdivinhada, i + 1)
                endif
            next

            // Verifica se a palavra foi completamente adivinhada
            if Alltrim(cPalavraAdivinhada) == cPalavra
                FwAlertInfo("Voc� acertou a palavra: " + cPalavra, "Parab�ns!" )
                exit
            endif

            // Verifica se a letra n�o est� na palavra
            if !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Voc� errou!" )
            endif
        else
            FwAlertInfo("Por favor, digite uma letra v�lida.")
        endif
    enddo

    // Verifica se o jogador foi derrotado
    if Alltrim(cPalavraAdivinhada) <> cPalavra
        FwAlertInfo(" A palavra era: " + cPalavra, "Voc� foi derrotado!")
    endif
return

// Fun��o para exibir o status atual do jogo
static function ExibirStatus(cPalavraAdivinhada, nTentativas)
    local cStatus := "Palavra adivinhada: " + cPalavraAdivinhada + Chr(13) + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
return