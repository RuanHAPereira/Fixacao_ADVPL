#include 'Totvs.ch'

/*/{Protheus.doc} ER037
Uma academia deseja fazer um senso entre seus clientes para descobrir o mais alto, o mais baixo, a mais gordo 
e o mais magro, para isto você deve fazer um programa que pergunte a cada um dos clientes da academia seu código, 
sua altura e seu peso. O final da digitação de dados deve ser dada quando o usuário digitar 0 (zero) no campo código. 
Ao encerrar o programa também deve ser informados os códigos e valores do clente mais alto, do mais baixo, 
do mais gordo e do mais magro, além da média das alturas e dos pesos dos clientes
@type function
@author Ruan Henrique
@since 11/14/2023
/*/
user function ER037()

    local cCod         := 0
    local cCodAlto     := ''
    local cCodBaixo    := ''
    local cCodGordo    := ''
    local cCodMagro    := ''
    local nAltura      := 0
    local nPeso        := 0 
    local nMaisAlto    := 0
    local nMaisBaixo   := 0
    local nPesoGordo   := 0
    local nPesoMagro   := 0
    local nMediaAltura := 0
    local nMediaPeso   := 0
    local nCont        := 0

    do while .T.
        cCod := FwInputBox("Digite o código do cliente (ou 0 para encerrar): ")

        if cCod == "0" //? Como pedido no enunciado 0 faz a saida do programa.
            exit
        else
            nAltura := Val(FwInputBox("Digite a altura do cliente " + cCod + ": "))
            nPeso := Val(FwInputBox("Digite o peso do cliente " + cCod + ": "))

            if nCont == 0
                cCodAlto  := cCod
                cCodBaixo := cCod
                cCodGordo := cCod
                cCodMagro := cCod
                nMaisAlto := nAltura
                nMaisBaixo := nAltura
                nPesoGordo := nPeso
                nPesoMagro := nPeso
            else
                if nAltura > nMaisAlto
                    cCodAlto := cCod
                    nMaisAlto := nAltura
                endif

                if nAltura < nMaisBaixo
                    cCodBaixo := cCod
                    nMaisBaixo := nAltura
                endif

                if nPeso > nPesoGordo
                    cCodGordo := cCod
                    nPesoGordo := nPeso
                endif

                if nPeso < nPesoMagro
                    cCodMagro := cCod
                    nPesoMagro := nPeso
                endif
            endif

            nMediaAltura := nMediaAltura + nAltura
            nMediaPeso := nMediaPeso + nPeso
            nCont := nCont + 1
        endif
    enddo

    if nCont > 0
        nMediaAltura := nMediaAltura / nCont
        nMediaPeso := nMediaPeso / nCont

        FwAlertInfo("Cliente mais alto: Código " + cCodAlto + ", Altura: " + AllTrim(Str(nMaisAlto)))
        FwAlertInfo("Cliente mais baixo: Código " + cCodBaixo + ", Altura: " + AllTrim(Str(nMaisBaixo)))
        FwAlertInfo("Cliente mais gordo: Código " + cCodGordo + ", Peso: " + AllTrim(Str(nPesoGordo)))
        FwAlertInfo("Cliente mais magro: Código " + cCodMagro + ", Peso: " + AllTrim(Str(nPesoMagro)))
        FwAlertInfo("Média das alturas: " + AllTrim(Str(nMediaAltura)))
        FwAlertInfo("Média dos pesos: " + AllTrim(Str(nMediaPeso)))
    else
        FwAlertInfo("Nenhum cliente informado.")
    endif

return
