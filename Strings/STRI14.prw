#INCLUDE "Totvs.ch"

//?Testado e ok.
user function STRI14()

    local cTexto := ""
    local cLeetText := Leet(cTexto)
    
    cTexto := FwInputBox("Digite um texto para converter para Leet Speak:")

    FwAlertInfo("Texto em Leet Speak: " + cLeetText)
return

// Função para traduzir o texto para Leet Speak
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

        //? Verifica se a letra está no mapeamento
        for nCont2 := 1 to Len(aMapa)
            if aMapa[nCont2][1] == Upper(cLetra)
                cLeetText += aMapa[nCont2][2]
                lRet := .T.
                exit
            endif
        next

        //? Se a letra não estiver no mapeamento, mantenha-a inalterada
        if !lRet
            cLeetText += cLetra
        endif
    next

return cLeetText
