#include 'Totvs.ch'

user function ES18()

   local nTamanoArq := 0
   local nVelociNet := 0
   local nDownload  := 0

   nTamanoArq := val(FwInputBox("Informe o tamanho do arquivo para download em MB: "))

   nVelociNet := val(FwInputBox("Informe a velocidade do link de Internet em Mbps: "))

   nDownload = (nTamanoArq * 8) / nVelociNet / 60

   FwAlertInfo("Tempo aproximado de download: " + Alltrim(STR(nDownload) + " minutos"))

return
