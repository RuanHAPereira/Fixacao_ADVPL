#INCLUDE "Totvs.ch"

//? feito plano de teste com "OSSO, OVO e SUBI NO ONIBUS".

/*/{Protheus.doc} STRI08
Pal�ndromo. Um pal�ndromo � uma seq��ncia de caracteres cuja leitura � id�ntica se feita da direita para esquerda ou vice?versa. 
Por exemplo: OSSO e OVO s�o pal�ndromos. Em textos mais complexos os espa�os e pontua��o s�o ignorados. 
A frase SUBI NO ONIBUS � o exemplo de uma frase pal�ndroma onde os espa�os foram ignorados. Fa�a um programa que leia uma seq��ncia de caracteres, 
mostre?a e diga se � um pal�ndromo ou n�o.
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

    cFrase := FwInputBox("Digite uma sequ�ncia de caracteres: ")

    //? Remove espa�os e pontua��es da frase
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

    //? Converte tudo para min�sculas para comparar sem distin��o entre mai�sculas e min�sculas
    cFraseSemEspacos := AllTrim(Upper(cFraseSemEspacos))
    cFraseInvertida := AllTrim(Upper(cFraseInvertida))

    //? Verifica se � um pal�ndromo
    cMensagem := "Sequ�ncia original: " + cFraseSemEspacos + CRLF + ;
                      "Sequ�ncia invertida: " + cFraseInvertida + CRLF

    if cFraseSemEspacos == cFraseInvertida
        cMensagem += "� um pal�ndromo."
    else
        cMensagem += "N�o � um pal�ndromo."
    endif

    FwAlertInfo(cMensagem)

    RestArea(aArea)
return
