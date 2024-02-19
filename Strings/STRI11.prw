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

    local aArea       := GetArea()
    local aPalavras   := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"} //? Aqui uso array para as palavras ja que nao usei arquivo txt.
    local cPalavra    := aPalavras[Random(1, Len(aPalavras))]
    local cAdivinhada := Replicate("_", Len(cPalavra))
    local cLetra      := ""
    local lEncontrou  := .F.
    local nCont       := 0

    do while nTentativas > 0
        //? Exibe a situa��o atual
        ExibirStatus(cAdivinhada, nTentativas)

        //? Solicita ao usu�rio uma letra
        cLetra := Upper(FwInputBox("Digite uma letra: "))

        //? Verifica se a entrada � v�lida
        if Len(cLetra) == 1 .and. cLetra >= "A" .and. cLetra <= "Z"
            lEncontrou := .F.

            //? Verifica se a letra est� na palavra
            for nCont := 1 to Len(cPalavra)
                if Substr(cPalavra, nCont, 1) == cLetra
                    lEncontrou := .T.
                    //? Atualiza a palavra adivinhada com a letra correta
                    cAdivinhada := Substr(cAdivinhada, 1, nCont - 1) + cLetra + Substr(cAdivinhada, nCont + 1)
                endif
            next

            //? Verifica se a palavra foi completamente adivinhada
            if Alltrim(cAdivinhada) == cPalavra
                FwAlertInfo("Voc� acertou a palavra: " + cPalavra, "Parab�ns!" )
                exit
            endif

            //? Verifica se a letra n�o est� na palavra
            if !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Voc� errou!" )
            endif
        else
            FwAlertInfo("Por favor, digite uma letra v�lida.")
        endif
    enddo

    //? Verifica se o jogador foi derrotado
    if Alltrim(cAdivinhada) <> cPalavra
        FwAlertInfo(" A palavra era: " + cPalavra, "Voc� foi derrotado!")
    endif

    RestArea(aArea)
return

static function ExibirStatus(cAdivinhada, nTentativas)

    local cStatus := "Palavra adivinhada: " + cAdivinhada + CRLF + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
return
