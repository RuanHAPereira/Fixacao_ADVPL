#include "totvs.ch"

/*/{Protheus.doc} C014Colab2
Aprimore a classe do exerc�cio anterior para adicionar o m�todo aumentarSalario (porcentualDeAumento) que 
aumente o sal�rio do funcion�rio em uma certa porcentagem.
Exemplo de uso:
  harry=funcion�rio("Harry",25000)
  harry.aumentarSalario(10)
@type function
@author Ruan Henrique
@since 2/23/2024
/*/

User Function C014Colab2()

    Local oFuncionario
    Local cNomeFunc    := FwInputBox("Digite o nome do funcion�rio:")
    Local nSalarioFunc := Val(FwInputBox("Digite o sal�rio do funcion�rio:"))
    Local nPorcentagem := Val(FwInputBox("Digite a porcentagem de aumento de sal�rio:"))

    oFuncionario := Colaborador():New(cNomeFunc, nSalarioFunc)

    FwAlertInfo("Nome do funcion�rio: " + oFuncionario:Nome() +CRLF +;
    "Sal�rio do funcion�rio: " + Str(oFuncionario:Salario(), 12, 2))

    oFuncionario:aumentarSalario(nPorcentagem)

    FwAlertInfo("Novo sal�rio do funcion�rio ap�s aumento: " + Str(oFuncionario:Salario(), 12, 2), "NOVO SAL�RIO!")

Return
