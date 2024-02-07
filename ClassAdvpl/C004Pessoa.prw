#include "totvs.ch"

User Function C004Pessoa()

    Local oPessoa
    Local cNome   := FwInputBox("Digite seu nome:")
    Local nIdade  := Val(FwInputBox("Digite sua idade:"))
    Local nPeso   := Val(FwInputBox("Digite seu peso (em kg):"))
    Local nAltura := Val(FwInputBox("Digite sua altura (em cm):"))

    // Cria um objeto Pessoa com nome, idade, peso e altura fornecidos pelo usuário
    oPessoa := Pessoa():New(cNome, nIdade, nPeso, nAltura)

    // Exibe os atributos iniciais da pessoa
    FwAlertInfo("Nome: " + oPessoa:cNome + ", Idade: " + Alltrim(Str(oPessoa:nIdade)) + " anos, Peso: ";
    + Alltrim(Str(oPessoa:nPeso)) + " kg, Altura: " + Alltrim(Str(oPessoa:nAltura)) + " cm", "Dados Iniciais")

    // Simula o envelhecimento da pessoa
    oPessoa:Envelhecer()

    // Simula o engordar da pessoa
    oPessoa:Engordar(5)

    // Simula o emagrecer da pessoa
    oPessoa:Emagrecer(3)

    // Simula o crescimento da pessoa
    oPessoa:Crescer()

    // Exibe os atributos atualizados da pessoa
    FwAlertInfo("Nome: " + oPessoa:cNome + ", Idade: " + Alltrim(Str(oPessoa:nIdade)) + " anos, Peso: ";
    + Alltrim(Str(oPessoa:nPeso)) + " kg, Altura: " + Alltrim(Str(oPessoa:nAltura)) + " cm", "Dados Atualizados")

Return
