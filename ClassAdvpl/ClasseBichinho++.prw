#include "totvs.ch"

Class BichinhoPP

    data cNome
    data nFome
    data nSaude
    data nIdade
    data nComidaForn
    data nTempBrinc

    method New(cNome) CONSTRUCTOR
    method AltNome(cNovoNome)
    method AltFome(nNovoNivelFome)
    method AltSaude(nNovoNivelSaude)
    method AltIdade(nNovaIdade)
    method AltComidaForn(nNovaComida)
    method AltTempoBrinc(nNovoTempo)
    method Nome()
    method Fome()
    method Saude()
    method Idade()
    method ComidaForn()
    method TempoBrinc()

EndClass

Method New(cNome) Class BichinhoPP
    
    ::cNome := cNome
    ::nFome := 50
    ::nSaude := 50
    ::nIdade := 1
    ::nComidaForn := 0
    ::nTempBrinc := 0

Return Self

Method AltNome(cNovoNome) Class BichinhoPP
    ::cNome := cNovoNome
Return

Method AltFome(nNovoNivelFome) Class BichinhoPP
    ::nFome := nNovoNivelFome
Return

Method AltSaude(nNovoNivelSaude) Class BichinhoPP
    ::nSaude := nNovoNivelSaude
Return

Method AltIdade(nNovaIdade) Class BichinhoPP
    ::nIdade := nNovaIdade
Return

Method AltComidaForn(nNovaComida) Class BichinhoPP
    ::nComidaForn := nNovaComida
    //? Reduz o nível de fome com base na quantidade de comida fornecida
    ::nFome := ::nFome - nNovaComida
Return

Method AltTempoBrinc(nNovoTempo) Class BichinhoPP
    ::nTempBrinc := nNovoTempo
    //? Reduz o nível de tédio com base no tempo de brincadeira
    ::nSaude := ::nSaude - (nNovoTempo / 2)
Return

Method Nome() Class BichinhoPP
    Local cNome := ::cNome
Return cNome

Method Fome() Class BichinhoPP
    Local nFome := ::nFome
Return nFome

Method Saude() Class BichinhoPP
    Local nSaude := ::nSaude
Return nSaude


Method Idade() Class BichinhoPP
    Local nIdade := ::nIdade
Return nIdade

Method ComidaForn() Class BichinhoPP
    ::nComidaForn := nComidaForn
Return

Method TempoBrinc() Class BichinhoPP
    ::nTempBrinc := nTempBrinc
Return
