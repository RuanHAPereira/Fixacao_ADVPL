#include "totvs.ch"

Class Carro

    data nConsumo
    data nCombustivel

    method New(nConsumo) Constructor
    method andar(nDistancia)
    method obterGasolina()
    method adicionarGasolina(nLitros)

EndClass

Method New(nConsumo) Class Carro
    ::nConsumo := nConsumo
    ::nCombustivel := 0
Return Self

Method andar(nDistancia) Class Carro
    ::nCombustivel := ::nCombustivel - (nDistancia / ::nConsumo)
Return

Method obterGasolina() Class Carro
    Return ::nCombustivel
Return Self

Method adicionarGasolina(nLitros) Class Carro
    ::nCombustivel := ::nCombustivel + nLitros
Return
