#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI10
Número por extenso. Escreva um programa que solicite ao usuário a digitação de um número até 99 e imprima-o na tela por extenso.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI10()

    local aArea     := GetArea()
    local nNumero   := 0
    local aUnidade  := { "Um", "Dois", "Três", "Quatro", "Cinco", "Seis", "Sete", "Oito", "Nove"}
    local aDezeEspe := {"Onze", "Doze", "Treze", "Quatorze", "Quinze", "Dezesseis", "Dezessete", "Dezoito", "Dezenove"}
    local aDezena   := {"Dez", "Vinte", "Trinta", "Quarenta", "Cinquenta", "Sessenta", "Setenta", "Oitenta", "Noventa"}
    local nDezena   := 0
    local nUnidade  := 0
    local cExtenso  := ""


    nNumero := Val(FwInputBox("Digite um número inteiro de 1 a 99: "))

    if nNumero < 1 .or. nNumero > 99
        FwAlertInfo("Por favor, digite um número entre 1 e 99.")
    else
        
        if nNumero >= 1 .and. nNumero <= 9
            cExtenso := aUnidade[nNumero]
        else
            nDezena := nNumero / 10
            nUnidade := nNumero % 10

            if nNumero >= 11 .and. nNumero <= 19
                cExtenso := aDezeEspe[nUnidade]
            else
                if nUnidade > 0
                    cExtenso := aDezena[nDezena] + " e " + aUnidade[nUnidade]
                else
                    cExtenso := aDezena[nDezena]
                endif
            endif
        endif

    endif
    FwAlertInfo("Número por extenso: " + cExtenso)
    
    RestArea(aArea)
return
