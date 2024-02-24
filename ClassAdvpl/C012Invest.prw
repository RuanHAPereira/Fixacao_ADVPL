#include "totvs.ch"

/*/{Protheus.doc} C012Invest
Classe Conta de Investimento: Faça uma classe contaInvestimento que seja semelhante a classe contaBancaria,
com a diferença de que se adicione um atributo taxaJuros. Forneça um construtor que configure tanto o saldo 
inicial como a taxa de juros. Forneça um método adicioneJuros (sem parâmetro explícito) que adicione juros à conta.
Escreva um programa que construa uma poupança com um saldo inicial de R$1000,00 e uma taxa de juros de 10%. 
Depois aplique o método adicioneJuros() cinco vezes e imprime o saldo resultante.
@type function
@author Ruan Henrique
@since 2/22/2024
/*/

User Function C012Invest()

    Local oInvestimento
    Local cNumConta     := FwInputBox("Digite o número da conta:")
    Local cCorrentista  := FwInputBox("Digite o nome do correntista:")
    Local nSaldoInicial := Val(FwInputBox("Digite o saldo inicial (opcional):"))
    Local taxaJuros     := Val(FwInputBox("Digite a taxa de juros (%):"))
    Local nValorDeposit := 0
    Local nValorSaque   := 0

    oInvestimento := ContaInvestimento():New(cNumConta, cCorrentista, nSaldoInicial, taxaJuros)

    //? Exibe os dados da conta de investimento inicialmente
    FwAlertInfo("Número da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo: " + Str(oInvestimento:nSaldo), "Dados Iniciais")

    //? Realiza um depósito
    nValorDeposit := Val(FwInputBox("Digite o valor do depósito:"))
    oInvestimento:Deposito(nValorDeposit)

    //? Exibe os dados atualizados da conta 
    FwAlertInfo("Número da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo após depósito: " + Str(oInvestimento:nSaldo), "Dados Após Depósito")

    //? Aplica juros na conta de investimento
    oInvestimento:AdicioneJuros()

    //? Exibe os dados atualizados da conta de investimento após a aplicação de juros
    FwAlertInfo("Número da conta: " + oInvestimento:cNumConta + CRLF +"Nome do correntista: " + oInvestimento:cCorrentista + CRLF +"Saldo após aplicação de juros: " + Str(oInvestimento:nSaldo), "Dados Após Juros")

    //? Realiza um saque na conta de investimento
    nValorSaque := Val(FwInputBox("Digite o valor do saque:"))
    oInvestimento:Saque(nValorSaque)

    FwAlertInfo("Número da conta: " + oInvestimento:cNumConta + CRLF + "Nome do correntista: " + oInvestimento:cCorrentista + CRLF + "Saldo após saque: " + Str(oInvestimento:nSaldo), "Dados Após Saque")

Return
