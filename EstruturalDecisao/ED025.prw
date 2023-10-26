#include 'Totvs.ch'

/*/{Protheus.doc} ED025
Faça um programa que faça 5 perguntas para uma pessoa sobre um crime. As perguntas são:
"Telefonou para a vítima?"
"Esteve no local do crime?"
"Mora perto da vítima?"
"Devia para a vítima?"
"Já trabalhou com a vítima?" O programa deve no final emitir uma classificação 
sobre a participação da pessoa no crime. Se a pessoa responder positivamente a 
2 questões ela deve ser classificada como "Suspeita", entre 3 e 4 como "Cúmplice" e 
5 como "Assassino". Caso contrário, ele será classificado como "Inocente".
@type function
@author Ruan Henrique
@since 10/25/2023
/*/

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
