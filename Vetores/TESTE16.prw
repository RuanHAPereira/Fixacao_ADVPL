#include "protheus.ch"

User Function TESTE16()

    local aSalarios := {}
    local nSalario  := 0
    local nVendedores := 5
    local nContadores := {}
    local nIndex := 0
    local nCont := 0

    // Preenche o array com os salários dos vendedores
    for nCont := 1 to nVendedores
        AAdd(aSalarios, 0) // Inicializa o array com valores zero
        // Solicita que o usuário informe o valor de vendas brutas para cada vendedor
        nSalario := Val(FwInputBox("Informe o valor de vendas brutas para o Vendedor " + AllTrim(Str(nCont)) + ": "))
        aSalarios[nCont] := nSalario // Atribui diretamente à posição no array
    next

    // Inicializa o array de contadores para as faixas salariais
    for nCont := 1 to 9
        nContadores := AAdd(nContadores, 0)
    next

    // Calcula os salários e contabiliza nas faixas salariais
    for nCont := 1 to nVendedores
        nSalario := aSalarios[nCont]
        nIndex := Int((nSalario - 200) / 100) + 1
        nContadores[nIndex]++
    next

    // Exibe os resultados
    for nCont := 1 to Len(nContadores)
        FwAlertInfo("Vendedores com salários entre $" + AllTrim(Str((nCont - 1) * 100 + 200)) + " e $" + AllTrim(Str(nCont * 100 + 199)) + ": " + AllTrim(Str(nContadores[nCont])))
    next

Return
