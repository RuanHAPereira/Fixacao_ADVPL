#include 'Totvs.ch'

user function ED025()

    local nRespostasPositivas := 0
    local cResposta1 := ''
    local cResposta2 := ''
    local cResposta3 := ''
    local cResposta4 := ''
    local cResposta5 := ''
    local cMsg := ''

    FwAlertInfo("Responda às seguintes perguntas com 'S' para Sim e 'N' para Não:")

    cResposta1 := UPPER(FwInputBox("Telefonou para a vítima?")) 
    cResposta2 := UPPER(FwInputBox("Esteve no local do crime?"))
    cResposta3 := UPPER(FwInputBox("Mora perto da vítima?"))
    cResposta4 := UPPER(FwInputBox("Devia para a vítima?"))
    cResposta5 := UPPER(FwInputBox("Já trabalhou com a vítima?"))

    if cResposta1 == "S"
        nRespostasPositivas := nRespostasPositivas + 1
    endif

    if cResposta2 == "S"
        nRespostasPositivas := nRespostasPositivas + 1
    endif

    if cResposta3 == "S"
        nRespostasPositivas := nRespostasPositivas + 1
    endif

    if cResposta4 == "S"
        nRespostasPositivas := nRespostasPositivas + 1
    endif

    if cResposta5 == "S"
        nRespostasPositivas := nRespostasPositivas + 1
    endif

    if nRespostasPositivas == 2
        cMsg := "Suspeita"
    elseif nRespostasPositivas >= 3 .and. nRespostasPositivas <= 4
        cMsg := "Cúmplice"
    elseif nRespostasPositivas == 5
        cMsg := "Assassino"
    else
        cMsg := "Inocente"
    endif

    FwAlertInfo("Classificação da participação no crime: Você é " + alltrim(cMsg))

return
