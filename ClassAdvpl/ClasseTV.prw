#include "totvs.ch"

Class TV

    data nCanal
    data nVolume

    method New() CONSTRUCTOR
    method AlterarCanal(nNovoCanal)
    method AumentarVolume()
    method DiminuirVolume()
    method MostrarStatus()

EndClass

Method New() Class TV
    ::nCanal := 1  //? Canal inicial
    ::nVolume := 50  //? Volume inicial
Return Self

Method AlterarCanal(nNovoCanal) Class TV
    If nNovoCanal >= 1 .And. nNovoCanal <= 100
        ::nCanal := nNovoCanal
    Else
        FwAlertInfo("Canal inválido. O canal deve estar entre 1 e 100.", "Erro")
    EndIf
Return

Method AumentarVolume() Class TV

    If ::nVolume < 100
        ::nVolume := ::nVolume + 1
    Else
        FwAlertInfo("Volume máximo atingido.", "Atenção")
    EndIf

Return

Method DiminuirVolume() Class TV

    If ::nVolume > 0
        ::nVolume := ::nVolume - 1
    Else
        FwAlertInfo("Volume mínimo atingido.", "Atenção")
    EndIf

Return

Method MostrarStatus() Class TV

    FwAlertInfo("Canal: " + Str(::nCanal) + ", Volume: " + Str(::nVolume), "Status da TV")
    
Return


