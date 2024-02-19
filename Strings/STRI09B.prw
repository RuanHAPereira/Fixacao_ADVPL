#include "Totvs.ch"

User Function STRI09B()

    Local cCPF       := ""    
    Local nI         := 0     
    Local aCPF       := {}    
    Local nSoma1     := 0     
    Local nSoma2     := 0     
    Local nDigito    := 0     
    Local nDezena    := 0     
    Local nResto     := 0     
    Local cMensagem  := ""    
    Local cCaractere := ""    

    cCPF := FwInputBox("Digite o CPF no formato xxx.xxx.xxx-xx: ")

    //? Remove caracteres de formatação e armazena apenas os números (. e /)
    For nI := 1 To Len(cCPF)
        cCaractere := SubStr(cCPF, nI, 1)
        If Asc(cCaractere) >= 48 .And. Asc(cCaractere) <= 57
            AAdd(aCPF, Val(cCaractere)) //? Somente os digitos sao adcionados 
        EndIf
    Next

    //? Verifica se o CPF possui 11 dígitos numéricos
    If Len(aCPF) <> 11
        cMensagem := "CPF inválido. O CPF deve conter 11 dígitos numéricos."
    Else
        //? Primeira regra: calcula a soma dos produtos dos nove primeiros dígitos do CPF
        For nI := 1 To 9
            nSoma1 += aCPF[nI] * (11 - nI)
        Next

        //? Segunda regra: calcula o primeiro dígito verificador
        nResto := Mod(nSoma1, 11)
        nDigito := If(nResto < 2, 0, 11 - nResto)

        //? Terceira regra: calcula a soma dos produtos dos dez primeiros dígitos do CPF, incluindo o primeiro dígito verificador
        nSoma2 := nDigito * 2
        For nI := 1 To 9
            nSoma2 += aCPF[nI] * (12 - nI)
        Next

        //? Quarta regra: calcula o segundo dígito verificador
        nResto := Mod(nSoma2, 11)
        nDezena := If(nResto < 2, 0, 11 - nResto)

        If nDigito = aCPF[10] .And. nDezena = aCPF[11]
            cMensagem := "CPF " + cCPF + " válido."
        Else
            cMensagem := "CPF " + cCPF + " inválido."
        EndIf
    EndIf

    FwAlertInfo(cMensagem)

Return
