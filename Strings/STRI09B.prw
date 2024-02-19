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

    //? Remove caracteres de formata��o e armazena apenas os n�meros (. e /)
    For nI := 1 To Len(cCPF)
        cCaractere := SubStr(cCPF, nI, 1)
        If Asc(cCaractere) >= 48 .And. Asc(cCaractere) <= 57
            AAdd(aCPF, Val(cCaractere)) //? Somente os digitos sao adcionados 
        EndIf
    Next

    //? Verifica se o CPF possui 11 d�gitos num�ricos
    If Len(aCPF) <> 11
        cMensagem := "CPF inv�lido. O CPF deve conter 11 d�gitos num�ricos."
    Else
        //? Primeira regra: calcula a soma dos produtos dos nove primeiros d�gitos do CPF
        For nI := 1 To 9
            nSoma1 += aCPF[nI] * (11 - nI)
        Next

        //? Segunda regra: calcula o primeiro d�gito verificador
        nResto := Mod(nSoma1, 11)
        nDigito := If(nResto < 2, 0, 11 - nResto)

        //? Terceira regra: calcula a soma dos produtos dos dez primeiros d�gitos do CPF, incluindo o primeiro d�gito verificador
        nSoma2 := nDigito * 2
        For nI := 1 To 9
            nSoma2 += aCPF[nI] * (12 - nI)
        Next

        //? Quarta regra: calcula o segundo d�gito verificador
        nResto := Mod(nSoma2, 11)
        nDezena := If(nResto < 2, 0, 11 - nResto)

        If nDigito = aCPF[10] .And. nDezena = aCPF[11]
            cMensagem := "CPF " + cCPF + " v�lido."
        Else
            cMensagem := "CPF " + cCPF + " inv�lido."
        EndIf
    EndIf

    FwAlertInfo(cMensagem)

Return
