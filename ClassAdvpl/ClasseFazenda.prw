#include "totvs.ch"

Class Bicho

    data cNome
    data nFome
    data nTedio

    method New(cNome, nFome, nTedio) CONSTRUCTOR
    method ForneceComida(nComida)
    method Brinca(nTempo)
    method str()

EndClass

Method New(cNome, nFome, nTedio) Class Bicho
    ::cNome := cNome
    ::nFome := nFome
    ::nTedio := nTedio
Return Self

Method ForneceComida(nComida) Class Bicho
    ::nFome := Min(::nFome - nComida, 100) // Limita o valor máximo de fome a 100
Return Self

Method Brinca(nTempo) Class Bicho
    ::nTedio := Max(::nTedio - nTempo, 0) // Garante que o nível de tédio não seja negativo
Return Self

Method str() Class Bicho
    Local cStr := "Nome: " + ::cNome + ", Fome: " + Str(::nFome) + ", Tédio: " + Str(::nTedio)
Return cStr


// Classe Fazenda
Class Fazenda

    data aBichinhos

    method New() CONSTRUCTOR
    method CriarBichinhos(nQuantidade)
    method AlimentarBichinhos(nComida)
    method BrincarComBichinhos(nTempo)
    method OuvirBichinhos()

EndClass

Method New() Class Fazenda
    ::aBichinhos := {}
Return Self

Method CriarBichinhos(nQuantidade) Class Fazenda
    Local cNome := ''
    Local nFome := 0
    Local nTedio := 0
    Local nCont := 0

    For nCont := 1 To nQuantidade
        cNome := "Bicho" + LTrim(STR(nCont))
        nFome := Randomize(0,100) // Gera um valor aleatório entre 0 e 100 para a fome
        nTedio := Randomize(0,100) // Gera um valor aleatório entre 0 e 100 para o tédio
        aAdd(::aBichinhos, Bicho():New(cNome, nFome, nTedio))
    Next
Return Self

Method AlimentarBichinhos(nComida) Class Fazenda

    Local nCont := 0

    For nCont := 1 To Len(::aBichinhos)
        ::aBichinhos[nCont]:ForneceComida(nComida)
    Next
Return Self

Method BrincarComBichinhos(nTempo) Class Fazenda

    Local nCont := 0

    For nCont := 1 To Len(::aBichinhos)
        ::aBichinhos[nCont]:Brinca(nTempo)
    Next
Return Self

Method OuvirBichinhos() Class Fazenda
    Local cMensagem := "Mensagens dos bichinhos:" + CRLF
    Local nCont := 0

    For nCont := 1 To Len(::aBichinhos)
        cMensagem += ::aBichinhos[nCont]:str() + CRLF
    Next
    FwAlertInfo(cMensagem, "Fazenda de Bichinhos")
Return Self


