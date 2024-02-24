#include "totvs.ch"

Class Ponto

    data nX
    data nY

    method New(nX, nY) CONSTRUCTOR
    method Imprimir()

EndClass

Method New(nX, nY) Class Ponto
    ::nX := nX
    ::nY := nY
Return Self

Method Imprimir() Class Ponto
    FwAlertInfo("Ponto: (" + Str(::nX) + ", " + Str(::nY) + ")", "Imprimir Ponto")
Return

Class PontRetan //? classe com esse nome pois ja existe uma classe retangulo, estavam em comflito

    data nLargura
    data nAltura
    data oVertice

    method New(nLargura, nAltura, oVertice) CONSTRUCTOR
    method Centro()
    method AlterarLargura(nNovaLargura)
    method AlterarAltura(nNovaAltura)
    method AlterarVertice(oNovoVertice)

EndClass

Method New(nLargura, nAltura, oVertice) Class PontRetan
    ::nLargura := nLargura
    ::nAltura := nAltura
    ::oVertice := oVertice
Return Self

Method Centro() Class PontRetan

    Local nCentroX := ::oVertice:nX + (::nLargura / 2)
    Local nCentroY := ::oVertice:nY + (::nAltura / 2)
    Local oCentro := Ponto():New(nCentroX, nCentroY)

Return oCentro



Method AlterarLargura(nNovaLargura) Class PontRetan
    ::nLargura := nNovaLargura
Return

Method AlterarAltura(nNovaAltura) Class PontRetan
    ::nAltura := nNovaAltura
Return

Method AlterarVertice(oNovoVertice) Class PontRetan
    ::oVertice := oNovoVertice
Return
