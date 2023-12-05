#INCLUDE "Protheus.ch"

/*/{Protheus.doc} SimulaLancamentoDados
Programa que simula o lançamento de dados 100 vezes e mostra a frequência de cada valor.
@type function
@author Terminal de Informação
@since 02/12/2023
@version 1.0
    @example
    u_SimulaLancamentoDados()
/*/

// Função para simular lançamento de dados
User Function SimulaLancamentoDados(nLancamentos)
    Local aResultados := Replicate(0, 6)

    // Função para gerar número aleatório entre nInicio e nFim
    Local Function GerarNumeroAleatorio(nInicio, nFim)
        Return nInicio + Int(Random() * (nFim - nInicio + 1))
    Return

    // Simular lançamento de dados
    For nCont := 1 To nLancamentos
        Local nResultado := GerarNumeroAleatorio(1, 6)
        aResultados[nResultado]++
    Next

    // Mostrar os resultados
    MsgInfo("Resultados dos lançamentos de dados:")
    For nCont := 1 To Len(aResultados)
        MsgInfo("Face " + Str(nCont) + ": " + Str(aResultados[nCont]) + " vezes")
    Next
Return

// Exemplo de uso da função
SimulaLancamentoDados(100)
