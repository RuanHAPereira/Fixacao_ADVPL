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
User Function STRI14()

    Local aArea     := GetArea()
    Local cTexto    := FwInputBox("Digite um texto para converter para Leet Speak:")
    Local cLeetText := Leet(cTexto)
    
    FwAlertInfo("Texto em Leet Speak: " + cLeetText)

    RestArea(aArea)
return

// Fun��o para traduzir o texto para Leet Speak
Static Function Leet(cTexto)

    Local cLeetText := ""
    Local cLetra := ""
    Local nCont1 := 0
    Local lRet := .F.
    Local aMapa := {{"A", "4"}, {"E", "3"}, {"G", "9"}, {"L", "1"}, {"O", "0"}, {"S", "5"}, {"T", "7"}}
    
    For nCont1 := 1 To Len(cTexto)
        cLetra := Substr(cTexto, nCont1, 1)
        lRet := .F.

        //? Verifica se a letra est� no aMapa utilizando ASCAN
        If ASCAN(aMapa, {|x| x[1] == Upper(cLetra)}) > 0
            cLeetText += aMapa[ASCAN(aMapa, {|x| x[1] == Upper(cLetra)})][2]
            lRet := .T.
        EndIf

        If !lRet
            cLeetText += cLetra
        EndIf
    Next

return cLeetText
