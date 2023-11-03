#include 'Totvs.ch'

/*/{Protheus.doc} ER017
Fa�a um programa que calcule o fatorial de um n�mero inteiro fornecido pelo usu�rio. Ex.: 5!=5.4.3.2.1=120
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER017()

    local nNumero   := 0
    local nFatorial := 1
    local nCont     := 1

    nNumero := val(FwInputBox("Digite um n�mero inteiro para calcular o fatorial: "))

    if nNumero < 0
        FwAlertInfo("O fatorial de n�meros negativos n�o � definido.")
        //?n�o existe o fatorial de um n�mero decimal, de um n�mero negativo
    else
        
        Do While nCont <= nNumero
            nFatorial := nFatorial * nCont
            nCont := nCont + 1
        Enddo
        FwAlertInfo("Fatorial de " + AllTrim(Str(nNumero)) + "! = " + (AllTrim(Str(nFatorial))))

    endif
return


