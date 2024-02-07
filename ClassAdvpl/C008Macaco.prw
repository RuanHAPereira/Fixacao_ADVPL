User Function C008Macaco()

    Local cNomeMacaco1 := "Macaco1"
    Local cNomeMacaco2 := "Macaco2"
    Local aBuchoMacaco1 := {}
    Local aBuchoMacaco2 := {}

    Local oMacaco1 := Macaco():New(cNomeMacaco1)
    Local oMacaco2 := Macaco():New(cNomeMacaco2)

    // Alimentando o primeiro macaco
    AAdd(aBuchoMacaco1, "Banana")
    AAdd(aBuchoMacaco1, "Maçã")
    AAdd(aBuchoMacaco1, "Uva")

    // Verificando o conteúdo do estômago do primeiro macaco
    oMacaco1:VerBucho(aBuchoMacaco1)

    // Digerindo a comida do primeiro macaco
    oMacaco1:Digerir(aBuchoMacaco1)

    // Verificando o conteúdo do estômago do primeiro macaco após a digestão
    oMacaco1:VerBucho(aBuchoMacaco1)

    // Alimentando o segundo macaco
    AAdd(aBuchoMacaco2, "Peixe")
    AAdd(aBuchoMacaco2, "Frango")
    AAdd(aBuchoMacaco2, "Carne")

    // Verificando o conteúdo do estômago do segundo macaco
    oMacaco2:VerBucho(aBuchoMacaco2)

    // Tentando fazer o primeiro macaco comer o segundo macaco
    AAdd(aBuchoMacaco1, cNomeMacaco2)

    // Verificando o conteúdo do estômago do primeiro macaco após a tentativa de comer o segundo macaco
    oMacaco1:VerBucho(aBuchoMacaco1)

    // Digerindo a comida do segundo macaco
    oMacaco2:Digerir(aBuchoMacaco2)

    // Verificando o conteúdo do estômago do segundo macaco após a digestão
    oMacaco2:VerBucho(aBuchoMacaco2)

    // Tentando fazer o segundo macaco comer o primeiro macaco
    AAdd(aBuchoMacaco2, cNomeMacaco1)

    // Verificando o conteúdo do estômago do segundo macaco após a tentativa de comer o primeiro macaco
    oMacaco2:VerBucho(aBuchoMacaco2)

    // Digerindo a comida do segundo macaco novamente
    oMacaco2:Digerir(aBuchoMacaco2)

    // Verificando o conteúdo do estômago do segundo macaco após a segunda digestão
    oMacaco2:VerBucho(aBuchoMacaco2)

Return
