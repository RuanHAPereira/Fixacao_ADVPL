#include "totvs.ch"

User Function C007Bicho()

    Local oBichinho

    oBichinho := Bichinho():New("Bichinho", 50, 80, 3)

    FwAlertInfo("Nome: " + oBichinho:Nome() + CRLF + ;
                "Fome: " + Str(oBichinho:Fome()) + CRLF + ;
                "Saúde: " + Str(oBichinho:Saude()) + CRLF + ;
                "Idade: " + Str(oBichinho:Idade()) + CRLF + ;
                "Humor: " + Str(oBichinho:Humor()), "Bichinho Virtual")

    oBichinho:AlterarNome("Novo Bichinho")
    oBichinho:AlterarFome(30)
    oBichinho:AlterarSaude(70)
    oBichinho:AlterarIdade(4)

    FwAlertInfo("Nome: " + oBichinho:Nome() + CRLF + ;
                "Fome: " + Str(oBichinho:Fome()) + CRLF + ;
                "Saúde: " + Str(oBichinho:Saude()) + CRLF + ;
                "Idade: " + Str(oBichinho:Idade()) + CRLF + ;
                "Humor: " + Str(oBichinho:Humor()), "Bichinho Virtual")

Return
