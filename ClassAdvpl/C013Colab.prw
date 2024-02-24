#include "totvs.ch"

/*/{Protheus.doc} C013Colab
Classe Funcion�rio: Implemente a classe Funcion�rio. Um empregado tem um nome (um string) e um sal�rio(um double). 
Escreva um construtor com dois par�metros (nome e sal�rio) e m�todos para devolver nome e sal�rio. 
Escreva um pequeno programa que teste sua classe.
@type function
@author Ruan Henrique
@since 2/22/2024
/*/

User Function C013Colab()

    Local oFuncionario
    Local cNomeFunc    := FwInputBox("Digite o nome do funcion�rio:")
    Local nSalarioFunc := Val(FwInputBox("Digite o sal�rio do funcion�rio:"))

    oFuncionario := Funcionario():New(cNomeFunc, nSalarioFunc)

    FwAlertInfo("Nome do funcion�rio: " + oFuncionario:Nome() +CRLF +;
    "Sal�rio do funcion�rio: " + Str(oFuncionario:Salario(), 12, 2))

Return
