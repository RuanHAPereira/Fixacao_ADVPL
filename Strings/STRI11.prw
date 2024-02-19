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

    local aArea       := GetArea()
    local aPalavras   := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"} //? Aqui uso array para as palavras ja que nao usei arquivo txt.
    local cPalavra    := aPalavras[Random(1, Len(aPalavras))]
    local cAdivinhada := Replicate("_", Len(cPalavra))
    local cLetra      := ""
    local lEncontrou  := .F.
    local nCont       := 0

    do while nTentativas > 0
        //? Exibe a situação atual
        ExibirStatus(cAdivinhada, nTentativas)

        //? Solicita ao usuário uma letra
        cLetra := Upper(FwInputBox("Digite uma letra: "))

        //? Verifica se a entrada é válida
        if Len(cLetra) == 1 .and. cLetra >= "A" .and. cLetra <= "Z"
            lEncontrou := .F.

            //? Verifica se a letra está na palavra
            for nCont := 1 to Len(cPalavra)
                if Substr(cPalavra, nCont, 1) == cLetra
                    lEncontrou := .T.
                    //? Atualiza a palavra adivinhada com a letra correta
                    cAdivinhada := Substr(cAdivinhada, 1, nCont - 1) + cLetra + Substr(cAdivinhada, nCont + 1)
                endif
            next

            //? Verifica se a palavra foi completamente adivinhada
            if Alltrim(cAdivinhada) == cPalavra
                FwAlertInfo("Você acertou a palavra: " + cPalavra, "Parabéns!" )
                exit
            endif

            //? Verifica se a letra não está na palavra
            if !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Você errou!" )
            endif
        else
            FwAlertInfo("Por favor, digite uma letra válida.")
        endif
    enddo

    //? Verifica se o jogador foi derrotado
    if Alltrim(cAdivinhada) <> cPalavra
        FwAlertInfo(" A palavra era: " + cPalavra, "Você foi derrotado!")
    endif

    RestArea(aArea)
return

static function ExibirStatus(cAdivinhada, nTentativas)

    local cStatus := "Palavra adivinhada: " + cAdivinhada + CRLF + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
return
