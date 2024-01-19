#INCLUDE "totvs.ch"

//! refazer, utilizando array e concatenar a mensagem final 

/*/{Protheus.doc} VE020
As Organiza��es Tabajara resolveram dar um abono aos seus colaboradores em reconhecimento ao bom resultado 
alcan�ado durante o ano que passou. Para isto contratou voc� para desenvolver a aplica��o que servir� como 
uma proje��o de quanto ser� gasto com o pagamento deste abono.
Ap�s reuni�es envolvendo a diretoria executiva, a diretoria financeira e os representantes do sindicato laboral,
chegou-se a seguinte forma de c�lculo:
a.Cada funcion�rio receber� o equivalente a 20% do seu sal�rio bruto de dezembro; a.O piso do abono ser� 
de 100 reais, isto �, aqueles funcion�rios cujo sal�rio for muito baixo, recebem este valor m�nimo; 
Neste momento, n�o se deve ter nenhuma preocupa��o com colaboradores com tempo menor de casa, descontos, 
impostos ou outras particularidades. Seu programa dever� permitir a digita��o do sal�rio de um n�mero 
indefinido (desconhecido) de sal�rios. Um valor de sal�rio igual a 0 (zero) encerra a digita��o. 
Ap�s a entrada de todos os dados o programa dever� calcular o valor do abono concedido a cada colaborador, 
de acordo com a regra definida acima. Ao final, o programa dever� apresentar:
O sal�rio de cada funcion�rio, juntamente com o valor do abono;
O n�mero total de funcion�rio processados;
O valor total a ser gasto com o pagamento do abono;
O n�mero de funcion�rio que receber� o valor m�nimo de 100 reais;
O maior valor pago como abono; A tela abaixo � um exemplo de execu��o do programa, apenas para fins 
ilustrativos. Os valores podem mudar a cada execu��o do programa.
Proje��o de Gastos com Abono
============================ 
 
Sal�rio: 1000
Sal�rio: 300
Sal�rio: 500
Sal�rio: 100
Sal�rio: 4500
Sal�rio: 0
 
Sal�rio    - Abono     
R$ 1000.00 - R$  200.00
R$  300.00 - R$  100.00
R$  500.00 - R$  100.00
R$  100.00 - R$  100.00
R$ 4500.00 - R$  900.00
 
Foram processados 5 colaboradores
Total gasto com abonos: R$ 1400.00
Valor m�nimo pago a 3 colaboradores
@type function
@author Ruan Henrique
@since 11/30/2023
/*/

user function VE020()

    local nSalario  := 0
    local nAbono    := 0
    local nTotColab := 0
    local nTotAbono := 0
    local nMinimoPago := 0
    local nMaiorAbono := 0

    FwAlertInfo("Proje��o de Gastos com Abono")

    do while .T.
        nSalario := Val(FwInputBox("Sal�rio (0 para encerrar): "))

        if nSalario == 0
            exit
        endif

        nAbono := Max(nSalario * 0.2, 100) // C�lculo do abono

        // Atualiza estat�sticas
        nTotColab++
        nTotAbono += nAbono
        if nAbono == 100
            nMinimoPago++
        endif
        if nAbono > nMaiorAbono
            nMaiorAbono := nAbono
        endif

        FwAlertInfo("Sal�rio: R$ " + AllTrim(Str(nSalario, 15, 2)) + " - Abono: R$ " + AllTrim(Str(nAbono, 15, 2)))
    enddo

    // Apresenta os resultados finais
    FwAlertInfo("Foram processados " + AllTrim(Str(nTotColab)) + " colaboradores")
    FwAlertInfo("Total gasto com abonos: R$ " + AllTrim(Str(nTotAbono, 15, 2)))
    FwAlertInfo("Valor m�nimo pago a " + AllTrim(Str(nMinimoPago)) + " colaboradores")
    FwAlertInfo("Maior valor pago como abono: R$ " + AllTrim(Str(nMaiorAbono, 15, 2)))

return
