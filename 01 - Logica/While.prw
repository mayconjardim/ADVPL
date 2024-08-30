#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function WhileLoop()

    Local nNum1 := 0
    Local nNum2 := 10
    Local cNome := "Maycon"

    While nNum1 < nNum2
        nNum1++
    EndDo
    
    Alert(nNum1 + nNum2)

    nNum1 := 1
    
    While nNum1 != 10 .AND. cNome != "Protheus"
        nNum1++

        If nNum1 ==  5
        cNome := "Protheus"
        
        EndIf

    EndDo
   
    Alert("Numero " + cValToChar(nNum1))
    Alert(cNome)

Return
