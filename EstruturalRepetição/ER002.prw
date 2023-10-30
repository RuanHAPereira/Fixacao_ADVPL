#include 'Totvs.ch'

/*/{Protheus.doc} ER002
Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha igual 
ao nome do usuário, mostrando uma mensagem de erro e voltando a pedir as informações.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER002()
    
    local cUser := ""
    local cPassword := ""
    
    do while .T.  //? Loop infinito
        cUser := FwInputBox("Nome de usuário: ")
        cPassword := FwInputbox("Senha: ")
        
        if cPassword <> cUser
            exit
        else
            FwAlertError("Erro: A senha não pode ser igual ao nome de usuário. Tente novamente.")
        endif
    enddo
    
    FwAlertSuccess("Nome de usuário e senha válidos.")

return
