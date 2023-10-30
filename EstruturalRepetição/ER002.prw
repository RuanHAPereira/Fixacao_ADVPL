#include 'Totvs.ch'

/*/{Protheus.doc} ER002
Fa�a um programa que leia um nome de usu�rio e a sua senha e n�o aceite a senha igual 
ao nome do usu�rio, mostrando uma mensagem de erro e voltando a pedir as informa��es.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER002()
    
    local cUser := ""
    local cPassword := ""
    
    do while .T.  //? Loop infinito
        cUser := FwInputBox("Nome de usu�rio: ")
        cPassword := FwInputbox("Senha: ")
        
        if cPassword <> cUser
            exit
        else
            FwAlertError("Erro: A senha n�o pode ser igual ao nome de usu�rio. Tente novamente.")
        endif
    enddo
    
    FwAlertSuccess("Nome de usu�rio e senha v�lidos.")

return
