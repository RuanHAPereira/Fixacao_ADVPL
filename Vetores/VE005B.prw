#INCLUDE 'Totvs.ch'

/*/{Protheus.doc} VE005
Faça um Programa que leia 20 números inteiros e armazene-os num vetor. 
Armazene os números pares no vetor PAR e os números ÍMPARES no vetor ímpar. Imprima os três vetores.
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
        nNum := Val(FwInputBox("Digite o número inteiro " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aNumeros, nNum)

        // Categoriza os números enquanto são lidos
        if Mod(nNum, 2) == 0
            AAdd(aPares, nNum)
        else
            AAdd(aImpares, nNum)
        endif

        // Monta a mensagem com os números digitados
        cMsg += "Elemento " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo(cMsg, "Números digitados:")
    FwAlertInfo(AllTrim(Imprime(aPares)), "Números Pares:")
    FwAlertInfo(AllTrim(Imprime(aImpares)), "Números Ímpares:")

return

static function Imprime(aVetor)

    local nCont := 1
    local cMsg := ""

    for nCont := 1 to Len(aVetor)
        cMsg += AllTrim(Str(aVetor[nCont])) + CRLF
    next

return cMsg
