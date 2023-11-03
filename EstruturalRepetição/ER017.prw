#include 'Totvs.ch'

/*/{Protheus.doc} ER017
Faça um programa que calcule o fatorial de um número inteiro fornecido pelo usuário. Ex.: 5!=5.4.3.2.1=120
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER017()

    local nNumero   := 0
    local nFatorial := 1
    local nCont     := 1

    nNumero := val(FwInputBox("Digite um número inteiro para calcular o fatorial: "))

    if nNumero < 0
        FwAlertInfo("O fatorial de números negativos não é definido.")
        //?não existe o fatorial de um número decimal, de um número negativo
    else
        
        Do While nCont <= nNumero
            nFatorial := nFatorial * nCont
            nCont := nCont + 1
        Enddo
        FwAlertInfo("Fatorial de " + AllTrim(Str(nNumero)) + "! = " + (AllTrim(Str(nFatorial))))

    endif
return


