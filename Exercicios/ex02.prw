/*Elaborar um jogo do tipo adivinha o n�mero. Dever� ser sorteado um n�mero entre 0 e 100. Em seguida solicitado que o
usu�rio adivinhe qual foi o n�mero sorteado. Enquanto o usu�rio n�o acertar o n�mero sorteado dever� ser dado dicas da
seguinte forma: O n�mero sorteado � (maior, menor ou igual) ao digitado. Quando o usu�rio acertar o n�mero gerado:
? Em menos de 5 tentativas exibir a mensagem: �Voc� � muito bom, acertou em X tentativas.�
? Em mais do que 5 e menos do que 9 tentativas: �Voc� � bom, acertou em X tentativas".
? Mais do que 9 e menos do que 13 tentativas: �Voc� � mediano, acertou em X tentativas�.
? Mais do que 13: �Voc� � muito fraco, acertou em X tentativas.*/

#INCLUDE "TOTVS.CH"

//! Demorei das 18h12 at� as 19h01 para fazer o c�digo funcional
//! N�o considerei a parte de textos e comentarios

/*/{Protheus.doc} ex02
user function para elabora um jogo do Adivinha o N�mero.
@type function
@author Ruan Henrique
@since 10/6/2023
/*/
USER FUNCTION Teste02()

   LOCAL nNumSorte    := RANDOMIZE(0, 100)  // Gera um n�mero aleat�rio entre 0 e 100
   LOCAL nTentativas  := 0
   LOCAL nPalpite     := -1

   FwAlertInfo("Bem-vindo ao jogo Adivinha o N�mero!")
   FwAlertInfo("D� um palpite e se errar ter� outras chances de palpitar!")
   FwAlertInfo("A cada palpite voc� receber� uma dica se o n�mero � maior ou menor que o Numero da Sorte!")

   FwAlertInfo("VAMOS COME�AR!!" + CRLF + "BOA SORTE!")

   DO WHILE nPalpite <> nNumSorte //Fa�a enquanto o palpite for diferente do numero da sorte.

    nPalpite := Val(FwInputBox("Digite seu palpite (entre 0 e 100): "))
    nTentativas := nTentativas + 1 // a cada tentativa soma mais um (+1)

    IF nPalpite < nNumSorte // condi��o se o numero digitado for menor 

      FwAlertInfo("O n�mero sorteado � MAIOR que o seu palpite.")

    ELSEIF nPalpite > nNumSorte //se o numero digitado for maior 

      FwAlertInfo("O n�mero sorteado � MENOR que o seu palpite.")

    ENDIF

   ENDDO

    //Condi��o para tratar a quantidade de tentativas e a mensagem mostrada 
   IF nTentativas < 5
      FwAlertSuccess("Voc� � muito bom, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSEIF nTentativas < 9
      FwAlertInfo("Voc� � bom, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSEIF nTentativas < 13
      FwAlertInfo("Voc� � mediano, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSE
      FwAlertInfo("Voc� � muito fraco, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ENDIF

RETURN 
