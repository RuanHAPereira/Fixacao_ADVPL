#include "totvs.ch"

User Function C005CC()

    Local cNumConta := FwInputBox("Digite o número da conta:")
    Local cCorrentista := FwInputBox("Digite o nome do correntista:")
    Local nSaldoInicial := Val(FwInputBox("Digite o saldo inicial (opcional):"))
    Local nValorDeposito := 0
    Local nValorSaque := 0

    //? objeto ContaCorrente com os dados fornecidos pelo usuário
    Local oCC := ContaCorrente():New(cNumConta, cCorrentista, nSaldoInicial)

    //? Exibe os dados da conta corrente inicialmente
    FwAlertInfo("Número da conta: " + oCC:cNumConta + CRLF +"Nome do correntista: " + oCC:cCorrentista + CRLF +"Saldo: " + Str(oCC:nSaldo), "Dados Iniciais")

    //? Realiza um depósito na conta corrente
    nValorDeposito := Val(FwInputBox("Digite o valor do depósito:"))
    oCC:Deposito(nValorDeposito)

    //? Exibe os dados atualizados da conta corrente após o depósito
    FwAlertInfo("Número da conta: " + oCC:cNumConta + CRLF +"Nome do correntista: " + oCC:cCorrentista + CRLF +"Saldo após depósito: " + Str(oCC:nSaldo), "Dados Após Depósito")

    //? Realiza um saque na conta corrente
    nValorSaque := Val(FwInputBox("Digite o valor do saque:"))
    oCC:Saque(nValorSaque)

    FwAlertInfo("Número da conta: " + oCC:cNumConta + CRLF + "Nome do correntista: " + oCC:cCorrentista + CRLF + "Saldo após saque: " + Str(oCC:nSaldo), "Dados Após Saque")

Return
