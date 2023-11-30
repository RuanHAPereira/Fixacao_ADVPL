#INCLUDE 'Totvs.ch'

/*/{Protheus.doc} VE005
Fa�a um Programa que leia 20 n�meros inteiros e armazene-os num vetor. 
Armazene os n�meros pares no vetor PAR e os n�meros �MPARES no vetor �mpar. Imprima os tr�s vetores.
@type function
@author Ruan Henrique
@since 11/24/2023
/*/
user function VE005B()

    local aNumeros := {}
    local aPares   := {}
    local aImpares := {}
    local nCont    := 0
    local nNum     :=0
    local cMsg     := ""
    
    for nCont := 1 to 6
        nNum := Val(FwInputBox("Digite o n�mero inteiro " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aNumeros, nNum)

        // Categoriza os n�meros enquanto s�o lidos
        if Mod(nNum, 2) == 0
            AAdd(aPares, nNum)
        else
            AAdd(aImpares, nNum)
        endif

        // Monta a mensagem com os n�meros digitados
        cMsg += "Elemento " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo(cMsg, "N�meros digitados:")
    FwAlertInfo(AllTrim(Imprime(aPares)), "N�meros Pares:")
    FwAlertInfo(AllTrim(Imprime(aImpares)), "N�meros �mpares:")

return

static function Imprime(aVetor)

    local nCont := 1
    local cMsg := ""

    for nCont := 1 to Len(aVetor)
        cMsg += AllTrim(Str(aVetor[nCont])) + CRLF
    next

return cMsg
