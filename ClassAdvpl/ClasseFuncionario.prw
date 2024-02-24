#include "totvs.ch"

Class Funcionario

    Data cNome
    Data nSalario

    Method New(cNome, nSalario) Constructor
    Method SetNome(cNovoNome)
    Method SetSalario(nNovoSalario)
    Method Nome() 
    Method Salario() 

EndClass

Method New(cNome, nSalario) Class Funcionario
    ::cNome := cNome
    ::nSalario := nSalario
Return Self

Method SetNome(cNovoNome) Class Funcionario
    ::cNome := cNovoNome
Return

Method SetSalario(nNovoSalario) Class Funcionario
    ::nSalario := nNovoSalario
Return

Method Nome() Class Funcionario

Return ::cNome

Method Salario() Class Funcionario

Return ::nSalario
