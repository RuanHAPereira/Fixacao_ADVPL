#include 'Totvs.ch'

user function ER002()
    
    local cUser := ""
    local cPassword := ""
    
    do while .T.  // Loop infinito
        cUser := FwInputBox("Nome de usu�rio: ")
        cPassword := FwInputbox("Senha: ")
        
        if cPassword <> cUser
            exit
        else
            FwAlertSuccess("Erro: A senha n�o pode ser igual ao nome de usu�rio. Tente novamente.")
        endif
    enddo
    
    FwalertError("Nome de usu�rio e senha v�lidos.")

return
