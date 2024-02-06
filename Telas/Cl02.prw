//Bibliotecas
#Include 'TOTVS.ch'

/*/{Protheus.doc} User Function Cl02
Classe Quadrado: Crie uma classe que modele um quadrado:

Atributos: Tamanho do lado
Métodos: Mudar valor do Lado, Retornar valor do Lado e calcular Área;
@type  Function
@author Ruan Henrique
@since 05/02/2024 
/*/

User Function Cl02()

    Local aArea         := GetArea()
    Local nCorFundo     := RGB(238, 238, 238)
    Local nJanAltura    := 260
    Local nJanLargur    := 280
    Local cJanTitulo    := 'Calculo da Area do Quadrado'
    Local lDimPixels    := .T. 
    Local lCentraliz    := .T. 
    Local nObjLinha     := 0
    Local nObjColun     := 0
    Local nObjLargu     := 0
    Local nObjAltur     := 0
    Private cFontNome   := 'Tahoma'
    Private oFontPadrao := TFont():New(cFontNome, , -12)
    Private oDialogPvt 
    //objeto0 
    Private oSayObj0 
    Private cSayObj0    := 'Digite o valor do lado do quadrado'  
    //GetValue 
    Private oGetGetValue 
    Private nLado    := Space(10) //Se o get for data para inicilizar use dToS(''), se for numerico inicie com 0  
    //objeto2 
    Private oBtnObj2 
    Private cBtnObj2    := 'Calcular'  
    Private bBtnObj2    := {|| oDialogPvt:End(), AreaQuad(Val(nLado))}  
    
    //Cria a dialog
    oDialogPvt := TDialog():New(0, 0, nJanAltura, nJanLargur, cJanTitulo, , , , , , nCorFundo, , , lDimPixels)
    
        //objeto0 - usando a classe TSay
        nObjLinha := 17
        nObjColun := 35
        nObjLargu := 80
        nObjAltur := 20
        oSayObj0  := TSay():New(nObjLinha, nObjColun, {|| cSayObj0}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //GetValue - usando a classe TGet
        nObjLinha := 50
        nObjColun := 40
        nObjLargu := 60
        nObjAltur := 15
        oGetGetValue  := TGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , nLado := u, nLado)}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)

        //objeto2 - usando a classe TButton
        nObjLinha := 80
        nObjColun := 40
        nObjLargu := 60
        nObjAltur := 15
        oBtnObj2  := TButton():New(nObjLinha, nObjColun, cBtnObj2, oDialogPvt, bBtnObj2, nObjLargu, nObjAltur, , oFontPadrao, , lDimPixels)

    
    oDialogPvt:Activate(, , , lCentraliz, , ,)
    
    RestArea(aArea)
Return

Static function AreaQuad(p_nLado)

    local nArea := 0
    
    nArea := (p_nLado ^2)

    FwAlertInfo("A área do quadrado é: " + Alltrim(Str(nArea)))

Return
