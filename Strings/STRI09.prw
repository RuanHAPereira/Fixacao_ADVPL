#INCLUDE "Totvs.ch"

//?Testado e ok, testado em todas a valida��es e todos os digitos verificadores, tambem verifiquei valida��o para o usuario que tenha digitado
//? mais ou menos que 11 digitos
/*/{Protheus.doc} STRI09
Verifica��o de CPF. Desenvolva um programa que solicite a digita��o de um n�mero de CPF no formato xxx.xxx.xxx-xx e 
indique se � um n�mero v�lido ou inv�lido atrav�s da valida��o dos d�gitos verificadores edos caracteres de formata��o
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

    //? Remove pontos e tra�o do CPF e armazena os d�gitos em um array
    for nCont := 1 to Len(cCPF)
        cCaractere := SubStr(cCPF, nCont, 1)
        if cCaractere >= "0" .and. cCaractere <= "9"
            AAdd(aCPF, Val(cCaractere))
        endif
    next

    //? Verifica se o CPF tem 11 d�gitos
    if Len(aCPF) <> 11
        cMensagem := "CPF inv�lido. O CPF deve conter 11 d�gitos num�ricos."
    else
        //? Calcula o primeiro d�gito verificador
        for nCont := 1 to 9
            nSoma += aCPF[nCont] * (11 - nCont)
        next

        nResto := Mod(nSoma, 11)
        nDigito1 := If(nResto < 2, 0, 11 - nResto)

        //? Verifica se o primeiro d�gito verificador � igual ao informado
        if nDigito1 <> aCPF[10]
            cMensagem := "CPF inv�lido. O primeiro d�gito verificador est� incorreto."
        else
            //? Calcula o segundo d�gito verificador
            nSoma := 0
            for nCont := 1 to 10
                nSoma += aCPF[nCont] * (12 - nCont)
            next

            nResto := Mod(nSoma, 11)
            nDigito2 := If(nResto < 2, 0, 11 - nResto)

            //? Verifica se o segundo d�gito verificador � igual ao informado
            if nDigito2 <> aCPF[11]
                cMensagem := "CPF inv�lido. O segundo d�gito verificador est� incorreto."
            else
                cMensagem := "CPF v�lido."
            endif
        endif
    endif

    FwAlertInfo(cMensagem)

return
