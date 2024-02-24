#include "totvs.ch"

Class Bomba

    data cTipoCombu
    data nValorLitro
    data nQtdCombus

    method New(cTipoCombu, nValorLitro, nQtdCombus) CONSTRUCTOR
    method PorValor(nValor) 
    method PorLitro(nLitros) 
    method AlterarValor(nNovoValLit)
    method AlteraCombu(cNovoCombu)
    method AlteraQtdComb(nNovaQtd)
    method QtdCombust()

EndClass

Method New(cTipoCombu, nValorLitro, nQtdCombus) Class Bomba
    ::cTipoCombu := cTipoCombu
    ::nValorLitro := nValorLitro
    ::nQtdCombus := nQtdCombus
Return Self

Method PorValor(nValor) Class Bomba
    Local nLitros := nValor / ::nValorLitro
    If nLitros <= ::nQtdCombus
        ::nQtdCombus := ::nQtdCombus - nLitros
        FwAlertInfo("Foram abastecidos " + Alltrim(Str(nLitros, 7, 2)) + " litros.", "Abastecimento")
    Else
        FwAlertInfo("Quantidade insuficiente de combustível na bomba.", "Erro")
    EndIf
Return

Method PorLitro(nLitros) Class Bomba
    Local nValor := nLitros * ::nValorLitro
    If nLitros <= ::nQtdCombus
        ::nQtdCombus := ::nQtdCombus - nLitros
        FwAlertInfo("O valor a ser pago pelo cliente é de R$: " + Alltrim(Str(nValor, 7, 2)), "Abastecimento")
    Else
        FwAlertInfo("Quantidade insuficiente de combustível na bomba.", "Erro")
    EndIf
Return

Method AlterarValor(nNovoValLit) Class Bomba
    ::nValorLitro := nNovoValLit
Return

Method AlteraCombu(cNovoCombu) Class Bomba
    ::cTipoCombu := cNovoCombu
Return

Method AlteraQtdComb(nNovaQtd) Class Bomba
    ::nQtdCombus := nNovaQtd
Return

Method QtdCombust() Class Bomba
    Return ::nQtdCombus
Return 
