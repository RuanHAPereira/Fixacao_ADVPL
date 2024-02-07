#include "totvs.ch"

User Function C005CC()

    Local cNumConta := FwInputBox("Digite o n�mero da conta:")
    Local cCorrentista := FwInputBox("Digite o nome do correntista:")
    Local nSaldoInicial := Val(FwInputBox("Digite o saldo inicial (opcional):"))
    Local nValorDeposito := 0
    Local nValorSaque := 0

    //? objeto ContaCorrente com os dados fornecidos pelo usu�rio
    Local oCC := ContaCorrente():New(cNumConta, cCorrentista, nSaldoInicial)

    //? Exibe os dados da conta corrente inicialmente
    FwAlertInfo("N�mero da conta: " + oCC:cNumConta + CRLF +"Nome do correntista: " + oCC:cCorrentista + CRLF +"Saldo: " + Str(oCC:nSaldo), "Dados Iniciais")

    //? Realiza um dep�sito na conta corrente
    nValorDeposito := Val(FwInputBox("Digite o valor do dep�sito:"))
    oCC:Deposito(nValorDeposito)

    //? Exibe os dados atualizados da conta corrente ap�s o dep�sito
    FwAlertInfo("N�mero da conta: " + oCC:cNumConta + CRLF +"Nome do correntista: " + oCC:cCorrentista + CRLF +"Saldo ap�s dep�sito: " + Str(oCC:nSaldo), "Dados Ap�s Dep�sito")

    //? Realiza um saque na conta corrente
    nValorSaque := Val(FwInputBox("Digite o valor do saque:"))
    oCC:Saque(nValorSaque)

    FwAlertInfo("N�mero da conta: " + oCC:cNumConta + CRLF + "Nome do correntista: " + oCC:cCorrentista + CRLF + "Saldo ap�s saque: " + Str(oCC:nSaldo), "Dados Ap�s Saque")

Return
