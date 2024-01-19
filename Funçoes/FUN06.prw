#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN06
Faça um programa que converta da notação de 24 horas para a notação de 12 horas. Por exemplo, o programa deve 
converter 14:25 em 2:25 P.M. A entrada é dada em dois inteiros. Deve haver pelo menos duas funções: uma para 
fazer a conversão e uma para a saída. Registre a informação A.M./P.M. como um valor ‘A’ para A.M. e ‘P’ para P.M. 
Assim, a função para efetuar as conversões terá um parâmetro formal para registrar se é A.M. ou P.M. Inclua um loop 
que permita que o usuário repita esse cálculo para novos valores de entrada todas as vezes que desejar.
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

        // Converte e exibe a saída
        exibeSaida(Conversao(nHora, nMinutos))

        // Pergunta se o usuário deseja repetir o cálculo
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
