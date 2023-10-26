#include 'Totvs.ch'

user function ER002()
    
    local cUser := ""
    local cPassword := ""
    
    do while .T.  // Loop infinito
        cUser := FwInputBox("Nome de usuário: ")
        cPassword := FwInputbox("Senha: ")
        
        if cPassword <> cUser
            exit
        else
            FwAlertSuccess("Erro: A senha não pode ser igual ao nome de usuário. Tente novamente.")
        endif
    enddo
    
    FwalertError("Nome de usuário e senha válidos.")

return
