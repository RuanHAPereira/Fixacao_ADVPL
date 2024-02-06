#include "Protheus.ch"

Class Quadrado

    data nLado

    method New(nLado) CONSTRUCTOR
    method MudarLado(nNovoLado)
    method RetornarLado()
    method CalcularArea()

EndClass

Method New(nLado) Class Quadrado
    
    ::nLado := nLado
Return Self

Method MudarLado(nNovoLado) Class Quadrado
    ::nLado := nNovoLado
Return

Method RetornarLado() Class Quadrado
    Return ::nLado
Return

Method CalcularArea() Class Quadrado
    Local nArea := ::nLado * ::nLado
    FwAlertInfo("A área do quadrado é: " + Str(nArea), "Área do Quadrado")
Return
