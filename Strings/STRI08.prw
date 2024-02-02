#INCLUDE "Totvs.ch"

//? feito plano de teste com "OSSO, OVO e SUBI NO ONIBUS".

/*/{Protheus.doc} STRI08
Palíndromo. Um palíndromo é uma seqüência de caracteres cuja leitura é idêntica se feita da direita para esquerda ou vice?versa. 
Por exemplo: OSSO e OVO são palíndromos. Em textos mais complexos os espaços e pontuação são ignorados. 
A frase SUBI NO ONIBUS é o exemplo de uma frase palíndroma onde os espaços foram ignorados. Faça um programa que leia uma seqüência de caracteres, 
mostre?a e diga se é um palíndromo ou não.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI08()

    local aArea            := GetArea()
    local cFrase           := ""
    local cFraseSemEspacos := ""
    local cFraseInvertida  := ""
    local cCaractere       := ''
    local nI               := 0
    local cMensagem        := ''

    cFrase := FwInputBox("Digite uma sequência de caracteres: ")

    //? Remove espaços e pontuações da frase
    for nI := 1 to Len(cFrase)
        cCaractere := SubStr(cFrase, nI, 1)
        if cCaractere <> " " .and. cCaractere <> "," .and. cCaractere <> "." .and. ;
           cCaractere <> "?" .and. cCaractere <> "!" .and. cCaractere <> ";" .and. cCaractere <> ":"
            cFraseSemEspacos += cCaractere
        endif
    next

    //? Inverte a frase
    for nI := Len(cFraseSemEspacos) to 1 step -1
        cFraseInvertida += SubStr(cFraseSemEspacos, nI, 1)
    next

    //? Converte tudo para minúsculas para comparar sem distinção entre maiúsculas e minúsculas
    cFraseSemEspacos := AllTrim(Upper(cFraseSemEspacos))
    cFraseInvertida := AllTrim(Upper(cFraseInvertida))

    //? Verifica se é um palíndromo
    cMensagem := "Sequência original: " + cFraseSemEspacos + CRLF + ;
                      "Sequência invertida: " + cFraseInvertida + CRLF

    if cFraseSemEspacos == cFraseInvertida
        cMensagem += "É um palíndromo."
    else
        cMensagem += "Não é um palíndromo."
    endif

    FwAlertInfo(cMensagem)

    RestArea(aArea)
return
