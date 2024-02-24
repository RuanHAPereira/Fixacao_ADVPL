#include "totvs.ch"

Class BichinhoPP

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
    method ForneceComida(nQuantidade)
    method Brinca(nTempo)

EndClass

Method New(cNome, nFome, nSaude, nIdade) Class BichinhoPP
    ::cNome := cNome
    ::nFome := nFome
    ::nSaude := nSaude
    ::nIdade := nIdade
Return Self

Method AlterarNome(cNovoNome) Class BichinhoPP
    ::cNome := cNovoNome
Return

Method AlterarFome(nNovaFome) Class BichinhoPP
    ::nFome := nNovaFome
Return

Method AlterarSaude(nNovaSaude) Class BichinhoPP
    ::nSaude := nNovaSaude
Return

Method AlterarIdade(nNovaIdade) Class BichinhoPP
    ::nIdade := nNovaIdade
Return

Method Nome() Class BichinhoPP

Return ::cNome

Method Fome() Class BichinhoPP

Return ::nFome

Method Saude() Class BichinhoPP
     
Return ::nSaude

Method Idade() Class BichinhoPP

Return ::nIdade

Method Humor() Class BichinhoPP
    //? O humor é uma soma entre os atributos Fome e Saúde
    Local nHumor := (::nFome + ::nSaude) / 2
Return nHumor

Method ForneceComida(nQuantidade) Class BichinhoPP
    //? Reduz a fome com base na quantidade de comida fornecida
    ::nFome := Max(::nFome - nQuantidade, 0)
Return

Method Brinca(nTempo) Class BichinhoPP
    //? Reduz a fome e o tédio com base no tempo de brincadeira
    ::nFome := Max(::nFome - nTempo, 0)
Return
