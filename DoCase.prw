#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 User Function DoCase()
    
    Local cData := "14/12/2017"

        Do Case
            Case cData == "20/12/2017"
            Alert("N�o � Natal " + cData)

            Case cData == "25/12/2017"
            Alert("� Natal " + cData)

            OtherWise
            MsgAlert("N�o sei qual dia � hoje!")
        EndCase

 return 
