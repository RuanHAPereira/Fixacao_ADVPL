#include "totvs.ch"

/*/{Protheus.doc} C014Colab2
Aprimore a classe do exercício anterior para adicionar o método aumentarSalario (porcentualDeAumento) que 
aumente o salário do funcionário em uma certa porcentagem.
Exemplo de uso:
  harry=funcionário("Harry",25000)
  harry.aumentarSalario(10)
@type function
@author Ruan Henrique
@since 2/23/2024
/*/

User Function C014Colab2()

    Local oFuncionario
    Local cNomeFunc    := FwInputBox("Digite o nome do funcionário:")
    Local nSalarioFunc := Val(FwInputBox("Digite o salário do funcionário:"))
    Local nPorcentagem := Val(FwInputBox("Digite a porcentagem de aumento de salário:"))

    oFuncionario := Colaborador():New(cNomeFunc, nSalarioFunc)

    FwAlertInfo("Nome do funcionário: " + oFuncionario:Nome() +CRLF +;
    "Salário do funcionário: " + Str(oFuncionario:Salario(), 12, 2))

    oFuncionario:aumentarSalario(nPorcentagem)

    FwAlertInfo("Novo salário do funcionário após aumento: " + Str(oFuncionario:Salario(), 12, 2), "NOVO SALÁRIO!")

Return
