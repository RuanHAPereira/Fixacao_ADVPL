#include 'Totvs.ch'

/*/{Protheus.doc} ES18
Faça um programa que peça o tamanho de um arquivo para download (em MB) e a velocidade de um link de Internet (em Mbps), 
calcule e informe o tempo aproximado de download do arquivo usando este link (em minutos).
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ES18()

   local nTamanoArq := 0
   local nVelociNet := 0
   local nDownload  := 0

   nTamanoArq := val(FwInputBox("Informe o tamanho do arquivo para download em MB: "))

   nVelociNet := val(FwInputBox("Informe a velocidade do link de Internet em Mbps: "))

   nDownload = (nTamanoArq * 8) / nVelociNet / 60

   FwAlertInfo("Tempo aproximado de download: " + Alltrim(STR(nDownload) + " minutos"))

return
