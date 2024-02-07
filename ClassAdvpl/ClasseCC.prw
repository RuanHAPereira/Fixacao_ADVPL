#include "totvs.ch"

Class ContaCorrente

    data cNumConta
    data cCorrentista
    data nSaldo

    method New(cNumConta, cCorrentista, nSaldo) CONSTRUCTOR
    method AlterarNome(cNovoNome)
    method Deposito(nValor)
    method Saque(nValor)

EndClass

Method New(cNumConta, cCorrentista, nSaldo) Class ContaCorrente
    
    ::cNumConta := cNumConta
    ::cCorrentista := cCorrentista
    ::nSaldo := nSaldo
    
Return Self

Method AlterarNome(cNovoNome) Class ContaCorrente

    ::cCorrentista := cNovoNome

Return

Method Deposito(nValor) Class ContaCorrente

    ::nSaldo := ::nSaldo + nValor

Return

Method Saque(nValor) Class ContaCorrente

    If nValor > 0 .And. nValor <= ::nSaldo
        ::nSaldo := ::nSaldo - nValor
    Else
        FwAlertInfo("Valor inválido para saque.", "Erro")
    EndIf

Return


