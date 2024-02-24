#include "totvs.ch"

/*/{Protheus.doc} C012Invest
Classe Conta de Investimento: Fa�a uma classe contaInvestimento que seja semelhante a classe contaBancaria,
com a diferen�a de que se adicione um atributo taxaJuros. Forne�a um construtor que configure tanto o saldo 
inicial como a taxa de juros. Forne�a um m�todo adicioneJuros (sem par�metro expl�cito) que adicione juros � conta.
Escreva um programa que construa uma poupan�a com um saldo inicial de R$1000,00 e uma taxa de juros de 10%. 
Depois aplique o m�todo adicioneJuros() cinco vezes e imprime o saldo resultante.
@type function
@author Ruan Henrique
@since 2/22/2024
/*/

User Function C012Invest()

    Local oInvestimento
    Local cNumConta     := FwInputBox("Digite o n�mero da conta:")
    Local cCorrentista  := FwInputBox("Digite o nome do correntista:")
    Local nSaldoInicial := Val(FwInputBox("Digite o saldo inicial (opcional):"))
    Local taxaJuros     := Val(FwInputBox("Digite a taxa de juros (%):"))
    Local nValorDeposit := 0
    Local nValorSaque   := 0

    oInvestimento := ContaInvestimento():New(cNumConta, cCorrentista, nSaldoInicial, taxaJuros)

    //? Exibe os dados da conta de investimento inicialmente
    FwAlertInfo("N�mero da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo: " + Str(oInvestimento:nSaldo), "Dados Iniciais")

    //? Realiza um dep�sito
    nValorDeposit := Val(FwInputBox("Digite o valor do dep�sito:"))
    oInvestimento:Deposito(nValorDeposit)

    //? Exibe os dados atualizados da conta 
    FwAlertInfo("N�mero da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo ap�s dep�sito: " + Str(oInvestimento:nSaldo), "Dados Ap�s Dep�sito")

    //? Aplica juros na conta de investimento
    oInvestimento:AdicioneJuros()

    //? Exibe os dados atualizados da conta de investimento ap�s a aplica��o de juros
    FwAlertInfo("N�mero da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo ap�s aplica��o de juros: " + Str(oInvestimento:nSaldo), "Dados Ap�s Juros")

    //? Realiza um saque na conta de investimento
    nValorSaque := Val(FwInputBox("Digite o valor do saque:"))
    oInvestimento:Saque(nValorSaque)

    FwAlertInfo("N�mero da conta: " + oInvestimento:cNumConta + CRLF + "Nome do correntista: " + oInvestimento:cCorrentista + CRLF + "Saldo ap�s saque: " + Str(oInvestimento:nSaldo), "Dados Ap�s Saque")

Return
