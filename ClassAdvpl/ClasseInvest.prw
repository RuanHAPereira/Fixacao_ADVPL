#include "totvs.ch"

Class ContaInvestimento

    data cNumConta
    data cCorrentista
    data nSaldo
    data taxaJuros

    method New(cNumConta, cCorrentista, nSaldo, taxaJuros) CONSTRUCTOR
    method AlterarNome(cNovoNome)
    method Deposito(nValor)
    method Saque(nValor)
    method AdicioneJuros()

EndClass

Method New(cNumConta, cCorrentista, nSaldo, taxaJuros) Class ContaInvestimento
    
    ::cNumConta := cNumConta
    ::cCorrentista := cCorrentista
    ::nSaldo := nSaldo
    ::taxaJuros := taxaJuros
    
Return Self

Method AlterarNome(cNovoNome) Class ContaInvestimento

    ::cCorrentista := cNovoNome

Return

Method Deposito(nValor) Class ContaInvestimento

    ::nSaldo := ::nSaldo + nValor

Return

Method Saque(nValor) Class ContaInvestimento

    If nValor > 0 .And. nValor <= ::nSaldo
        ::nSaldo := ::nSaldo - nValor
    Else
        FwAlertInfo("Valor inválido para saque.", "Erro")
    EndIf

Return

Method AdicioneJuros() Class ContaInvestimento

    Local nJuros := ::nSaldo * ::taxaJuros / 100
    ::nSaldo := ::nSaldo + nJuros

Return

