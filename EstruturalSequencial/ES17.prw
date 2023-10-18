#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} ES17
Fa�a um Programa para uma loja de tintas. O programa dever� pedir o tamanho em metros quadrados da �rea a ser pintada. 
Considere que a cobertura da tinta � de 1 litro para cada 6 metros quadrados e que a tinta � vendida em latas de 18 litros, 
que custam R$ 80,00 ou em gal�es de 3,6 litros, que custam R$ 25,00.
Informe ao usu�rio as quantidades de tinta a serem compradas e os respectivos pre�os em 3 situa��es:
comprar apenas latas de 18 litros;
comprar apenas gal�es de 3,6 litros;
misturar latas e gal�es, de forma que o desperd�cio de tinta seja menor. Acrescente 10% de folga e sempre arredonde os valores para cima, isto �,
considere latas cheias.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES17()

    local nArea        := 0
    local nLitroTinta  := 0
    local nTintaResto  := MOD(nLitroTinta, 18) //! Fun�ao MOD que tem a mesma fun��o do operador % (Modulo) no ADVPL
    local nLatasTinta  := 0
    local nGaloesTinta := 0
    local nPrecoLata   := 0
    local nPrecoMisto  := 0
    local nPrecoGalao  := 0
    
    nArea := val(FwinputBox("Informe a �rea em metros quadrados a ser pintada: "))

    nLitroTinta = nArea / 6 * 1.1 // quantidade de litros de tinta necess�rios com 10% de folga

    //! Fun��o ROUND para arredondar um valor ate x quantidade de casas decimais 
    nLatasTinta = ROUND(nLitroTinta / 18, 0)//quantidade de latas de 18 litros necess�rias

    nPrecoLata = nLatasTinta * 80 // Calcula o pre�o das latas de 18 litros

    nGaloesTinta = ROUND(nLitroTinta / 3.6, 0) // Calcula a quantidade de gal�es de 3,6 litros necess�rios

    // Calcula o pre�o dos gal�es de 3,6 litros
    nPrecoGalao = nGaloesTinta * 25

    // Calcula o pre�o da combina��o de latas e gal�es
    nPrecoMisto = (ROUND(nLitroTinta / 18, 0) * 80) + (ROUND(nTintaResto / 3.6, 0) * 25)

    // Exibe as informa��es
    FwAlertInfo("Ap�s calcularmos tudo, traremos informa��es para as seguintes situa��es...")

    FwAlertInfo("Situa��o 1: Comprar apenas latas de 18 litros" + CRLF;
    + "Quantidade de latas de 18 litros necess�rias: " + Alltrim(STR(nLatasTinta)) + CRLF;
    +"Pre�o: R$ " + Alltrim(STR(nPrecoLata)))

    FwAlertInfo("Situa��o 2: Comprar apenas gal�es de 3,6 litros" + CRLF;
    + "Quantidade de gal�es de 3,6 litros necess�rios: " + Alltrim(STR(nGaloesTinta)) + CRLF; 
    + "Pre�o: R$ " + Alltrim(STR(nPrecoGalao)))

    FwAlertInfo("Situa��o 3: Misturar latas e gal�es para minimizar o desperd�cio" + CRLF;
    + "Quantidade de latas de 18 litros necess�rias: " + Alltrim(STR(ROUND(nLitroTinta / 18, 0))) + CRLF;
    + "Quantidade de gal�es de 3,6 litros necess�rios: " + Alltrim(STR(ROUND(nTintaResto / 3.6, 0))) + CRLF;
    + "Pre�o: R$ " + Alltrim(STR(nPrecoMisto)))
     
return
