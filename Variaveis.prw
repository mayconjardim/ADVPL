#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/**

TIPO DE DADOS

NUMERICO: 3 / 21.000 / 0.4 / 200000
LÓGICO: .T. / .F.
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {"VALOR1","VALOR2","VALOR3"}  -> VETORES E MATRIZES
BLOCO DE CÓDIGO: {||VALOR := 1, MsgAlert{"Valor é igual a "+cValToChar(VALOR)}}

**/

User Function Variaveis()
    Local nNum := 66
    Local lLogic := .T.
    Local cCarac := "String"
    Local dData := DATE()
    Local aArray := {"Joao", "Maycon", "Teste"}
    Local bBloco := {|| nValor := 2, MsgAlert("O número é: " + cValToChar(nValor), "Alerta") }

    Alert(nNum)
    Alert(lLogic)
    Alert(cValToChar(cCarac))
    Alert(dData)
    Alert(aArray)
    Alert(bBloco[2])
    Eval(bBloco)

return
