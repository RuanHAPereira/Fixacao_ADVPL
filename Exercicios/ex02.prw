/*Elaborar um jogo do tipo adivinha o número. Deverá ser sorteado um número entre 0 e 100. Em seguida solicitado que o
usuário adivinhe qual foi o número sorteado. Enquanto o usuário não acertar o número sorteado deverá ser dado dicas da
seguinte forma: O número sorteado é (maior, menor ou igual) ao digitado. Quando o usuário acertar o número gerado:
? Em menos de 5 tentativas exibir a mensagem: “Você é muito bom, acertou em X tentativas.”
? Em mais do que 5 e menos do que 9 tentativas: “Você é bom, acertou em X tentativas".
? Mais do que 9 e menos do que 13 tentativas: “Você é mediano, acertou em X tentativas”.
? Mais do que 13: “Você é muito fraco, acertou em X tentativas.*/

#INCLUDE "TOTVS.CH"

//! Demorei das 18h12 até as 19h01 para fazer o código funcional
//! Não considerei a parte de textos e comentarios

/*/{Protheus.doc} ex02
user function para elabora um jogo do Adivinha o Número.
@type function
@author Ruan Henrique
@since 10/6/2023
/*/
USER FUNCTION Teste02()

   LOCAL nNumSorte    := RANDOMIZE(0, 100)  // Gera um número aleatório entre 0 e 100
   LOCAL nTentativas  := 0
   LOCAL nPalpite     := -1

   FwAlertInfo("Bem-vindo ao jogo Adivinha o Número!")
   FwAlertInfo("Dê um palpite e se errar terá outras chances de palpitar!")
   FwAlertInfo("A cada palpite você receberá uma dica se o número é maior ou menor que o Numero da Sorte!")

   FwAlertInfo("VAMOS COMEÇAR!!" + CRLF + "BOA SORTE!")

   DO WHILE nPalpite <> nNumSorte //Faça enquanto o palpite for diferente do numero da sorte.

    nPalpite := Val(FwInputBox("Digite seu palpite (entre 0 e 100): "))
    nTentativas := nTentativas + 1 // a cada tentativa soma mais um (+1)

    IF nPalpite < nNumSorte // condição se o numero digitado for menor 

      FwAlertInfo("O número sorteado é MAIOR que o seu palpite.")

    ELSEIF nPalpite > nNumSorte //se o numero digitado for maior 

      FwAlertInfo("O número sorteado é MENOR que o seu palpite.")

    ENDIF

   ENDDO

    //Condição para tratar a quantidade de tentativas e a mensagem mostrada 
   IF nTentativas < 5
      FwAlertSuccess("Você é muito bom, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSEIF nTentativas < 9
      FwAlertInfo("Você é bom, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSEIF nTentativas < 13
      FwAlertInfo("Você é mediano, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ELSE
      FwAlertInfo("Você é muito fraco, acertou em " + ALLTRIM(STR(nTentativas) + " tentativas."))
   ENDIF

RETURN 
