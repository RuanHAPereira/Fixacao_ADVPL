#include "totvs.ch"

Class PortaEscondida

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
    method str()

EndClass

Method New(cNome, nFome, nSaude, nIdade) Class PortaEscondida
    ::cNome := cNome
    ::nFome := nFome
    ::nSaude := nSaude
    ::nIdade := nIdade
Return Self

Method AlterarNome(cNovoNome) Class PortaEscondida
    ::cNome := cNovoNome
Return

Method AlterarFome(nNovaFome) Class PortaEscondida
    ::nFome := nNovaFome
Return

Method AlterarSaude(nNovaSaude) Class PortaEscondida
    ::nSaude := nNovaSaude
Return

Method AlterarIdade(nNovaIdade) Class PortaEscondida
    ::nIdade := nNovaIdade
Return

Method Nome() Class PortaEscondida
     
Return ::cNome

Method Fome() Class PortaEscondida
    
Return ::nFome

Method Saude() Class PortaEscondida
    
Return ::nSaude

Method Idade() Class PortaEscondida
    
Return ::nIdade

Method Humor() Class PortaEscondida

    //? O humor é uma soma entre os atributos Fome e Saúde
    Local nHumor := (::nFome + ::nSaude) / 2

Return nHumor

Method ForneceComida(nQuantidade) Class PortaEscondida

    //? Reduz a fome com base na quantidade de comida fornecida
    ::nFome := Max(::nFome - nQuantidade, 0)

Return

Method Brinca(nTempo) Class PortaEscondida

    //? Reduz a fome e o tédio com base no tempo de brincadeira
    ::nFome := Max(::nFome - nTempo, 0)

Return

Method str() Class PortaEscondida

    //? Método especial para retornar uma string com os valores dos atributos do objeto
    Local cString := "Nome: " + ::cNome + CRLF + ;
                    "Fome: " + Str(::nFome) + CRLF + ;
                    "Saude: " + Str(::nSaude) + CRLF + ;
                    "Idade: " + Str(::nIdade)
Return cString
