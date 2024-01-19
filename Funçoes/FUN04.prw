#include "totvs.ch"

//? Testado e ok
/*/{Protheus.doc} FUN04
Fa�a um programa, com uma fun��o que necessite de um argumento. 
A fun��o retorna o valor de caractere �P�, se seu argumento for positivo, e �N�, se seu argumento for zero ou negativo.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN04()

    local nNumero    := 0
    local cResultado := ""

    nNumero := Val(FwInputBox("Digite um n�mero: "))
    cResultado := Verificar(nNumero)

    FwAlertInfo("Resultado: " + cResultado)

return

static function Verificar(nNumero)

    local cResultado := "N"

    if nNumero > 0
        cResultado := "P"
    endif

return cResultado
