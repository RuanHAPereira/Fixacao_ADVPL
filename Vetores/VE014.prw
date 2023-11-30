#include 'totvs.ch'

/*/{Protheus.doc} VE014
Utilizando listas fa�a um programa que fa�a 5 perguntas para uma pessoa sobre um crime.
As perguntas s�o:
1. "Telefonou para a v�tima?"
2. "Esteve no local do crime?"
3. "Mora perto da v�tima?"
4. "Devia para a v�tima?"
5. "J� trabalhou com a v�tima?"
O programa deve no final emitir uma classifica��o sobre a participa��o da pessoa no crime.
Se a pessoa responder positivamente a 2 quest�es ela deve ser classificada como "Suspeita",
entre 3 e 4 como "C�mplice" e 5 como "Assassino". Caso contr�rio, ela ser� classificada como "Inocente".
@type function
@author Ruan Henrique
@since 11/28/2023
/*/

user function VE014()

    local aPerguntas := {"Telefonou para a v�tima?", "Esteve no local do crime?", "Mora perto da v�tima?", "Devia para a v�tima?", "J� trabalhou com a v�tima?"}
    local aRespostas := {}
    local cResposta   := ""
    local nCont      := 0
    local nSim       := 0
    local cClassificacao := ''

    for nCont := 1 to Len(aPerguntas)
        cResposta = FwInputBox(aPerguntas[nCont] + " (Sim ou N�o): ")
        AAdd(aRespostas, cResposta)
        if Upper(cResposta) == "SIM"
            nSim++
        endif
    next

    if nSim == 2
        cClassificacao = "Suspeita"
    elseif nSim >= 3 .and. nSim <= 4
        cClassificacao = "C�mplice"
    elseif nSim == 5
        cClassificacao = "Assassino"
    else
        cClassificacao = "Inocente"
    endif

    FwAlertInfo("Classifica��o: " + cClassificacao)

return

