#include "totvs.ch"

User Function C004Pessoa()

    Local oPessoa
    Local cNome   := FwInputBox("Digite seu nome:")
    Local nIdade  := Val(FwInputBox("Digite sua idade:"))
    Local nPeso   := Val(FwInputBox("Digite seu peso (em kg):"))
    Local nAltura := Val(FwInputBox("Digite sua altura (em cm):"))

    oPessoa := Pessoa():New(cNome, nIdade, nPeso, nAltura)

    FwAlertInfo("Nome: " + oPessoa:cNome + ", Idade: " + Alltrim(Str(oPessoa:nIdade)) + " anos, Peso: ";
    + Alltrim(Str(oPessoa:nPeso)) + " kg, Altura: " + Alltrim(Str(oPessoa:nAltura)) + " cm", "Dados Iniciais")

    oPessoa:Envelhecer()

    oPessoa:Engordar(5)

    oPessoa:Emagrecer(3)

    oPessoa:Crescer()

    FwAlertInfo("Nome: " + oPessoa:cNome + ", Idade: " + Alltrim(Str(oPessoa:nIdade)) + " anos, Peso: ";
    + Alltrim(Str(oPessoa:nPeso)) + " kg, Altura: " + Alltrim(Str(oPessoa:nAltura)) + " cm", "Dados Atualizados")

Return
