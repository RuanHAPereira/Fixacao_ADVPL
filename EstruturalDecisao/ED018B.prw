#include 'Totvs.ch'

/*/{Protheus.doc} ED018B
Fa�a um Programa que pe�a uma data no formato dd/mm/aaaa e determine se a mesma � uma data v�lida.
Varia��o utilizando a fun��o MOD()
@type function
@version  
@author Ruan Henrique
@since 10/18/2023
@return variant, return_description
/*/
user function ED018B()

    local cData := ""
    local nDia := 0
    local nMes := 0
    local nAno := 0
    local lDataValida := .F.

    cData := (FwInputBox("Digite a data no formato dd/mm/aaaa: "))

    //? Aqui come�o a valida��o da data inserida, Len() s� � valida se a String fo de tamanho 10
    //? SubStr() valida se o terceiro e o sexto caracteres serao exatamente "/"
    //? As variv�veis nDia, nMes e nAno s�o para dividir essa String de acordo com o formato de data
    if Len(cData) == 10 .AND. SubStr(cData, 3, 1) == "/" .AND. SubStr(cData, 6, 1) == "/"

        nDia := Val(SubStr(cData, 1, 2))
        nMes := Val(SubStr(cData, 4, 2))
        nAno := Val(SubStr(cData, 7, 4))

        if nMes >= 1 .AND. nMes <= 12 .AND. nDia >= 1 .AND. nDia <= 31
            lDataValida := .T.

            if nMes == 4 .OR. nMes == 6 .OR. nMes == 9 .OR. nMes == 11

                if nDia > 30
                    lDataValida := .F.
                endif

            elseif nMes == 2

                if (MOD(nAno, 4) == 0)

                    if nDia > 29
                        lDataValida := .F.
                    endif

                else

                    if nDia > 28
                        lDataValida := .F.
                    endif

                endif
            endif
        endif
    endif

    if lDataValida
        FwAlertSucess("A data " + Alltrim(Str(cData)) + " � v�lida.")
    else
        FwAlertError("A data " + Alltrim(Str(cData)) + " n�o � v�lida.")
    endif

return
