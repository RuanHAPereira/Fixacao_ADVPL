#include "totvs.ch"

Class Bichinho

    data cNome
    data nFome
    data nSaude
    data nIdade

    method New(cNome, nFome, nSaude, nIdade) CONSTRUCTOR
    method AlterarNome(cNovoNome)
    method AlterarFome(nNovaFome)
    method AlterarSaude(nNovaSaude)
    method AlterarIdade(nNovaIdade)
    method Nome() 
    method Fome() 
    method Saude() 
    method Idade()
    method Humor() 

EndClass

Method New(cNome, nFome, nSaude, nIdade) Class Bichinho
    ::cNome := cNome
    ::nFome := nFome
    ::nSaude := nSaude
    ::nIdade := nIdade
Return Self

Method AlterarNome(cNovoNome) Class Bichinho
    ::cNome := cNovoNome
Return

Method AlterarFome(nNovaFome) Class Bichinho
    ::nFome := nNovaFome
Return

Method AlterarSaude(nNovaSaude) Class Bichinho
    ::nSaude := nNovaSaude
Return

Method AlterarIdade(nNovaIdade) Class Bichinho
    ::nIdade := nNovaIdade
Return

Method Nome() Class Bichinho
    ::cNome := cNome
Return Self

Method Fome() Class Bichinho
    ::nFome := nFome
Return Self

Method Saude() Class Bichinho
    ::nSaude := nSaude
Return

Method Idade() Class Bichinho
    ::nIdade := nIdade
Return Self

Method Humor() Class Bichinho
    //? O humor é uma soma entre os atributos Fome e Saúde
    Local nHumor := (::nFome + ::nSaude) / 2
Return nHumor

