#INCLUDE "Totvs.ch"

//?Testado e ok, testado em todas a validações e todos os digitos verificadores, tambem verifiquei validação para o usuario que tenha digitado
//? mais ou menos que 11 digitos
/*/{Protheus.doc} STRI09
Verificação de CPF. Desenvolva um programa que solicite a digitação de um número de CPF no formato xxx.xxx.xxx-xx e 
indique se é um número válido ou inválido através da validação dos dígitos verificadores edos caracteres de formatação
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI09()

    local cCPF       := ""
    local aCPF       := {}
    local cCaractere := ""
    local nCont      := 0
    local nSoma      := 0
    local nResto     := 0
    local nDigito1   := 0
    local nDigito2   := 0
    local cMensagem  := ""

    cCPF := FwInputBox("Digite o CPF no formato xxx.xxx.xxx-xx: ")

    //? Remove pontos e traço do CPF e armazena os dígitos em um array
    for nCont := 1 to Len(cCPF)
        cCaractere := SubStr(cCPF, nCont, 1)
        if cCaractere >= "0" .and. cCaractere <= "9"
            AAdd(aCPF, Val(cCaractere))
        endif
    next

    //? Verifica se o CPF tem 11 dígitos
    if Len(aCPF) <> 11
        cMensagem := "CPF inválido. O CPF deve conter 11 dígitos numéricos."
    else
        //? Calcula o primeiro dígito verificador
        for nCont := 1 to 9
            nSoma += aCPF[nCont] * (11 - nCont)
        next

        nResto := Mod(nSoma, 11)
        nDigito1 := If(nResto < 2, 0, 11 - nResto)

        //? Verifica se o primeiro dígito verificador é igual ao informado
        if nDigito1 <> aCPF[10]
            cMensagem := "CPF inválido. O primeiro dígito verificador está incorreto."
        else
            //? Calcula o segundo dígito verificador
            nSoma := 0
            for nCont := 1 to 10
                nSoma += aCPF[nCont] * (12 - nCont)
            next

            nResto := Mod(nSoma, 11)
            nDigito2 := If(nResto < 2, 0, 11 - nResto)

            //? Verifica se o segundo dígito verificador é igual ao informado
            if nDigito2 <> aCPF[11]
                cMensagem := "CPF inválido. O segundo dígito verificador está incorreto."
            else
                cMensagem := "CPF válido."
            endif
        endif
    endif

    FwAlertInfo(cMensagem)

return
