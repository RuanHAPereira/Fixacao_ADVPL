//Bibliotecas
#Include 'TOTVS.ch'

/*/{Protheus.doc} User Function Cl01
Classe Bola: Crie uma classe que modele uma bola:
Atributos: Cor, circunferência, material
Métodos: trocaCor e mostraCor
@type  Function
@author Ruan Henrique
@since 05/02/2024 
/*/

User Function Cl01()
    Local aArea         := FWGetArea()
    Local nCorFundo     := RGB(238, 238, 238)
    Local nJanAltura    := 256
    Local nJanLargur    := 381 
    Local cJanTitulo    := 'ModelaBola'
    Local lDimPixels    := .T. 
    Local lCentraliz    := .T. 
    Local nObjLinha     := 0
    Local nObjColun     := 0
    Local nObjLargu     := 0
    Local nObjAltur     := 0
    Private cFontNome   := 'Tahoma'
    Private oFontPadrao := TFont():New(cFontNome, , -12)
    Private oDialogPvt 
    //Private bBlocoIni   := {|| /*fSuaFuncao()*/ } //Aqui voce pode acionar funcoes customizadas que irao ser acionadas ao abrir a dialog 
    //Modele 
    Private oSayModele 
    Private cSayModele := 'Mude a cor da bola'  
    //box 
    Private oCmbbox 
    Private cCmbbox    := '01'  
    Private aCmbbox    := {'vermelho', 'azul', 'verde', 'rosa'}  
    //button 
    Private oBtnbutton 
    Private cBtnbutton := 'Mudar'  
    Private bBtnbutton := {|| oDialogPvt:End() }  
    //objeto5 
    Private oGetObjCircun 
    Private xCircun    := Space(6) 
    //objeto6 
    Private oGetObjMat 
    Private xMaterial  := Space(20) 
    //objeto7 
    Private oSayObjCor 
    Private cSayObj7   := 'Escolha a cor'  
    //Circun 
    Private oSayCircun 
    Private cSayCircun := 'Circunferencia'  
    //Material 
    Private oSayMaterial 
    Private cSayMaterial    := 'Material'  

    //Cria a dialog
    oDialogPvt := TDialog():New(0, 0, nJanAltura, nJanLargur, cJanTitulo, , , , , , nCorFundo, , , lDimPixels)
    
        //Modele - usando a classe TSay
        nObjLinha := 10
        nObjColun := 67
        nObjLargu := 75
        nObjAltur := 6
        oSayModele  := TSay():New(nObjLinha, nObjColun, {|| cSayModele}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //box - usando a classe TComboBox
        nObjLinha := 30
        nObjColun := 109
        nObjLargu := 55
        nObjAltur := 15
        oCmbbox  := TComboBox():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , cCmbbox := u, cCmbbox)}, aCmbbox, nObjLargu, nObjAltur, oDialogPvt, , , /*bValid*/, /*nClrText*/, /*nClrBack*/, lDimPixels, oFontPadrao)

        //button - usando a classe TButton
        nObjLinha := 105
        nObjColun := 73
        nObjLargu := 50
        nObjAltur := 15
        oBtnbutton  := TButton():New(nObjLinha, nObjColun, cBtnbutton, oDialogPvt, bBtnbutton, nObjLargu, nObjAltur, , oFontPadrao, , lDimPixels)

        //objeto5 - usando a classe TGet
        nObjLinha := 52
        nObjColun := 108
        nObjLargu := 70
        nObjAltur := 15
        oGetObjCircun  := TGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , xCircun := u, xCircun)}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        oGetObjCircun:cPlaceHold := 'Ex: 30, 60 ...100.'   //Texto que sera exibido no campo antes de ter conteudo

        //objeto6 - usando a classe TGet
        nObjLinha := 76
        nObjColun := 108
        nObjLargu := 70
        nObjAltur := 15
        oGetObjMat  := TGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , xMaterial := u, xMaterial)}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        oGetObjMat:cPlaceHold := 'Ex: plastico, papel..'   //Texto que sera exibido no campo antes de ter conteudo

        //objeto7 - usando a classe TSay
        nObjLinha := 34
        nObjColun := 9
        nObjLargu := 75
        nObjAltur := 6
        oSayObjCor  := TSay():New(nObjLinha, nObjColun, {|| cSayObj7}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //Circun - usando a classe TSay
        nObjLinha := 56
        nObjColun := 9
        nObjLargu := 50
        nObjAltur := 6
        oSayCircun  := TSay():New(nObjLinha, nObjColun, {|| cSayCircun}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //Material - usando a classe TSay
        nObjLinha := 80
        nObjColun := 9
        nObjLargu := 28
        nObjAltur := 6
        oSayMaterial  := TSay():New(nObjLinha, nObjColun, {|| cSayMaterial}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

    
    //?Ativa e exibe a janela
    oDialogPvt:Activate(, , , lCentraliz, , , )

    FwAlertInfo("Agora a bola tem cor " + cCmbbox + ", com " + Alltrim(CvalTochar(xCircun)) + "cm de circunferencia e feita de " + xMaterial, "COR ALTERADA!")
    FWRestArea(aArea)
Return
