#include 'Totvs.ch'

/*/{Protheus.doc} ED018B
Faça um Programa que peça uma data no formato dd/mm/aaaa e determine se a mesma é uma data válida.
Variação utilizando a função MOD()
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

    //? Aqui começo a validação da data inserida, Len() só é valida se a String fo de tamanho 10
    //? SubStr() valida se o terceiro e o sexto caracteres serao exatamente "/"
    //? As variváveis nDia, nMes e nAno são para dividir essa String de acordo com o formato de data
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
        FwAlertSucess("A data " + Alltrim(Str(cData)) + " é válida.")
    else
        FwAlertError("A data " + Alltrim(Str(cData)) + " não é válida.")
    endif

return
