#include "totvs.ch"

Class Retangulo

    data nLadoA
    data nLadoB

    method New(nLadoA, nLadoB) CONSTRUCTOR
    method MudarLados(nNovoLadoA, nNovoLadoB)
    method RetornarLados()
    method CalcularArea()
    method CalcularPerimetro()

EndClass

Method New(nLadoA, nLadoB) Class Retangulo
    
    ::nLadoA := nLadoA
    ::nLadoB := nLadoB

Return Self

Method MudarLados(nNovoLadoA, nNovoLadoB) Class Retangulo
    
    ::nLadoA := nNovoLadoA
    ::nLadoB := nNovoLadoB
    
Return

Method RetornarLados() Class Retangulo

Return {::nLadoA, ::nLadoB}

Method CalcularArea() Class Retangulo

    Local nArea := ::nLadoA * ::nLadoB

Return nArea

Method CalcularPerimetro() Class Retangulo

    Local nPerimetro := 2 * (::nLadoA + ::nLadoB)
    
Return nPerimetro

