#include "totvs.ch"

/*/{Protheus.doc} C013Colab
Classe Funcionário: Implemente a classe Funcionário. Um empregado tem um nome (um string) e um salário(um double). 
Escreva um construtor com dois parâmetros (nome e salário) e métodos para devolver nome e salário. 
Escreva um pequeno programa que teste sua classe.
@type function
@author Ruan Henrique
@since 2/22/2024
/*/

User Function C013Colab()

    Local oFuncionario
    Local cNomeFunc    := FwInputBox("Digite o nome do funcionário:")
    Local nSalarioFunc := Val(FwInputBox("Digite o salário do funcionário:"))

    oFuncionario := Funcionario():New(cNomeFunc, nSalarioFunc)

    FwAlertInfo("Nome do funcionário: " + oFuncionario:Nome() +CRLF +;
    "Salário do funcionário: " + Str(oFuncionario:Salario(), 12, 2))

Return
