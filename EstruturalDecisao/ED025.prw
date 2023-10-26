#include 'Totvs.ch'

/*/{Protheus.doc} ED025
Fa�a um programa que fa�a 5 perguntas para uma pessoa sobre um crime. As perguntas s�o:
"Telefonou para a v�tima?"
"Esteve no local do crime?"
"Mora perto da v�tima?"
"Devia para a v�tima?"
"J� trabalhou com a v�tima?" O programa deve no final emitir uma classifica��o 
sobre a participa��o da pessoa no crime. Se a pessoa responder positivamente a 
2 quest�es ela deve ser classificada como "Suspeita", entre 3 e 4 como "C�mplice" e 
5 como "Assassino". Caso contr�rio, ele ser� classificado como "Inocente".
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

    FwAlertInfo("Responda �s seguintes perguntas com 'S' para Sim e 'N' para N�o:")

    cResposta1 := UPPER(FwInputBox("Telefonou para a v�tima?")) 
    cResposta2 := UPPER(FwInputBox("Esteve no local do crime?"))
    cResposta3 := UPPER(FwInputBox("Mora perto da v�tima?"))
    cResposta4 := UPPER(FwInputBox("Devia para a v�tima?"))
    cResposta5 := UPPER(FwInputBox("J� trabalhou com a v�tima?"))

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
        cMsg := "C�mplice"
    elseif nRespostasPositivas == 5
        cMsg := "Assassino"
    else
        cMsg := "Inocente"
    endif

    FwAlertInfo("Classifica��o da participa��o no crime: Voc� � " + alltrim(cMsg))

return
