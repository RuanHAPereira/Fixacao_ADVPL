#include 'Totvs.ch'

user function ED013()

    local nNumero := 0

    nNumero := Val(FwInputBox("Digite um numero de 1 a 7: "))

    do case
        case nNumero == 1
            FwAlertInfo("Domingo")
        case nNumero == 2
            FwAlertInfo("Segunda-Feira")
        case nNumero == 3
            FwAlertInfo("Terça-Feira")
        case nNumero == 4 
            FwAlertInfo("Quarta-Feira")
        case nNumero == 5
            FwAlertInfo("Quinta-Feira")
        case nNumero == 6
            FwAlertInfo("Sexta-Feira")
        case nNumero == 7
            FwAlertInfo("Sábado")
        OTHERWISE
            FwAlertError("Numero invalido.")
    EndCase
    
return
