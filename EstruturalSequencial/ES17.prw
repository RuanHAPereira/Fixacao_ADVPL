#INCLUDE "TOTVS.CH"

USER FUNCTION ES17()

    local nArea := 0
    local nLitroTinta := 0
    local nTintaResto := MOD(nLitroTinta, 18) //! Fun�ao MOD que tem a mesma fun��o do operador % (Modulo) no ADVPL
    
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
     
RETURN
