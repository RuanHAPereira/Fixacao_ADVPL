#INCLUDE "Totvs.ch"

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

user function STRI13()

    local aPalavras := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"}
    local cPalavra := EscolherPalavraAleatoria(aPalavras)
    local cPalavraAdivinhada := Replicate("_", Len(cPalavra))
    local nTentativas := 6
    local cLetra := ""
    local lEncontrou := .F.
    local i := 0

    // Embaralha a palavra inicial
    cPalavra := EmbaralharPalavra(cPalavra)

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
                FwAlertInfo("A palavra de forma correta é: " + cPalavra)
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

// Função para escolher uma palavra aleatória da lista
Static Function EscolherPalavraAleatoria(aPalavras)
    Return aPalavras[Random(1, Len(aPalavras))]
Return

// Função para embaralhar uma palavra
Static Function EmbaralharPalavra(cPalavra)
    Local aLetras := {}
    Local i := 0
    Local cPalaEmbar := ""

    For i := 1 To Len(cPalavra)
        AAdd(aLetras, Substr(cPalavra, i, 1))
    Next

    aLetras := Embararray(aLetras)

    For i := 1 To Len(aLetras)
        cPalaEmbar += aLetras[i]
    Next

Return cPalaEmbar


// Função para exibir o status atual do jogo
Static Function ExibirStatus(cPalavraAdivinhada, nTentativas)
    Local cStatus := "Palavra adivinhada: " + cPalavraAdivinhada + CRLF + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
Return

// Função para embaralhar um array
Static Function Embararray(aArray)
    Local i := 0
    Local n := 0
    Local temp := ""

    For i := Len(aArray) To 2 Step -1
        n := Random(1, i)
        temp := aArray[i]
        aArray[i] := aArray[n]
        aArray[n] := temp
    Next

Return aArray

