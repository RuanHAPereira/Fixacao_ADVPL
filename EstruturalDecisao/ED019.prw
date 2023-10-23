#include 'Totvs.ch'

/*/{Protheus.doc} ED019
Faça um Programa que leia um número inteiro menor que 1000 e imprima a quantidade de centenas, dezenas e unidades do mesmo.
Observando os termos no plural a colocação do "e", da vírgula entre outros. Exemplo:
326 = 3 centenas, 2 dezenas e 6 unidades
12 = 1 dezena e 2 unidades 
Testar com: 326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7 e 16
@type function
@author Ruan Henrique
@since 10/19/2023
/*/

user function ED019()

    local nNum := 0
    local nCentenas  := 0
    local nDezenas   := 0
    local nUnidades  := 0 
    local cResultado := ''
    //MOD( numeric, numeric )

    nNum := Val(FwInputBox("Insira um numero de 1 a 999: "))

    //? Verifica se o número está entre 1 e 999
    if nNum >= 0 .AND. nNum < 1000
        
        nCentenas := INT(nNum / 100)
        nDezenas := INT((nNum % 100) / 10)
        nUnidades := nNum % 10

        //? Formata a string para que seja exibida de forma correta com os "e" e "s" de acordo
        //? com a quantidade de unidade, dezenas e centenas
        //? usasse += para atribuir em linha 
        cResultado := ""
        if nCentenas > 0 
            cResultado += Alltrim(STR(nCentenas) + " centena")
            if nCentenas > 1    //? se a centena for maior que 1 atribui o "s" pois será plural 
                cResultado += "s"
            endif
        endif

        if nCentenas > 0 .AND. nDezenas > 0
            cResultado += ", "
        endif

        if nDezenas > 0
            cResultado += Alltrim(STR(nDezenas) + " dezena")
            if nDezenas > 1
                cResultado += "s"
            endif
        endif

        if (nCentenas > 0 .OR. nDezenas > 0) .AND. nUnidades > 0
            cResultado += " e "
        endif

        if nUnidades > 0
            cResultado += Alltrim(STR(nUnidades) + " unidade")
            if nUnidades > 1
                cResultado += "s"
            endif
        endif

        FwAlertInfo("O numero apresentado possui: " + CVALTOCHAR(cResultado))
    else
        Alert("Número fora do intervalo permitido (0-999).")
    endif

return
