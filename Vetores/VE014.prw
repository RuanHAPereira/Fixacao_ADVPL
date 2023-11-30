#include 'totvs.ch'

/*/{Protheus.doc} VE014
Utilizando listas faça um programa que faça 5 perguntas para uma pessoa sobre um crime.
As perguntas são:
1. "Telefonou para a vítima?"
2. "Esteve no local do crime?"
3. "Mora perto da vítima?"
4. "Devia para a vítima?"
5. "Já trabalhou com a vítima?"
O programa deve no final emitir uma classificação sobre a participação da pessoa no crime.
Se a pessoa responder positivamente a 2 questões ela deve ser classificada como "Suspeita",
entre 3 e 4 como "Cúmplice" e 5 como "Assassino". Caso contrário, ela será classificada como "Inocente".
@type function
@author Ruan Henrique
@since 11/28/2023
/*/

user function VE014()

    local aPerguntas := {"Telefonou para a vítima?", "Esteve no local do crime?", "Mora perto da vítima?", "Devia para a vítima?", "Já trabalhou com a vítima?"}
    local aRespostas := {}
    local cResposta   := ""
    local nCont      := 0
    local nSim       := 0
    local cClassificacao := ''

    for nCont := 1 to Len(aPerguntas)
        cResposta = FwInputBox(aPerguntas[nCont] + " (Sim ou Não): ")
        AAdd(aRespostas, cResposta)
        if Upper(cResposta) == "SIM"
            nSim++
        endif
    next

    if nSim == 2
        cClassificacao = "Suspeita"
    elseif nSim >= 3 .and. nSim <= 4
        cClassificacao = "Cúmplice"
    elseif nSim == 5
        cClassificacao = "Assassino"
    else
        cClassificacao = "Inocente"
    endif

    FwAlertInfo("Classificação: " + cClassificacao)

return

