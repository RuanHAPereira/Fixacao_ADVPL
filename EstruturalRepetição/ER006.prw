#include 'Totvs.ch'

/*/{Protheus.doc} ER006
Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro. 
Depois modifique o programa para que ele mostre os números um ao lado do outro.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/
user function ER006()

    local nNum := 1
    local aNumero := {}
    
    for nNum := 1 to 10
        AADD( aNumero[], nNum )
    next
    Alert("Imprimir abaixo:")
    for nNum := 1 to 10
        alert(aNumero[nNum]) 
    next 

    Alert("Imprimir ao lado:")
    for nNum := 1 to 10
        Alert(aNumero[nNum] + CRLF)
    next


return
