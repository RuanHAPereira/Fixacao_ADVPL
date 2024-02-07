#INCLUDE "Totvs.ch"

//?Testado e ok, formando retangulo.

/*/{Protheus.doc} FUN13
Desenha moldura. Construa uma função que desenhe um retângulo usando os caracteres ‘+’ , ‘?’ e ‘| ‘. 
Esta função deve receber dois parâmetros, linhas e colunas, sendo que o valor por omissão é o valor mínimo igual a 1 e o valor máximo é 20. 
Se valores fora da faixa forem informados, eles devem ser modificados para valores dentro da faixa de forma elegante.
@type function
@author Ruan Henrique
@since 1/03/2024
/*/

user function FUN13()

    local aArea    := GetArea()
    local nLinhas  := 0
    local nColunas := 0
    local cMais    := ""
    local cBarra   := ""
    local cMenos   := ""

    nLinhas := Val(FwInputBox("Informe a quantidade de linhas (mínimo 1, máximo 20): "))
    nColunas := Val(FwInputBox("Informe a quantidade de colunas (mínimo 1, máximo 20): "))
    cMais := FwInputBox("Informe o caractere para as bordas horizontais (ex: +): ")
    cBarra := FwInputBox("Informe o caractere para as bordas verticais (ex: |): ")
    cMenos := FwInputBox("Informe o caractere para o preenchimento do retângulo (ex: -): ")

    // Chama a função estática para desenhar o retângulo
    CriaRetan(nLinhas, nColunas, cMais, cBarra, cMenos)

    RestArea(aArea)
Return

static function CriaRetan(nLinhas, nColunas, cMais, cBarra, cMenos)

    local cLinha := ""
    local nI := 0
    local nJ := 0
    local cMsg := ""  // Variável para armazenar a mensagem completa

    // Verifica e ajusta os valores de linhas e colunas dentro da faixa permitida
    nLinhas := Max(Min(nLinhas, 20), 1)
    nColunas := Max(Min(nColunas, 20), 1)

    // Desenha o retângulo
    for nI := 1 to nLinhas
        cLinha := ""  // Resetar a linha em cada iteração do loop externo
        for nJ := 1 to nColunas
            if nI == 1 .or. nI == nLinhas
                cLinha += cMais
            else
                if nJ == 1 .Or. nJ == nColunas
                    cLinha += cBarra
                else
                    cLinha += cMenos
                endif
            endif
        next
        cMsg += cLinha + CRLF  // Adicionar a linha atual à mensagem completa
    next

    FwAlertInfo(cMsg)
Return
