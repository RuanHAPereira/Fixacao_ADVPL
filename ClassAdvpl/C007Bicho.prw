#include "totvs.ch"

User Function C007Bicho()

    Local oBichinho

    // Criando um novo bichinho virtual com valores iniciais
    oBichinho := Bichinho():New("Bichinho", 50, 80, 3)

    // Mostrando os valores iniciais do bichinho
    FwAlertInfo("Nome: " + oBichinho:Nome() + CHR(13) + ;
                "Fome: " + Str(oBichinho:Fome()) + CHR(13) + ;
                "Saúde: " + Str(oBichinho:Saude()) + CHR(13) + ;
                "Idade: " + Str(oBichinho:Idade()) + CHR(13) + ;
                "Humor: " + Str(oBichinho:Humor()), "Bichinho Virtual")

    // Alterando alguns atributos do bichinho
    oBichinho:AlterarNome("Novo Bichinho")
    oBichinho:AlterarFome(30)
    oBichinho:AlterarSaude(70)
    oBichinho:AlterarIdade(4)

    // Mostrando os valores alterados do bichinho
    FwAlertInfo("Nome: " + oBichinho:Nome() + CHR(13) + ;
                "Fome: " + Str(oBichinho:Fome()) + CHR(13) + ;
                "Saúde: " + Str(oBichinho:Saude()) + CHR(13) + ;
                "Idade: " + Str(oBichinho:Idade()) + CHR(13) + ;
                "Humor: " + Str(oBichinho:Humor()), "Bichinho Virtual")

Return
