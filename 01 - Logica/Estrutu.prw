#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Estrutu()

    Local nNum1 := 22
    Local nNum2 := 100

    if (nNum1 = nNum2)
        MsgInfo("A Variavel nNum1 é igual a nNum2","")
    ElseIf (nNum1 > nNum2)
        MsgInfo("A Variavel nNum1 é maior que nNum2","")
    ElseIf (nNum1 != nNum2)
        Alert("A Variavel nNum1 é diferente de nNum2")
    Endif

Return
