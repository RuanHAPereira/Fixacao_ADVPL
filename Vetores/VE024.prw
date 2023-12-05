#INCLUDE "Protheus.ch"

/*/{Protheus.doc} SimulaLancamentoDados
Programa que simula o lan�amento de dados 100 vezes e mostra a frequ�ncia de cada valor.
@type function
@author Terminal de Informa��o
@since 02/12/2023
@version 1.0
    @example
    u_SimulaLancamentoDados()
/*/

// Fun��o para simular lan�amento de dados
User Function SimulaLancamentoDados(nLancamentos)
    Local aResultados := Replicate(0, 6)

    // Fun��o para gerar n�mero aleat�rio entre nInicio e nFim
    Local Function GerarNumeroAleatorio(nInicio, nFim)
        Return nInicio + Int(Random() * (nFim - nInicio + 1))
    Return

    // Simular lan�amento de dados
    For nCont := 1 To nLancamentos
        Local nResultado := GerarNumeroAleatorio(1, 6)
        aResultados[nResultado]++
    Next

    // Mostrar os resultados
    MsgInfo("Resultados dos lan�amentos de dados:")
    For nCont := 1 To Len(aResultados)
        MsgInfo("Face " + Str(nCont) + ": " + Str(aResultados[nCont]) + " vezes")
    Next
Return

// Exemplo de uso da fun��o
SimulaLancamentoDados(100)
