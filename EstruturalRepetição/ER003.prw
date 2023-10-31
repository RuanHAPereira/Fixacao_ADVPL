#include 'Totvs.ch'

/*/{Protheus.doc} ER003
Fa�a um programa que leia e valide as seguintes informa��es:
Nome: maior que 3 caracteres;
Idade: entre 0 e 150;
Sal�rio: maior que zero;
Sexo: 'f' ou 'm';
Estado Civil: 's', 'c', 'v', 'd';
@type function
@author Ruan Henrique
@since 10/26/2023
/*/

user function ER003()
    
    local cNome        := ""
    local cSexo        := "mf"
    local cEstadoCivil := "csdv"
    local nIdade       := 0
    local nSalario     := 0
    local cMsg1        := ''
    local cMsg2        := ''
   
    do while .T.  
        cNome := FwInputBox("Nome (maior que 3 caracteres): ")

        if LEN(cNome) > 3 //? if com fun��o LEN() para verificar se o nome tem mais que 3 caracteres
            exit
        else
            FwAlertError("O nome deve ter mais de 3 caracteres. Tente novamente.", "ERRO!")
        endif
    enddo
    
    //? Valida��o para idade
    do while .T. 
        nIdade := val(FwInputBox("Idade (entre 0 e 150): "))

        if nIdade >= 0 .and. nIdade <= 150
            exit
        else
            FwAlertError("A idade deve estar entre 0 e 150. Tente novamente." , "ERRO!")
        endif
    enddo
    
    //? Valida��o para salario.
    do while .T. 
        nSalario := val(FwInputBox("Sal�rio (maior que zero): "))
       
        if nSalario > 0
            exit
        else
            FwAlertError("O sal�rio deve ser maior que zero. Tente novamente." , "ERRO!")
        endif
    enddo
    
    //?Valida��o para o sexo.
    do while .T.  
        cMsg1 := FwInputBox("Sexo ('f' ou 'm'): ")
       
        if cMsg1 $ cSexo
            exit
        else
            FwAlertError("O sexo deve ser 'f' ou 'm'. Tente novamente." , "ERRO!")
        endif
    enddo
    
    //?Valida��o estado civil
    do while .T.  
        cMsg2 := FwInputBox("Estado Civil ('s', 'c', 'v', 'd'): ")
        
        if cMsg2 $ cEstadoCivil
            exit
        else
            FwAlertError("O estado civil deve ser 's', 'c', 'v' ou 'd'. Tente novamente." , "ERRO!")
        endif
    enddo
    
    FwalertInfo("Informa��es v�lidas!" + CRLF + "Nome =" + alltrim(cNome) + CRLF;
    + " Idade = " + alltrim(STR(nIdade)) + CRLF + " Sal�rio =" + alltrim(STR(nSalario)) + CRLF;
    + " Sexo = " + alltrim(cMsg1) + CRLF + " Estado Civil = " + alltrim(cMsg2))

return
