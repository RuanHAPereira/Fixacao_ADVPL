#INCLUDE "Totvs.ch"


/*/{Protheus.doc} STRI14
Leet spek generator. Leet � uma forma de se escrever o alfabeto latino usando outros s�mbolos em lugar das letras, como n�meros por exemplo. 
A pr�pria palavra leet admite muitas varia��es, como l33t ou 1337. O uso do leet reflete uma subcultura relacionada ao mundo dos jogos de 
computador e internet, sendo muito usada para confundir os iniciantes e afirmar-se como parte de um grupo. Pesquise sobre as principais formas de 
traduzir as letras. Depois, fa�a um programa que pe�a uma texto e transforme-o para a grafia leet speak.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

//?Testado e ok.
user function STRI14()

    local aArea     := GetArea()
    local cTexto    := ""
    local cLeetText := Leet(cTexto)
    
    cTexto := FwInputBox("Digite um texto para converter para Leet Speak:")

    FwAlertInfo("Texto em Leet Speak: " + cLeetText)

    RestArea(aArea)
return

//? Fun��o para traduzir o texto para Leet Speak
static function Leet(cTexto)

    local cLeetText := ""
    local cLetra := ""
    local nCont1 := 0
    local nCont2 := 0
    local lRet := .T.
    //? Mapeamento de letras para Leet Speak
    local aMapa := {{"A", "4"}, {"E", "3"}, {"G", "9"}, {"L", "1"}, {"O", "0"}, {"S", "5"}, {"T", "7"}}
    
    //? Converte cada letra do texto para Leet Speak
    for nCont1 := 1 to Len(cTexto)
        cLetra := Substr(cTexto, nCont1, 1)
        lRet := .F.

        //? Verifica se a letra est� no mapeamento
        for nCont2 := 1 to Len(aMapa)
            if aMapa[nCont2][1] == Upper(cLetra)
                cLeetText += aMapa[nCont2][2]
                lRet := .T.
                exit
            endif
        next

        //? Se a letra n�o estiver no mapeamento, mantenha-a inalterada
        if !lRet
            cLeetText += cLetra
        endif
    next

return cLeetText
