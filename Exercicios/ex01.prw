#INCLUDE "TOTVS.CH"

//! Tempo gasto para corrigr os erros do codigo 19h02 a 19h33(31 minutos)
//! Não contando com o tempo de comentários e textos 

/*/{Protheus.doc} ex01
user function que grava e calcula a atlura, sexo, a quantidade de homens e altura media das mulheres
@type function
@author Ruan Henrique
@since 10/6/2023
/*/
USER FUNCTION ex01()

  LOCAL nCont   := 0
  LOCAL cSexo   := ""
  LOCAL nAltura := 0
  LOCAL nTotalMulheres := 0
  LOCAL nTotalHomens   := 0
  LOCAL nSomaAltFem    := 0
  LOCAL nMaiorAltura   := 0
  LOCAL nMenorAltura   := 9999  // Inicialize com um valor alto para garantir que qualquer altura seja menor

  FOR nCont := 1 TO 40

    cSexo   := (FwInputBox("Digite o sexo (M para masculino, F para feminino): ", cSexo))
    nAltura := Val(FwInputBox("Digite a altura (em cm) da pessoa: ")) 

    IF cSexo == "F"
      nTotalMulheres := nTotalMulheres + 1
      nSomaAltFem := nSomaAltFem + nAltura  
    ELSEIF cSexo == "M"
      nTotalHomens := nTotalHomens + 1
    ENDIF

    IF nAltura > nMaiorAltura
      nMaiorAltura := nAltura
    ENDIF

    IF nAltura < nMenorAltura
      nMenorAltura := nAltura
    ENDIF
  NEXT

  IF nTotalMulheres > 0
    nMediaAlturaMulheres := nSomaAltFem / nTotalMulheres
  ELSE
    nMediaAlturaMulheres := 0
  ENDIF

  FwAlertInfo("Maior altura do grupo: " + Alltrim(STR(nMaiorAltura) + " cm"))
  FwAlertInfo("Menor altura do grupo: " + Alltrim(STR(nMenorAltura) + " cm"))
  FwAlertInfo("Média de altura das mulheres: " + Alltrim(STR(nMediaAlturaMulheres) + " cm"))
  FwAlertInfo("Número de homens: " + Alltrim(STR(nTotalHomens)))

RETURN NIL
