#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI12
Valida e corrige n�mero de telefone. Fa�a um programa que leia um n�mero de telefone, e corrija o n�mero no caso deste conter somente 7 d�gitos, 
acrescentando o '3' na frente. O usu�rio pode informar o n�mero com ou sem o tra�o separador.

Valida e corrige n�mero de telefone
Telefone: 461-0133
Telefone possui 7 d�gitos. Vou acrescentar o digito tr�s na frente.
Telefone corrigido sem formata��o: 34610133
Telefone corrigido com formata��o: 3461-0133
@type function
@author Ruan Henrique
@since 1/17/2024
/*/

User Function STRI12()

    Local cTelefone  := ""
    Local cTelNum    := ""
    Local cTelCerto  := ""
    Local cTelFormat := ""
    Local nCont      := 0
    Local nDigitos   := 0

    cTelefone := FwInputBox("Digite o n�mero de telefone: ")

    //? Remove caracteres n�o num�ricos do telefone
    For nCont := 1 To Len(cTelefone)
        If Substr(cTelefone, nCont, 1) >= "0" .And. Substr(cTelefone, nCont, 1) <= "9"
            cTelNum += Substr(cTelefone, nCont, 1)
        EndIf
    Next

    nDigitos := Len(cTelNum)

    If nDigitos == 7
        //? Acrescenta '3' na frente do n�mero
        cTelCerto := "3" + cTelNum

        //? Formata o n�mero corrigido
        cTelFormat := SubStr(cTelCerto, 1, 4) + "-" + SubStr(cTelCerto, 5)
    Else
        //? Mant�m o n�mero original se n�o tiver 7 d�gitos
        cTelFormat := SubStr(cTelNum, 1, 3) + "-" + SubStr(cTelNum, 4)
    EndIf

    FwAlertInfo("Telefone corrigido: " + cTelFormat)

Return

