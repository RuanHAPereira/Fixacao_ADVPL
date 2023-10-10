#INCLUDE "TOTVS.CH"

USER FUNCTION ES17()

    local nArea := 0
    local nLitroTinta := 0
    local nTintaResto := MOD(nLitroTinta, 18) //! Funçao MOD que tem a mesma função do operador % (Modulo) no ADVPL
    
    nArea := val(FwinputBox("Informe a área em metros quadrados a ser pintada: "))

    nLitroTinta = nArea / 6 * 1.1 // quantidade de litros de tinta necessários com 10% de folga

    //! Função ROUND para arredondar um valor ate x quantidade de casas decimais 
    nLatasTinta = ROUND(nLitroTinta / 18, 0)//quantidade de latas de 18 litros necessárias

    nPrecoLata = nLatasTinta * 80 // Calcula o preço das latas de 18 litros

    nGaloesTinta = ROUND(nLitroTinta / 3.6, 0) // Calcula a quantidade de galões de 3,6 litros necessários

    // Calcula o preço dos galões de 3,6 litros
    nPrecoGalao = nGaloesTinta * 25

    // Calcula o preço da combinação de latas e galões
    nPrecoMisto = (ROUND(nLitroTinta / 18, 0) * 80) + (ROUND(nTintaResto / 3.6, 0) * 25)

    // Exibe as informações
    FwAlertInfo("Após calcularmos tudo, traremos informações para as seguintes situações...")

    FwAlertInfo("Situação 1: Comprar apenas latas de 18 litros" + CRLF;
    + "Quantidade de latas de 18 litros necessárias: " + Alltrim(STR(nLatasTinta)) + CRLF;
    +"Preço: R$ " + Alltrim(STR(nPrecoLata)))

    FwAlertInfo("Situação 2: Comprar apenas galões de 3,6 litros" + CRLF;
    + "Quantidade de galões de 3,6 litros necessários: " + Alltrim(STR(nGaloesTinta)) + CRLF; 
    + "Preço: R$ " + Alltrim(STR(nPrecoGalao)))

    FwAlertInfo("Situação 3: Misturar latas e galões para minimizar o desperdício" + CRLF;
    + "Quantidade de latas de 18 litros necessárias: " + Alltrim(STR(ROUND(nLitroTinta / 18, 0))) + CRLF;
    + "Quantidade de galões de 3,6 litros necessários: " + Alltrim(STR(ROUND(nTintaResto / 3.6, 0))) + CRLF;
    + "Preço: R$ " + Alltrim(STR(nPrecoMisto)))
     
RETURN
