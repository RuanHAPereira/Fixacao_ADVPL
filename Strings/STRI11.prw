#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI11
Jogo de Forca. Desenvolva um jogo da forca. O programa terá uma lista de palavras lidas de um arquivo texto e escolherá uma aleatoriamente. 
O jogador poderá errar 6 vezes antes de ser enforcado.

Digite uma letra: A
-> Você errou pela 1ª vez. Tente de novo!

Digite uma letra: O
A palavra é: _ _ _ _ O

Digite uma letra: E
A palavra é: _ E _ _ O

Digite uma letra: S
-> Você errou pela 2ª vez. Tente de novo!
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
        // Exibe a situação atual
        ExibirStatus(cPalavraAdivinhada, nTentativas)

        // Solicita ao usuário uma letra
        cLetra := Upper(FwInputBox("Digite uma letra: "))

        // Verifica se a entrada é válida
        if Len(cLetra) == 1 .and. cLetra >= "A" .and. cLetra <= "Z"
            lEncontrou := .F.

            // Verifica se a letra está na palavra
            for i := 1 to Len(cPalavra)
                if Substr(cPalavra, i, 1) == cLetra
                    lEncontrou := .T.
                    // Atualiza a palavra adivinhada com a letra correta
                    cPalavraAdivinhada := Substr(cPalavraAdivinhada, 1, i - 1) + cLetra + Substr(cPalavraAdivinhada, i + 1)
                endif
            next

            // Verifica se a palavra foi completamente adivinhada
            if Alltrim(cPalavraAdivinhada) == cPalavra
                FwAlertInfo("Você acertou a palavra: " + cPalavra, "Parabéns!" )
                exit
            endif

            // Verifica se a letra não está na palavra
            if !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Você errou!" )
            endif
        else
            FwAlertInfo("Por favor, digite uma letra válida.")
        endif
    enddo

    // Verifica se o jogador foi derrotado
    if Alltrim(cPalavraAdivinhada) <> cPalavra
        FwAlertInfo(" A palavra era: " + cPalavra, "Você foi derrotado!")
    endif
return

// Função para exibir o status atual do jogo
static function ExibirStatus(cPalavraAdivinhada, nTentativas)
    local cStatus := "Palavra adivinhada: " + cPalavraAdivinhada + Chr(13) + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
return
