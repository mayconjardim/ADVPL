#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function ForRepeticao()

  Local nCount
  Local nNum := 0

  For nCount := 0 To 10 Step 2

    nNum += nCount;

  Next

    Alert("Valor: " + cValToChar(nNum))

Return
