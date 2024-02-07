#include "totvs.ch"

Class Macaco

    data cNome

    method New(cNome) CONSTRUCTOR
    method VerBucho(cBucho)
    method Digerir(cBucho)

EndClass

Method New(cNome) Class Macaco
    ::cNome := cNome
Return Self
