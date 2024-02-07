#include "totvs.ch"

Class Pessoa

    data cNome
    data nIdade
    data nPeso
    data nAltura

    method New(cNome, nIdade, nPeso, nAltura) CONSTRUCTOR
    method Envelhecer()
    method Engordar(nPeso)
    method Emagrecer(nPeso)
    method Crescer()

EndClass

Method New(cNome, nIdade, nPeso, nAltura) Class Pessoa
    
    ::cNome   := cNome
    ::nIdade  := nIdade
    ::nPeso   := nPeso
    ::nAltura := nAltura

Return Self

Method Envelhecer() Class Pessoa

    ::nIdade++
    If ::nIdade < 21
        ::nAltura := ::nAltura + 0.5
    EndIf

Return

Method Engordar(nPeso) Class Pessoa

    ::nPeso := ::nPeso + nPeso

Return

Method Emagrecer(nPeso) Class Pessoa

    If ::nPeso > nPeso
        ::nPeso := ::nPeso - nPeso
    Else
        ::nPeso := 0
    EndIf

Return


Method Crescer() Class Pessoa
    ::nAltura := ::nAltura + 0.5
Return
