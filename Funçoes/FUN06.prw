#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN06
Fa�a um programa que converta da nota��o de 24 horas para a nota��o de 12 horas. Por exemplo, o programa deve 
converter 14:25 em 2:25 P.M. A entrada � dada em dois inteiros. Deve haver pelo menos duas fun��es: uma para 
fazer a convers�o e uma para a sa�da. Registre a informa��o A.M./P.M. como um valor �A� para A.M. e �P� para P.M. 
Assim, a fun��o para efetuar as convers�es ter� um par�metro formal para registrar se � A.M. ou P.M. Inclua um loop 
que permita que o usu�rio repita esse c�lculo para novos valores de entrada todas as vezes que desejar.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN06()

    local nMinutos := 0
    local nHora    := 0
    local cRepetir := ''

    do while .T.
        nHora := Val(FwInputBox("Digite a hora (formato 24 horas): "))
        nMinutos := Val(FwInputBox("Digite os minutos: "))

        // Converte e exibe a sa�da
        exibeSaida(Conversao(nHora, nMinutos))

        // Pergunta se o usu�rio deseja repetir o c�lculo
        cRepetir := Upper(FwInputBox("Deseja converter outra hora? (S/N)"))
        if cRepetir <> "S"
            exit
        endif
    enddo

return

static function Conversao(nHora, nMinutos)

    local cPeriodo := ''

    cPeriodo := "A"
    if nHora >= 12
        cPeriodo := "P"
    endif

    if nHora > 12
        nHora := nHora - 12
    endif

    return {nHora, nMinutos, cPeriodo}

return

static function exibeSaida(aResultado)

    FwAlertInfo("Hora convertida: " + AllTrim(Str(aResultado[1])) + ":" + AllTrim(Str(aResultado[2])) + " " + aResultado[3] + ".")
    
return
