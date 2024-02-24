#include "totvs.ch"

Class Colaborador

    Data cNome
    Data nSalario

    Method New(cNome, nSalario) Constructor
    Method Nome()
    Method Salario()
    Method aumentarSalario(nPorcentagem)

EndClass

Method New(cNome, nSalario) Class Colaborador
    
    ::cNome := cNome
    ::nSalario := nSalario
    
Return Self

Method Nome() Class Colaborador

Return ::cNome

Method Salario() Class Colaborador

Return ::nSalario

Method aumentarSalario(nPorcentagem) Class Colaborador
    
    // Calcula o valor do aumento baseado na porcentagem fornecida
    Local nAumento := ::nSalario * (nPorcentagem / 100)
    
    // Adiciona o aumento ao salário atual
    ::nSalario := ::nSalario + nAumento
    
Return
